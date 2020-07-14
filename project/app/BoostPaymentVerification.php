<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BoostPaymentVerification extends Model
{
    protected $fillable = ["boost_id","payment_verification_id","value"];
    public function paymentVerification(){
        return $this->belongsTo(PaymentVerification::class);
    }
}
