<?php

namespace App\Http\Controllers;

use App\Classes\GeniusMailer;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Generalsetting;
use App\Models\User;

class TicketController extends Controller
{
    public function sendVendorMail(Request $request){
        $gs = Generalsetting::findOrFail(1);
        $user=User::find($request->vendor);
        $to = $user->email;
        $subject = 'You have a message from '.$request->name;
        $msg = $request->message." <br>
            Sender info:
            <br>
            Name:$request->name,
            <br>
            Email:$request->email
        ";
        //Sending Email To Customer
        if($gs->is_smtp == 1)
        {
        $data = [
            'to' => $to,
            'subject' => $subject,
            'body' => $msg,
        ];

        $mailer = new GeniusMailer();
        $mailer->sendCustomMail($data);
        }
        else
        {
        $headers = "From: ".$gs->from_name."<".$gs->from_email.">";
        mail($to,$subject,$msg,$headers);
        }
        return "success";
    }
}
