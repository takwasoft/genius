<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class District extends Model
{
    protected $fillable = [
        'id','name','division_id','dis_serial','serial'
        ];
        public function Division(){
            return $this->belongsTo(Division::class);
        }
        public function SubDistricts(){
            return $this->hasMany(SubDistrict::class)->orderBy('serial');
        }
        public function products(){
            return $this->hasMany(Product::class);
        } 
}
