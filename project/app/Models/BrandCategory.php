<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BrandCategory extends Model
{
    protected $fillable = [
        'id','name','show_in_home'
        ];
     
        public function Brands(){
            return $this->hasMany(Brand::class);
        }
}
