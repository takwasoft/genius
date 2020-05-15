<?php

namespace App\Models;

use App\OrderAdditional;
use App\OrderPaymentVerification;
use App\PaymentVerification;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
	protected $fillable = ['user_id', 'cart', 'method','shipping', 'pickup_location', 'totalQty', 'pay_amount', 'txnid', 'charge_id', 'order_number', 'payment_status', 'customer_email', 'customer_name', 'customer_phone', 'customer_address', 'customer_city', 'customer_zip','shipping_name', 'shipping_email', 'shipping_phone', 'shipping_address', 'shipping_city', 'shipping_zip', 'order_note', 'status'];
    public function paymentGateway()
    {
        return $this->belongsTo('App\Models\PaymentGateway','method');
    }
    public function additionalFields(){
        return $this->hasMany(OrderAdditional::class);
    }
    public function paymentVerifications(){
        return $this->hasMany(OrderPaymentVerification::class);
    }
    public function vendororders()
    {
        return $this->hasMany('App\Models\VendorOrder');
    }

    public function tracks()
    {
        return $this->hasMany('App\Models\OrderTrack','order_id');
    }

}
