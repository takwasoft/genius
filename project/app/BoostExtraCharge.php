<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BoostExtraCharge extends Model
{
    protected $fillable = ["boost_id","extra_charge_rule_id","charge"];
    public function extraChargeRule(){
        return $this->belongsTo(ExtraChargeRule::class);
    }
}
