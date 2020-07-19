<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrderTrack extends Model
{
    //

    protected $fillable = ['order_id', 'title', 'text', 'admin_id'];

    public function order()
    {
        return $this->belongsTo('App\Models\Order', 'order_id');
    }
    public function admin()
    {
        return $this->belongsTo('App\Models\Admin');
    }
}
