<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class District extends Model
{
    protected $fillable = [
        'id','name','division_id'
        ];
        public function Division(){
            return $this->belongsTo(Division::class);
        }
        public function SubDistricts(){
            return $this->hasMany(SubDistrict::class);
        }
        public function products(){
            return $this->hasMany(Product::class);
        } 
}
