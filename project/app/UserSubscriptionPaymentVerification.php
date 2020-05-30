<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserSubscriptionPaymentVerification extends Model
{
    protected $fillable = ["user_subscription_id","payment_verification_id","value"];
    public function paymentVerification(){
        return $this->belongsTo(PaymentVerification::class);
    }
}
