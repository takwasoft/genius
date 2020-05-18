<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderExtraCharge extends Model
{
    protected $fillable = ["order_id","extra_charge_rule_id","charge"];
    public function extraChargeRule(){
        return $this->belongsTo(ExtraChargeRule::class);
    }
}
