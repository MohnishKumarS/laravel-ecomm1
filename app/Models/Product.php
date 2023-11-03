<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $table = 'products';
    protected $fillable = ['category_id','name','slug','desc','original_price','selling_price','image','quantity'
    ,'size_list','couple_men_size','couple_women_size','type','status','trending','freq_bought','offer_menu','offer_msg'];

    public function category(){
        return $this->belongsTo(Category::class,'category_id','id');
    }
}
