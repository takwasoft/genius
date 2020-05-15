<?php

namespace App\Models;

use App\AdditionalField;
use App\WithdrawAdditional;
use Illuminate\Database\Eloquent\Model;

class Withdraw extends Model
{
    protected $fillable = ['user_id', 'method', 'acc_email', 'iban', 'country', 'acc_name', 'address', 'swift', 'reference', 'amount', 'fee', 'created_at', 'updated_at', 'status'];

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
    public function paymentGateway()
    {
        return $this->belongsTo('App\Models\PaymentGateway','method');
    }
    public function additionalFields(){
        return $this->hasMany(WithdrawAdditional::class);
    }
} 
