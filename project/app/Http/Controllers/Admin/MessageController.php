<?php

namespace App\Http\Controllers\Admin;

use App\Classes\GeniusMailer;
use Datatables;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Input;
use Validator;
use App\Models\AdminUserConversation;
use App\Models\AdminUserMessage;
use App\Models\User;
use App\Models\Conversation;
use App\Models\UserNotification;
use App\Models\Generalsetting;
use App\Models\Ticket;
use Auth;

class MessageController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function closeTicket(Ticket $ticket){
        $ticket->status=1;
        $ticket->save();
        return redirect()->back();
    }
    //*** JSON Request
    public function datatables($type) 
    {
         $datas = AdminUserConversation::where('type','=',$type)->with('ticket','ticket.ticketCategory')->latest()->get();
         //--- Integrating This Collection Into Datatables
         return Datatables::of($datas)
                            ->editColumn('created_at', function(AdminUserConversation $data) {
                                $date = $data->created_at->diffForHumans();
                                return  $date;
                            })
                            ->editColumn('message', function(AdminUserConversation $data) {
                                return  $data->messages->last()->message;
                            })
                            ->addColumn('status', function(AdminUserConversation $data) {
                                return $data->ticket->status==0?'<span class="badge badge-success">Open</span>':'<span class="badge badge-danger">Closed</span>';
                                
                            })
                            ->addColumn('ticket_id', function(AdminUserConversation $data) {
                                
                                return  "#00".$data->ticket->id;
                            })
                            ->addColumn('name', function(AdminUserConversation $data) {
                                $name = $data->user->name;
                                return  $name;
                            })
                            ->addColumn('action', function(AdminUserConversation $data) {
                                $un=$data->messages->where('admin_seen','=',0)->count();
                                return $un>0?'<div class="action-list"><a href="' . route('admin-message-show',$data->id) . '"> <i class="fas fa-eye"></i> Details <span class="badge badge-danger">'.$un.'</span></a>
                                <a href="' . route('close-ticket',$data->ticket->id) . '">  Close</a>
                                <a href="javascript:;" data-href="' . route('admin-message-delete',$data->id) . '" data-toggle="modal" data-target="#confirm-delete" class="delete"><i class="fas fa-trash-alt"></i></a></div>':'<div class="action-list"><a href="' . route('admin-message-show',$data->id) . '"> <i class="fas fa-eye"></i> Details</a>
                                <a href="' . route('close-ticket',$data->ticket->id) . '">  Close</a>
                                <a href="javascript:;" data-href="' . route('admin-message-delete',$data->id) . '" data-toggle="modal" data-target="#confirm-delete" class="delete"><i class="fas fa-trash-alt"></i></a></div>';
                            }) 
                            ->rawColumns(['action','status'])
                            ->toJson(); //--- Returning Json Data To Client Side
    }

    //*** GET Request
    public function index()
    {

        return view('admin.message.index');             
    }
    public function userMessage(){ 
        $convs = Conversation::orderBy('id','desc')->get();
        return view('admin.message.user',compact('convs'));          

    }
    public function userMessageDatatable(){ 
        $datas = Conversation::orderBy('id','desc')->with('recieved')->with('sent')->get();
        //--- Integrating This Collection Into Datatables
        return Datatables::of($datas)
                           ->editColumn('time', function(Conversation $data) {
                               $date = $data->messages->last()->created_at->diffForHumans();
                               return  $date;
                           })
                           ->editColumn('last', function(Conversation $data) {
                               return  $data->messages->last()->message;
                           })

                           ->addColumn('action', function(Conversation $data) {
                            $un=$data->messages->where('admin_seen','=',0)->count();
                            return $un==0?'<div class="action-list"><a href="' . route('admin-message-single',$data->id) . '"> <i class="fas fa-eye"></i> View</a>
                            </div>':'<div class="action-list"><a href="' . route('admin-message-single',$data->id) . '"> <i class="fas fa-eye"></i> View</a><span class="badge badge-danger">'.$un.'</span>
                            </div>';
                               
                           }) 
                           ->rawColumns(['action'])
                           ->toJson();   
                        //    <a href="javascript:;" data-href="' . route('user-message-delete',$data->id) . '" data-toggle="modal" data-target="#confirm-delete" class="delete"><i class="fas fa-trash-alt"></i></a>      

    }
    public function userMessageSingle($id){
        $conv = Conversation::findOrfail($id);
        foreach($conv->messages as $message){
            $message->admin_seen=1;
            $message->save();
        }
        $user=User::find($conv->sent_user);
    
            return view('admin.message.single',compact('user','conv'));  
    }
    //*** GET Request
    public function disputes()
    {
        return view('admin.message.dispute');            
    }

    //*** GET Request
    public function message($id)
    {

        $conv = AdminUserConversation::findOrfail($id);

        foreach($conv->messages as $message){
            $message->admin_seen=1;
            $message->save();
        }
        return view('admin.message.create',compact('conv'));                  
    }   

    //*** GET Request
    public function messageshow($id)
    {
        $conv = AdminUserConversation::findOrfail($id);
        return view('load.message',compact('conv'));                 
    }   

    //*** GET Request
    public function messagedelete($id)
    {
        $conv = AdminUserConversation::findOrfail($id);
        if($conv->messages->count() > 0)
         {
           foreach ($conv->messages as $key) {
            $key->delete();
            }
         }
          $conv->delete();
        //--- Redirect Section     
        $msg = 'Data Deleted Successfully.';
        return response()->json($msg);      
        //--- Redirect Section Ends               
    }

    //*** POST Request
    public function postmessage(Request $request)
    {
        $conv=AdminUserConversation::find($request->conversation_id);
        $msg = new AdminUserMessage();
        if($file=$request->attachment){
            $name = time().$file->getClientOriginalName();
            $file->move('assets/images/ticket',$name);           
            $msg->attachment = $name;

        }
        $msg->admin_seen=1;
        $input = $request->all();  
        $msg->fill($input)->save();
        //--- Redirect Section     
        $msg = 'Message Sent!';
        return response()->json($msg);       
        //--- Redirect Section Ends    
    }

    //*** POST Request
    public function usercontact(Request $request)
    {
        $data = 1;
        $admin = Auth::guard('admin')->user();
        $user = User::where('email','=',$request->to)->first();
        if(empty($user))
        {
            $data = 0;
            return response()->json($data);   
        }
        $to = $request->to;
        $subject = $request->subject;
        $from = $admin->email;
        $msg = "Email: ".$from."<br>Message: ".$request->message;
        $gs = Generalsetting::findOrFail(1);
        if($gs->is_smtp == 1)
        {

        $datas = [
            'to' => $to,
            'subject' => $subject,
            'body' => $msg,
        ];
        $mailer = new GeniusMailer();
         $mailer->sendCustomMail($datas);
        }
        else
        {
        $headers = "From: ".$gs->from_name."<".$gs->from_email.">";
       // mail($to,$subject,$msg,$headers);            
        }

        if($request->type == 'Ticket'){
            $conv = AdminUserConversation::where('type','=','Ticket')->where('user_id','=',$user->id)->where('subject','=',$subject)->first(); 
        }
        else{
            $conv = AdminUserConversation::where('type','=','Dispute')->where('user_id','=',$user->id)->where('subject','=',$subject)->first(); 
        }
        if(isset($conv)){
            $msg = new AdminUserMessage();
            $msg->admin_seen=1;
            $msg->conversation_id = $conv->id;
            $msg->message = $request->message;
            $msg->save();
            return response()->json($data);   
        }
        else{
            $message = new AdminUserConversation();
            $message->subject = $subject;
            $message->user_id= $user->id;
            $message->message = $request->message;
            $message->order_number = $request->order;
            $message->type = $request->type;
            $message->save();
            $msg = new AdminUserMessage();
            $msg->admin_seen=1;
            $msg->conversation_id = $message->id;
            $msg->message = $request->message;
            $msg->save();
            return response()->json($data);   
        }
    }
}