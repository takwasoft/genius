<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AdminUserMessage extends Model
{
    protected $fillable = ['conversation_id','message','user_id','user_seen','admin_seen'];
	public function conversation()
	{
	    return $this->belongsTo('App\Models\AdminUserConversation','conversation_id');
	}
}
