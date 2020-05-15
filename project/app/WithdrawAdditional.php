<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WithdrawAdditional extends Model
{
    protected $fillable = ["withdraw_id","additional_field_id","value"];
    public function additionalField(){
        return $this->belongsTo(AdditionalField::class);
    }
}
