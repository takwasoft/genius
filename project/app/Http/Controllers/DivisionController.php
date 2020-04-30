<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Division as ModelsDivision;

use Datatables;
use Illuminate\Support\Facades\URL;

class DivisionController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function index()
    {
        if (request()->ajax()) {
            $data = ModelsDivision::latest()->get();
                return Datatables::of($data)
                        ->addIndexColumn()
                        ->addColumn('serial',function(ModelsDivision $data){
                            return '<a class="btn btn-sm btn-success" href="'.route('admin-dis-serial',$data->id).'">Serial</a>';
                        })
                        ->addColumn('action', function($row){

                               $btn = '<div class="btn-group"><a href="'.URL::to('/').'/admin/divisions/'.$row->id.'/edit" class="btn btn-sm btn-outline-primary">Edit</a>
                               <button onclick="deleteData('.$row->id.')" class="btn btn-sm btn-outline-danger">Delete</button></div>';

                                return $btn;
                        })
                        ->rawColumns(['action'])
                        ->escapeColumns([])
                        ->make(true);

                    }
                    $thead='<th>ID</th>
                    <th>Name</th>
                    <th>Serial</th>
                    ';
                    $columns="{data: 'id', name: 'id'},
                    {data: 'name', name: 'name'},
                    {data: 'serial', name: 'serial'}, ";
                    return view('table.data',["columns"=>$columns,"thead"=>$thead,"layout"=>'admin.master','ajax'=>'divisions','title'=>'Division List']);
    }
    public function create()
    {
        $action="admin/divisions";
        $name="Division";
        $fields=[
            [
                "name"=>"name",
                "label"=>"Name",
                "type"=>"text",
                "required"=>true 
            ],
            ];

        return view('admin.form.create',["action"=>$action,"name"=>$name,"fields"=>$fields]);
    }
    public function store(Request $request)
    {
        ModelsDivision::create(
            $request->all()
        );
        return redirect('/admin/divisions');
    }
  
    public function serial(){
        $divisions=ModelsDivision::orderBy('serial')->get();
        return view('admin.division.serial',compact('divisions'));
    }
    public function serialUpdate(Request $request){
        $lists= json_decode($request->lists);
        for($i=0;$i<count($lists);$i++){
            $division=ModelsDivision::find($lists[$i]);
            $division->serial=$i;
            $division->save();
        }
        return redirect()->route('admin-div-serial');
       // return view('admin.category.serial');
    }

   public function edit(ModelsDivision $division)
   {
       $action="admin/divisions/$division->id";
       $name="Division";
       $fields=[
           [
               "name"=>"name",
               "label"=>"Name",
               "type"=>"text",
               "required"=>true,
               "value"=>$division->name
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
   public function update(Request $request, ModelsDivision $division)
   {
       $division->update($request->all());
       return redirect('/admin/divisions');
   }

   /**
    * Remove the specified resource from storage.
    *
    * @param  \App\Division  $var
    * @return \Illuminate\Http\Response
    */
   public function destroy(ModelsDivision  $division)
   {
       
       $division->delete();
       return redirect('/admin/divisions');
   }
}
