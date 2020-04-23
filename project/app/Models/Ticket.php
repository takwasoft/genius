<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    protected $fillable = ['subject','ticket_category_id'];
    public function getCategoryAttribute()
    {
        return $this->ticketCategory->name;
    }
    public function TicketCategory(){
       return $this->belongsTo(TicketCategory::class);
    }
}
 