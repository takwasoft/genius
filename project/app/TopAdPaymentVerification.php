<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TopAdPaymentVerification extends Model
{
    protected $fillable = ["top_ad_id","payment_verification_id","value"];
    public function paymentVerification(){
        return $this->belongsTo(PaymentVerification::class);
    }
}
