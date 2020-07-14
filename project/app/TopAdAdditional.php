<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TopAdAdditional extends Model
{
    protected $fillable = ["top_ad_id","additional_field_id","value"];
    public function additionalField(){
        return $this->belongsTo(AdditionalField::class);
    }
}
