<?php

namespace App;

use App\Models\Product;
use Illuminate\Database\Eloquent\Model;

class TopAd extends Model
{
    protected $fillable = ['top_ad_category_id', 'product_id','status','paid'];

    public function topAdCategory(){
       return $this->belongsTo(TopAdCategory::class); 
    }
    public function product(){
      return $this->belongsTo(Product::class); 
   }
   public function topAdAdditionals(){
      return $this->hasMany(TopAdAdditional::class); 
   }
   public function topAdPaymentVerifications(){
    return $this->hasMany(TopAdPaymentVerification::class); 
    }
    public function topAdExtraCharges(){
    return $this->hasMany(TopAdExtraCharge::class); 
    }
   public function paymentGateway()
   {
       return $this->belongsTo('App\Models\PaymentGateway');
}
}