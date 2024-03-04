<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'products';
    protected $fillable = ['category_id','name','slug','desc','original_price','selling_price','image','quantity','colors'
    ,'size_list','couple_men_size','couple_women_size','type','status','trending','freq_bought','offer_menu','offer_msg'];


    // ----------- relationship ----
    
    public function category(){
        return $this->belongsTo(Category::class,'category_id','id');
    }
}
