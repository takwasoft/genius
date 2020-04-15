<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    protected $fillable = [
        'id','name','details','image','brand_category_id'
        ];
     
        public function Products(){
            return $this->hasMany(Product::class);
        }
        public function BrandCategory(){
            return $this->belongsTo(BrandCategory::class);
        }
}
