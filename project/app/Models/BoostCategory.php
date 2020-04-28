<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BoostCategory extends Model
{
    protected $fillable = [
        'id','price','status','duration'
        ];
}
