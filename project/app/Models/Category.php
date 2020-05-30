<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = ['name','slug','photo','is_featured','image'];
    public $timestamps = false;

    public function subs()
    {
    	return $this->hasMany('App\Models\Subcategory')->where('status','=',1);
    }

    public function boostProducts()
    {
        return $this->hasMany('App\Models\Product')->where('boost','=','1')->where('boost_expired','>',\Carbon\Carbon::now())->orderBy('id','desc');
    }
    public function topAdProducts()
    {
        return $this->hasMany('App\Models\Product')->where('top_ad','=','1')->where('top_ad_expired','>',\Carbon\Carbon::now())->orderBy('id','desc');
    }
    public function products()
    {
        return $this->hasMany('App\Models\Product')->orderBy('boost','desc')->orderBy('id','desc');
    }
 
    public function setSlugAttribute($value)
    {
        $this->attributes['slug'] = str_replace(' ', '-', $value);
    }

    public function attributes() {
        return $this->morphMany('App\Models\Attribute', 'attributable');
    }
}
