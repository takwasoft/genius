<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TopAdExtraCharge extends Model
{
    protected $fillable = ["top_ad_id","extra_charge_rule_id","charge"];
    public function extraChargeRule(){
        return $this->belongsTo(ExtraChargeRule::class);
    }
}
