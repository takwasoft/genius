<?php

namespace App\Models;

use App\UserSubscriptionPaymentVerification;
use Illuminate\Database\Eloquent\Model;

class UserSubscription extends Model
{
   protected $fillable = ['user_id', 'subscription_id', 'title', 'currency', 'currency_code', 'price', 'days', 'allowed_products', 'details', 'method', 'txnid', 'charge_id', 'created_at', 'updated_at', 'status'];

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
    public function subscription()
    {
        return $this->belongsTo('App\Models\Subscription');
    }
    public function userSubscriptionPaymentVerifications(){
        return $this->hasMany(UserSubscriptionPaymentVerification::class); 
        }
}
