<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Boost extends Model
{
    protected $fillable = ['boost_category_id', 'product_id','status','paid'];

    public function boostCategory(){
       return $this->belongsTo(BoostCategory::class); 
    }
    public function product(){
        return $this->belongsTo(Product::class); 
     }
}
