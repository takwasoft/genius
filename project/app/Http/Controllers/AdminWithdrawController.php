<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\AdminWithdraw;
use App\Models\Division as ModelsDivision;
use App\Models\Transaction;
use Datatables;
use Illuminate\Support\Facades\URL;

class AdminWithdrawController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function index()
    {
        if (request()->ajax()) {
            $data = AdminWithdraw::latest()->get();
                return Datatables::of($data)
                        ->addIndexColumn()

                        ->addColumn('action', function($row){

                               $btn = '<div class="btn-group"><a href="'.URL::to('/').'/admin/adminwithdraws/'.$row->id.'/edit" class="btn btn-sm btn-outline-primary">Edit</a>
                               <button onclick="deleteData('.$row->id.')" class="btn btn-sm btn-outline-danger">Delete</button></div>';

                                return $btn;
                        })
                        ->rawColumns(['action'])
                        ->escapeColumns([])
                        ->make(true);

                    }
                    $thead='<th>ID</th>
                    <th>Amount</th>
                    <th>Note</th>
                    ';
                    $columns="{data: 'id', name: 'id'},
                    {data: 'amount', name: 'amount'},
                    {data: 'note', name: 'note'}, ";
                    return view('table.data',["columns"=>$columns,"thead"=>$thead,"layout"=>'admin.master','ajax'=>'adminwithdraws','title'=>'Admin Withdraws']);
    }
    public function create()
    {
        $action="admin/adminwithdraws";
        $name="Admin Withdraw";
        $fields=[
            [
                "name"=>"amount",
                "label"=>"Amount",
                "type"=>"text",
                "required"=>true 
            ],
            [
                "name"=>"note",
                "label"=>"Note",
                "type"=>"textarea",
                "required"=>true 
            ],
            ];

        return view('admin.form.create',["action"=>$action,"name"=>$name,"fields"=>$fields]);
    }
    public function store(Request $request)
    {
       $w= AdminWithdraw::create(
            $request->all()
        );
        Transaction::create([
            "amount"=>$request->amount,
            "withdraw_id"=>$w->id,
            "type"=>"Admin Withdraw",
            "collected"=>0
        ]);
        return redirect('/admin/adminwithdraws');
    }
  
 
   public function edit(AdminWithdraw $adminwithdraw)
   {
       $action="admin/adminwithdraws/$adminwithdraw->id";
       $name="Division";
       $fields=[
           [
               "name"=>"amount",
               "label"=>"Amount",
               "type"=>"text",
               "required"=>true,
               "value"=>$adminwithdraw->amount
           ],
           [
            "name"=>"note",
            "label"=>"Note",
            "type"=>"textarea",
            "required"=>true,
            "value"=>$adminwithdraw->note
        ],

           ];

       return view('admin.form.edit',["action"=>$action,"name"=>$name,"fields"=>$fields]);
   }

   /**
    * Update the specified resource in storage.
    *
    * @param  \Illuminate\Http\Request  $request
    * @param  \App\Division  $var
    * @return \Illuminate\Http\Response
    */
   public function update(Request $request, AdminWithdraw $adminwithdraw)
   {
       $adminwithdraw->update($request->all());
       $t=Transaction::where('withdraw_id','=',$adminwithdraw->id)->first();
       $t->amount=$adminwithdraw->amount;
       $t->update();
       return redirect('/admin/adminwithdraws');
   }

   /**
    * Remove the specified resource from storage.
    *
    * @param  \App\Division  $var
    * @return \Illuminate\Http\Response
    */
   public function destroy(AdminWithdraw  $adminwithdraw)
   {
    $t=Transaction::where('withdraw_id','=',$adminwithdraw->id)->first();
    $t->delete();
       $adminwithdraw->delete();
       return redirect('/admin/adminwithdraws');
   }
}
