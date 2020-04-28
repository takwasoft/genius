<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Division extends Model
{
    protected $fillable = [
        'id','name'
        ];
                     
        public function Districts(){
            return $this->hasMany(District::class);
        }
        public function subDistricts()
        {
            $subdistricts = [];
            foreach ($this->districts as $district) {
                $subdistricts[] = $district->subdistricts;
            }
            return $subdistricts;
        }
        public function products(){
            return $this->hasMany(Product::class);
        } 
}
