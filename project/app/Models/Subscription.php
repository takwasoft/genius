<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Subscription extends Model
{
    protected $fillable = ['contact_hide','max_price','product_duration','title','currency','currency_code','price','days','allowed_products','details'];
    public $timestamps = false;

    public function categories() 
    {
        return $this->belongsToMany('App\Models\Category','subscription_categories');
    }
}