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
}
