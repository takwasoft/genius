<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Subcategory extends Model
{
    protected $fillable = ['category_id','name','slug'];
    public $timestamps = false;

    public function childs()
    {
    	return $this->hasMany('App\Models\Childcategory')->where('status','=',1);
    }

    public function category()
    {
    	return $this->belongsTo('App\Models\Category');
    }

    public function products()
    {
        return $this->hasMany('App\Models\Product');
    }
    public function boostProducts()
    {
        return $this->hasMany('App\Models\Product')->where('boost','=','1')->where('boost_expired','>',\Carbon\Carbon::now())->orderBy('id','desc');
    }
    public function topAdProducts()
    {
        return $this->hasMany('App\Models\Product')->where('top_ad','=','1')->where('top_ad_expired','>',\Carbon\Carbon::now())->orderBy('id','desc');
    }
    public function setSlugAttribute($value)
    {
        $this->attributes['slug'] = str_replace(' ', '-', $value);
    }

    public function attributes() {
        return $this->morphMany('App\Models\Attribute', 'attributable');
    }

}
