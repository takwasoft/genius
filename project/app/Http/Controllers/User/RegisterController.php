<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Generalsetting;
use App\Models\User;
use App\Classes\GeniusMailer;
use App\Models\Notification;
use Auth;
use Illuminate\Support\Facades\Input;
use Validator;

class RegisterController extends Controller
{

	public function emailVerify(){
		$gs = Generalsetting::findOrFail(1);
		$user=auth()->user();
		$to = $user->email;
		$token=$user->verification_link;
		$subject = 'Verify your email address.';
		$msg = "Dear Customer,<br> We noticed that you need to verify your email address. <a href=".url('user/register/verify/'.$token).">Simply click here to verify. </a>";
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
		return redirect()->route('user-dashboard')->with('success','Email Has Been Sent');
	}
    public function register(Request $request)
    {

    	$gs = Generalsetting::findOrFail(1);

    	if($gs->is_capcha == 1)
    	{
	        $value = session('captcha_string');
	        if ($request->codes != $value){
	            return response()->json(array('errors' => [ 0 => 'Please enter Correct Capcha Code.' ]));    
	        }    		
    	}

		if(!$request->email){
			$request["email"]=$request->phone;
		}
        //--- Validation Section

        $rules = [
		        'phone'   => 'required|unique:users',
		        'password' => 'required|confirmed'
                ];
		$validator = Validator::make(Input::all(), $rules);
		if ($validator->fails()) {
			return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
		  }
        if(!$request->code){
			$rand=rand(1001,9999);
			session(['rand'=>$rand]);
			$url = "http://66.45.237.70/api.php";
		$number=$request->phone;
		$text = "Your Sellbazar Verification Code is $rand ";
		
		$data= array(
		'username'=>"01790581234",
		'password'=>"01790581234",
		'number'=>"$number",
		'message'=>"$text"
		);
		
		$ch = curl_init(); // Initialize cURL
		curl_setopt($ch, CURLOPT_URL,$url);
		curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$smsresult = curl_exec($ch);
		return $smsresult;
		$p = explode("|",$smsresult);
		$sendstatus = $p[0];
		return response()->json(1);
		}

        if($request->code!=session('rand')){
			return response()->json('Invalid Code');
		}
        //--- Validation Section Ends

	        $user = new User;
	        $input = $request->all();        
	        $input['password'] = bcrypt($request['password']);
	        $token = md5(time().$request->name.$request->email);
	        $input['verification_link'] = $token;
	        $input['affilate_code'] = md5($request->name.$request->email);

	          if(!empty($request->vendor))
	          {
					//--- Validation Section
					$rules = [
						'shop_name' => 'unique:users',
						'shop_number'  => 'max:10'
							];
					$customs = [
						'shop_name.unique' => 'This Shop Name has already been taken.',
						'shop_number.max'  => 'Shop Number Must Be Less Then 10 Digit.'
					];

					$validator = Validator::make(Input::all(), $rules, $customs);
					if ($validator->fails()) {
					return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
					}
					$input['is_vendor'] = 1;

			  }
			  
			$user->fill($input)->save();
	        if($gs->is_verification_email == 1&&$request->email)
	        {
	        $to = $request->email;
	        $subject = 'Verify your email address.';
	        $msg = "Dear Customer,<br> We noticed that you need to verify your email address. <a href=".url('user/register/verify/'.$token).">Simply click here to verify. </a>";
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
          	return response()->json('We need to verify your email address. We have sent an email to '.$to.' to verify your email address. Please click link in that email to continue.');
	        }
	        else {

            $user->email_verified = 'No';
            $user->update();
	        $notification = new Notification;
	        $notification->user_id = $user->id;
	        $notification->save();
            Auth::guard('web')->login($user); 
          	return response()->json(2);
	        }

    }

    public function token($token)
    {
        $gs = Generalsetting::findOrFail(1);

         	
        $user = User::where('verification_link','=',$token)->first();
        if(isset($user))
        {
            $user->email_verified = 'Yes';
            $user->update();
	        $notification = new Notification;
	        $notification->user_id = $user->id;
	        $notification->save();
            Auth::guard('web')->login($user); 
            return redirect()->route('user-dashboard')->with('success','Email Verified Successfully');
        }
    		
    		
    }
}