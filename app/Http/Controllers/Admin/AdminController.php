<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use App\Models\User;
use App\Models\Order;
use App\Models\Slider;
use App\Models\Product;
use App\Models\Category;
use App\Models\Subscribe;
use App\Models\Useraddress;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Notifications\UserOrderNotification;
use Illuminate\Support\Facades\Notification;

class AdminController extends Controller
{
  // ----- Dashboard home page ----------

  public function index()
  {
    $product = Product::count();
    $category = Category::count();
    $user = User::count();
    $order = Order::count();
    $com_order = Order::where('status', '4')->count();
    $pen_order = Order::where('status', '!=', '4')->count();

    $todayDate = Carbon::now()->format('d-m-Y');
    $thisMonth = Carbon::now()->format('m');

    $todayOrder = Order::whereDate('created_at', $todayDate)->count();
    $thisMonthOrder = Order::whereMonth('created_at', $thisMonth)->count();

    // --graph --
    $data = Order::get()->groupBy(function ($data) {
      return Carbon::parse($data->created_at)->format('M');
    });
    $g_months = [];
    $g_monthCount = [];
    foreach ($data as $mon => $val) {
      $g_months[] = $mon;
      $g_monthCount[] = count($val);
    }
    $graph_month = array_slice($g_months, -5);
    $graph_monthCount = array_slice($g_monthCount, -5);
    // return $data;
    return view('admin.dashboard', \compact('product', 'category', 'user', 'order', 'com_order', 'pen_order', 'todayOrder', 'thisMonthOrder', 'thisMonth', 'graph_month', 'graph_monthCount'));
  }

  // ------------- users ------------------

  public function users(Request $req)
  {
    $user = user::when($req->email != null, function ($q) use ($req) {
      return $q->where('email', $req->email);
    })
      // $user = Order::when($req->order_item != null,function($q) use ($req) {
      //   return $q->where('user_id',Auth::id());
      // })
      ->where('role', 0)
      // ->whereNotNull('last_seen')
      // ->orderBy('last_seen', 'DESC')
      ->latest()
      ->paginate(15);

    // $notify = auth()->user()->notify(new UserOrderNotification($users));
    // Check if an order was created today
    // return   $todayOrders = Order::whereDate('created_at', Carbon::now())->get();
  //   if (Order::whereDate('created_at', Carbon::today())->exists()) {
  //     $todayOrders = Order::whereDate('created_at', Carbon::now())->get();
  //     Notification::send(auth()->user(), new UserOrderNotification($todayOrders));
  //   }
    
  //  $notify = auth()->user()->notifications;
    


    return view('admin.users.index', \compact('user'));
  }

  public function view_user($id)
  {
    $view = User::findOrFail($id);
    // $addr_check = Useraddress::where('user_id',$id)->exists();

    $addr = Useraddress::where('user_id', $id)->latest()->first();



    return view('admin.users.view', \compact('view', 'addr'));
  }

  public function user_role(Request $req, $id)
  {
    $role = (int) $req->role_s;
    // return var_dump($role);

    $user = User::find($id);
    $user->role = $role;
    $user->save();

    return redirect('users')->with('status', 'User role has been changed successfully');
  }


  // -------admin_profile ------------

  public function admin_view(Request $req)
  {
    $admin = User::when($req->email != null, function ($q) use ($req) {
      return $q->where('email', $req->email);
    })
      ->where('role', 1)
      ->get();

    return view('admin.users.admin-view', compact('admin'));
  }

  public function admin_profile($id)
  {
    $admin = User::where('id', $id)->where('role', 1)->first();
    if ($admin) {
      return view('admin.users.admin-profile', compact('admin'));
    } else {
      return redirect('admin-view')->with('status', 'Admin Profile not found .....');
    }
  }

  public function admin_profile_set(Request $req, $id)
  {

    $req->validate([
      'name' => 'required|min:4|max:30',
      'email' => 'required|email',
      'mobile' => 'required|numeric|digits:10',
    ]);
    // return $req->roles;
    $user = User::find($id);
    if ($user) {
      $user->name = $req->name;
      $user->email = $req->email;
      $user->mobile = $req->mobile;
      $user->role = $req->roles == 'admin' ? true : false;
      $user->update();
    } else {
      return redirect('admin-view')->with('status', 'Admin Profile not found .....');
    }

    return redirect('admin-view')->with('status', 'Admin Profile has been updated successfully');
  }


  public function admin_profile_password(Request $req, $id)
  {
    $req->validate([
      'current_password' => ['required', 'string', 'min:8'],
      'password' => ['required', 'min:8', 'confirmed'],
    ]);
    $user = User::find($id);
    $cur_pass = Hash::check($req->current_password, $user->password);

    if ($cur_pass) {

      User::findOrFail($id)->update([
        'password' => Hash::make($req->password)
      ]);

      return redirect()->back()->with('status', 'Password Updated successfully');
    } else {
      return redirect()->back()->with('status', 'Your current password is incorrect');
    }
  }



  // --------- subscription -----

  public function subscribe()
  {
    $sub = Subscribe::paginate(10);
    return view('admin.users.subscription', ['sub' => $sub]);
  }


  // ------- coupons  ---

  public function coupons()
  {
    return 'coupons';
  }
}
