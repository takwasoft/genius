<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BoostAdditional extends Model
{
    protected $fillable = ["boost_id","additional_field_id","value"];
    public function additionalField(){
        return $this->belongsTo(AdditionalField::class);
    }
}
