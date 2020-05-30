<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use App\Models\Currency;
use App\Models\Generalsetting;
use App\Models\PaymentGateway;
use App\Models\User;
use App\Models\Withdraw;
use App\WithdrawAdditional;
use Illuminate\Support\Facades\Input;
use Validator;

class WithdrawController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:web');
    }
 
  	public function index()
    {
        $withdraws = Withdraw::where('user_id','=',Auth::guard('web')->user()->id)->where('type','=','user')->orderBy('id','desc')->get();
        $sign = Currency::where('is_default','=',1)->first();  
        $gateways=PaymentGateway::all();      
        $status="";      
        return view('user.withdraw.index',compact('withdraws','sign','gateways','status'));
    }
    public function filter(Request $request)
    {
        $from=null;
        $to=null;
        $method=null;
        $status=$request->status;
        if($request->start)
        {
            $from=$request->start;
        }
        if($request->end)
        {
            $to=$request->end;
        }
        if($request->method!="0")
        {
            $method=$request->method;
        }
        
        $withdraws = Withdraw::where('user_id','=',Auth::guard('web')->user()->id)->where('type','=','user') ->when($from, function ($query, $from) {
            return $query->where('created_at','>=', $from);
        })->when($method, function ($query, $method) {
            return $query->where('method','=', $method);
        })->when($to, function ($query, $to) {
            return $query->where('created_at','<=', $to);
        })->when($status, function ($query, $status) {
            return $query->where('status','=', $status);
        })->orderBy('id','desc')->get();
        $sign = Currency::where('is_default','=',1)->first();  
        $gateways=PaymentGateway::all();  
        return view('user.withdraw.index',compact('withdraws','sign','gateways','from','to','method','status')); 
    }
    public function affilate_code()
    {
        $user = Auth::guard('web')->user();
        return view('user.withdraw.affilate_code',compact('user'));
    }


    public function create()
    {

        $sign = Currency::where('is_default','=',1)->first();
        $gateways=PaymentGateway::all(); 
        return view('user.withdraw.withdraw' ,compact('sign','gateways'));
    }
 

    public function store(Request $request)
    {
 
        $from = User::findOrFail(Auth::guard('web')->user()->id);

        $withdrawcharge = Generalsetting::findOrFail(1);
        $charge = $withdrawcharge->withdraw_charge;

        if($request->amount > 0){

            $amount = $request->amount;

            if ($from->affilate_income >= $amount){
                $fee = 0;
                $finalamount = $amount - $fee;
                $finalamount = number_format((float)$finalamount,2,'.','');

                $from->affilate_income = $from->affilate_income - $amount-$amount*$charge/100;
                $from->update();

                $newwithdraw = new Withdraw();
                $newwithdraw['user_id'] = Auth::user()->id;
                $newwithdraw['method'] = $request->methods;
                $newwithdraw['acc_email'] = $request->acc_email;
                $newwithdraw['iban'] = $request->iban;
                $newwithdraw['country'] = $request->acc_country;
                $newwithdraw['acc_name'] = $request->acc_name;
                $newwithdraw['address'] = $request->address;
                $newwithdraw['swift'] = $request->swift;
                $newwithdraw['reference'] = $request->reference;
                $newwithdraw['amount'] = $finalamount;
                $newwithdraw['fee'] = $amount*$charge/100;
                $newwithdraw['type'] = 'user';
                $newwithdraw->save();
                if($request->additional){
                    for($i=0;$i<count(array_keys($request->additional));$i++){
                    WithdrawAdditional::create([
                        "withdraw_id"=>$newwithdraw->id,
                        "additional_field_id"=>array_keys($request->additional)[$i],
                        "value"=>$request->additional[array_keys($request->additional)[$i]]
                    ]);
                }
                }
                
                return response()->json('Withdraw Request Sent Successfully.'); 

            }else{
                 return response()->json(array('errors' => [ 0 => 'Insufficient Balance.' ])); 
            }
        }
            return response()->json(array('errors' => [ 0 => 'Please enter a valid amount.' ])); 

    }
}
