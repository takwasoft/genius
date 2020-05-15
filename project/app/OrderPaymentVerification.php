<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderPaymentVerification extends Model
{
    protected $fillable = ["order_id","payment_verification_id","value"];
    public function paymentVerification(){
        return $this->belongsTo(PaymentVerification::class);
    }
}
