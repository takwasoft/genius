<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    protected $fillable = ['attachment','conversation_id','message','sent_user','recieved_user'];
	public function conversation()
	{
	    return $this->belongsTo('App\Models\Conversation');
	}
	public function reciever(){
		return $this->belongsTo('App\Models\User','recieved_user');
	}
	public function sender(){
		return $this->belongsTo('App\Models\User','sent_user');
	}
}
