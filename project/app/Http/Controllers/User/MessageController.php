<?php

namespace App\Http\Controllers\User;

use App\Classes\GeniusMailer;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Ticket;
use Auth;
use App\Models\Conversation;
use App\Models\Message;
use App\Models\AdminUserConversation;
use App\Models\AdminUserMessage;
use App\Models\Generalsetting;
use App\Models\Notification;
use App\Models\TicketCategory;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Image;
class MessageController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

   public function messages()
    { 
        $user = Auth::guard('web')->user();
        $convs = Conversation::where('sent_user','=',$user->id)->orWhere('recieved_user','=',$user->id)->get();
        return view('user.message.index',compact('user','convs'));             
    }

    public function message($id)
    { 
            $messages=Message::where('conversation_id','=',$id)->where('recieved_user','=',auth()->user()->id)->get();
            foreach($messages as $message){
                $message->seen=1;
                $message->save();
            }
            $user = Auth::guard('web')->user();
            $conv = Conversation::findOrfail($id);
            return view('user.message.create',compact('user','conv'));                 
    }
 
    public function messagedelete($id)
    {
            $conv = Conversation::findOrfail($id);
            if($conv->messages->count() > 0)
            {
                foreach ($conv->messages as $key) {
                    $key->delete();
                }
            }
            $conv->delete();
            return redirect()->back()->with('success','Message Deleted Successfully');                 
    }

    public function msgload($id)
    {
            $conv = Conversation::findOrfail($id);
            return view('load.usermsg',compact('conv'));                 
    }  

    //Send email to user
    public function usercontact(Request $request)
    {
        $data = 1;
        $user = User::findOrFail($request->user_id);
        $vendor = User::where('email','=',$request->email)->first();
        if(empty($vendor))
        {
            $data = 0;
            return response()->json($data);   
        }

        $subject = $request->subject;
        $to = $vendor->email;
        $name = $request->name;
        $from = $request->email;
        $msg = "Name: ".$name."\nEmail: ".$from."\nMessage: ".$request->message;
        $gs = Generalsetting::findOrfail(1);
        if($gs->is_smtp == 1)
        {
        $data = [
            'to' => $vendor->email,
            'subject' => $request->subject,
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

        $conv = Conversation::where('sent_user','=',$user->id)->where('subject','=',$subject)->first();
        if(isset($conv)){
            $msg = new Message();
            $msg->conversation_id = $conv->id;
            $msg->message = $request->message;
            $msg->sent_user = $user->id;
            $msg->save();
            return response()->json($data);   
        }
        else{
            $message = new Conversation();
            $message->subject = $subject;
            $message->sent_user= $request->user_id;
            $message->recieved_user = $vendor->id;
            $message->message = $request->message;
            $message->save();

            $msg = new Message();
            $msg->conversation_id = $message->id;
            $msg->message = $request->message;
            $msg->sent_user = $request->user_id;;
            $msg->save();
            return response()->json($data);   
        }
    }

    public function postmessage(Request $request)
    {
        $msg = new Message();
        $input = $request->all();    
        $msg->fill($input)->save();
        //--- Redirect Section     
        $msg = 'Message Sent!';
        return response()->json($msg);      
        //--- Redirect Section Ends  
    }

    public function adminmessages()
    {
            $user = Auth::guard('web')->user();
            $convs = AdminUserConversation::where('type','=','Ticket')->where('user_id','=',$user->id)->latest()->get(); 
            $ticketCategories=TicketCategory::all();  
            return view('user.ticket.index',compact('convs','ticketCategories'));            
    }

    public function adminDiscordmessages()
    {
            $user = Auth::guard('web')->user();
            $convs = AdminUserConversation::where('type','=','Dispute')->where('user_id','=',$user->id)->get();
            return view('user.dispute.index',compact('convs'));            
    }

    public function messageload($id)
    {
            $conv = AdminUserConversation::findOrfail($id);
            return view('load.usermessage',compact('conv'));                 
    }   

    public function adminmessage($id)
    { 
            $conv = AdminUserConversation::findOrfail($id);
            foreach($conv->messages as $message){
                $message->user_seen=1;
                $message->save();
            } 
            return view('user.ticket.create',compact('conv'));                  
    }   
 
    public function adminmessagedelete($id)
    {
            $conv = AdminUserConversation::findOrfail($id);
            if($conv->messages->count() > 0)
            {
                foreach ($conv->messages as $key) {
                    $key->delete();
                }
            }
            $conv->delete();
            return redirect()->back()->with('success','Message Deleted Successfully');                 
    }

    public function adminpostmessage(Request $request)
    {
        
        $msg = new AdminUserMessage();
        if($file=$request->attachment){
            $name = time().$file->getClientOriginalName();
            $file->move('assets/images/ticket',$name);           
            $msg->attachment = $name;

        }
        $msg->user_seen=1;
        $input = $request->all();  
        $msg->fill($input)->save();
        $notification = new Notification;
        $notification->conversation_id = $msg->conversation->id;
        $notification->save();
        //--- Redirect Section     
        $msg = 'Message Sent!';
        return response()->json($msg);      
        //--- Redirect Section Ends  
    }

    public function adminusercontact(Request $request)
    {
        $data = 1;
        $user = Auth::guard('web')->user();        
        $gs = Generalsetting::findOrFail(1);
        $subject = $request->subject;
        $to = $gs->email;
        $from = $user->email;
        $msg = "Email: ".$from."\nMessage: ".$request->message;
        if($gs->is_smtp == 1)
        {
            $data = [
            'to' => $to,
            'subject' => $subject,
            'body' => $msg,
        ];

        $mailer = new GeniusMailer();
        //$mailer->sendCustomMail($data);
        }
        else
        {
            $headers = "From: ".$gs->from_name."<".$gs->from_email.">";
       // mail($to,$subject,$msg,$headers);
        }
        $ticketId=0;
        if($request->type == 'Ticket'){
            if($request->ticket_id){
                $ticketId=$request->ticket_id;
                $conv = AdminUserConversation::where('type','=','Ticket')->where('user_id','=',$user->id)->where('ticket_id','=',$$request->ticket_id)->first(); 
            }
            else{
                $ticket=Ticket::create([
                    'subject'=>$subject,
                    'ticket_category_id'=>$request->ticket_category_id
                ]);
                $ticketId=$ticket->id;
                $conv = AdminUserConversation::where('type','=','Ticket')->where('user_id','=',$user->id)->where('ticket_id','=',$ticket->id)->first(); 
            }
           
        }
        else{
            $conv = AdminUserConversation::where('type','=','Dispute')->where('user_id','=',$user->id)->where('subject','=',$subject)->first(); 
        }

        if(isset($conv)){
            $msg = new AdminUserMessage();
            $msg->user_seen=1;
            $msg->conversation_id = $conv->id;
            $msg->message = $request->message;
            $msg->user_id = $user->id;
            $msg->save();
            return response()->json($data);   
        }
        else{
            $message = new AdminUserConversation();
            $message->ticket_id = $ticketId;
            $message->user_id= $user->id;
            $message->message = $request->message;
            $message->order_number = $request->order;
            $message->type = $request->type;
            $message->save();
            $notification = new Notification;
            $notification->conversation_id = $message->id;
            $notification->save();
            $msg = new AdminUserMessage();
            $msg->user_seen=1;
            $msg->conversation_id = $message->id;
            $msg->message = $request->message;
            $msg->user_id = $user->id;
            $msg->save();
            return response()->json($data);   

        }
}
}
