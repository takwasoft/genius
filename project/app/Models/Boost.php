<?php

namespace App\Models;

use App\BoostAdditional;
use App\BoostExtraCharge;
use App\BoostPaymentVerification;
use Illuminate\Database\Eloquent\Model;

class Boost extends Model
{
    protected $fillable = ['payment_gateway_id','boost_category_id', 'product_id','status','paid'];

    public function boostCategory(){
       return $this->belongsTo(BoostCategory::class); 
    }
    public function product(){
        return $this->belongsTo(Product::class); 
     }
     public function boostAdditionals(){
        return $this->hasMany(BoostAdditional::class); 
     }
     public function boostPaymentVerifications(){
      return $this->hasMany(BoostPaymentVerification::class); 
      }
      public function boostExtraCharges(){
      return $this->hasMany(BoostExtraCharge::class); 
      }
     public function paymentGateway()
     {
         return $this->belongsTo('App\Models\PaymentGateway');
     }
}
