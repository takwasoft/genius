<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WithdrawPaymentVerification extends Model
{
    protected $fillable = ["withdraw_id","payment_verification_id","value"];
    public function paymentVerification(){
        return $this->belongsTo(PaymentVerification::class);
    }
}
