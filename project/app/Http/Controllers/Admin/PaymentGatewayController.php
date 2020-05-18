<?php

namespace App\Http\Controllers\Admin;

use App\AdditionalField;
use App\ExtraChargeRule;
use App\HiddenCharge;
use Datatables;
use App\Models\PaymentGateway;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\PaymentVerification;
use Illuminate\Support\Facades\Input;
use Validator;

class PaymentGatewayController extends Controller
{
   public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function rule($id){
        $payment=PaymentGateway::find($id);
        $additionalFields = AdditionalField::where('payment_gateway_id', '=', $id)->get();
        $extraCharges =ExtraChargeRule::where('payment_gateway_id', '=', $id)->get();
        $hiddenCharges = HiddenCharge::where('payment_gateway_id', '=', $id)->get();
        $paymentVerifications = PaymentVerification::where('payment_gateway_id', '=', $id)->get();
        return view('admin.payment.rules', ['fid' => $id, 'additionalFields' => $additionalFields, 'extraCharges' => $extraCharges,'hiddenCharges' => $hiddenCharges, 'paymentVerifications' => $paymentVerifications]);
    }
    public function addAdditional(Request $request){
        if ($request->required) {
            $r = 1;
        } else {
            $r = 0;
        }
        AdditionalField::create([
            'payment_gateway_id' => $request->fid,
            'title' => $request->title,
            'description' => $request->description,
            'required' => $r,

        ]);
        return redirect()->route('admin-payment-rule',$request->fid);
    }
    public function deleteAdditional($id){
        $p=AdditionalField::find($id);
        $pid=$p->payment_gateway_id;
        $p->delete();
        return redirect()->route('admin-payment-rule',$pid);
    }
    public function deleteVerification($id){
        $p=PaymentVerification::find($id);
        $pid=$p->payment_gateway_id;
        $p->delete();
        return redirect()->route('admin-payment-rule',$pid);
    }
    public function addVerification(Request $request){
        if ($request->required) {
            $r = 1;
        } else {
            $r = 0;
        }
        PaymentVerification::create([
            'payment_gateway_id' => $request->fid,
            'title' => $request->title,
            'description' => $request->description,
            'required' => $r,

        ]);
        return redirect()->route('admin-payment-rule',$request->fid);
    }
    public function addExtra(Request $request){
        if ($request->fixed) {
            $f = 1;
        } else {
            $f = 0;
        }
        if ($request->cs) {
            $cs = 1;
        } else {
            $cs = 0;
        }
        if ($request->cr) {
            $cr = 1;
        } else {
            $cr = 0;
        }
        ExtraChargeRule::create([
            'payment_gateway_id' => $request->fid,
            'title' => $request->title,
            'description' => $request->description,
            'fixed' => $f,
            'cs' => $cs,
            'cr' => $cr,
            'charge' => $request->charge,
            'from' => $request->from,
            'to' => $request->to,


        ]);
        return redirect()->route('admin-payment-rule',$request->fid);
    }
    public function deleteExtra($id){
        $p=ExtraChargeRule::find($id);
        $pid=$p->payment_gateway_id;
        $p->delete();
        return redirect()->route('admin-payment-rule',$pid);
    }
    //*** JSON Request
    public function datatables()
    {
         $datas = PaymentGateway::orderBy('id','desc')->get();
         //--- Integrating This Collection Into Datatables
         return Datatables::of($datas)
                            ->editColumn('details', function(PaymentGateway $data) {
                                $details = strlen(strip_tags($data->details)) > 250 ? substr(strip_tags($data->details),0,250).'...' : strip_tags($data->details);
                                return  $details;
                            })
                            ->addColumn('rule', function(PaymentGateway $data) {
                                return '<a href="' . route('admin-payment-rule',$data->id) . '" class="btn btn-success">Rule</a>';
                            })
                            ->addColumn('status', function(PaymentGateway $data) {
                                $class = $data->status == 1 ? 'drop-success' : 'drop-danger';
                                $s = $data->status == 1 ? 'selected' : '';
                                $ns = $data->status == 0 ? 'selected' : '';
                                return '<div class="action-list"><select class="process select droplinks '.$class.'"><option data-val="1" value="'. route('admin-payment-status',['id1' => $data->id, 'id2' => 1]).'" '.$s.'>Activated</option><<option data-val="0" value="'. route('admin-payment-status',['id1' => $data->id, 'id2' => 0]).'" '.$ns.'>Deactivated</option>/select></div>';
                            }) 
                            ->addColumn('action', function(PaymentGateway $data) {
                                return '<div class="action-list"><a data-href="' . route('admin-payment-edit',$data->id) . '" class="edit" data-toggle="modal" data-target="#modal1"> <i class="fas fa-edit"></i>Edit</a><a href="javascript:;" data-href="' . route('admin-payment-delete',$data->id) . '" data-toggle="modal" data-target="#confirm-delete" class="delete"><i class="fas fa-trash-alt"></i></a></div>';
                            }) 
                            ->rawColumns(['status','action','rule'])
                            ->toJson(); //--- Returning Json Data To Client Side
    }

    //*** GET Request
    public function index()
    {
        return view('admin.payment.index'); 
    }

    //*** GET Request
    public function create()
    {
        return view('admin.payment.create');
    }

    //*** POST Request
    public function store(Request $request)
    {
        //--- Validation Section
        $rules = ['title' => 'unique:payment_gateways'];

        $validator = Validator::make(Input::all(), $rules);
        if ($validator->fails()) {
          return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

        //--- Logic Section
        $data = new PaymentGateway();
        $input = $request->all();
        $data->fill($input)->save();
        //--- Logic Section Ends

        //--- Redirect Section        
        $msg = 'New Data Added Successfully.';
        return response()->json($msg);      
        //--- Redirect Section Ends   
    }

    //*** GET Request
    public function edit($id)
    {
        $data = PaymentGateway::findOrFail($id);
        return view('admin.payment.edit',compact('data'));
    }

    //*** POST Request
    public function update(Request $request, $id)
    {
        //--- Validation Section
        $rules = ['title' => 'unique:payment_gateways,title,'.$id];

        $validator = Validator::make(Input::all(), $rules);
        
        if ($validator->fails()) {
          return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }        
        //--- Validation Section Ends

        //--- Logic Section
        $data = PaymentGateway::findOrFail($id);
        $input = $request->all();  
        $data->update($input);
        //--- Logic Section Ends

        //--- Redirect Section     
        $msg = 'Data Updated Successfully.';
        return response()->json($msg);    
        //--- Redirect Section Ends           
    }

      //*** GET Request Status
      public function status($id1,$id2)
        {
            $data = PaymentGateway::findOrFail($id1);
            $data->status = $id2;
            $data->update();
        }


    //*** GET Request Delete
    public function destroy($id)
    {
        $data = PaymentGateway::findOrFail($id);
        $data->delete();
        //--- Redirect Section     
        $msg = 'Data Deleted Successfully.';
        return response()->json($msg);      
        //--- Redirect Section Ends   
    }
}
