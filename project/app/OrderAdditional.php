<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderAdditional extends Model
{
    protected $fillable = ["order_id","additional_field_id","value"];
    public function additionalField(){
        return $this->belongsTo(AdditionalField::class);
    }
}
