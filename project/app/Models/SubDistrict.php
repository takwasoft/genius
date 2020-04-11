<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SubDistrict extends Model
{
    protected $fillable = [
        'id','name','district_id'
        ];
        public function District(){
            return $this->belongsTo(District::class);
        }   
        public function Areas(){
            return $this->hasMany(Area::class);
        }  
}
