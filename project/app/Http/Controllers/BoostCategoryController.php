<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\BoostCategory;
use App\Models\Division as ModelsDivision;

use Datatables;
use Illuminate\Support\Facades\URL;

class BoostCategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function index()
    {
        if (request()->ajax()) {
            $data = BoostCategory::latest()->get();
                return Datatables::of($data)
                ->editColumn('status',function($row){
                    return $row->status==0?'<span class="badge badge-danger">Deactivated</span>':'<span class="badge badge-success">Activated</span>';
                })
                        ->addIndexColumn()
                        ->addColumn('action', function($row){

                               $btn = '<div class="btn-group"><a href="'.URL::to('/').'/admin/boostcategories/'.$row->id.'/edit" class="btn btn-sm btn-outline-primary">Edit</a>
                               <button onclick="deleteData('.$row->id.')" class="btn btn-sm btn-outline-danger">Delete</button></div>';

                                return $btn;
                        })
                        
                        ->rawColumns(['action'])
                        ->escapeColumns([])
                        ->make(true);

                    }
                    $thead='<th>ID</th>
                    <th>Price</th>
                    <th>Duration</th>
                    <th>Status</th>
                    ';
                    $columns="{data: 'id', name: 'id'},
                    {data: 'price', name: 'price'},
                    {data: 'duration', name: 'duration'},
                    {data: 'status', name: 'status'}, ";
                    return view('table.data',["columns"=>$columns,"thead"=>$thead,"layout"=>'admin.master','ajax'=>'boostcategories','title'=>'Boost Category List']);
    }
    public function create()
    {
        $action="admin/boostcategories";
        $name="Boost Category";
        $fields=[
            [
                "name"=>"price",
                "label"=>"Price",
                "type"=>"text",
                "required"=>true 
            ],
            [
                "name"=>"duration",
                "label"=>"Duration",
                "type"=>"number",
                "required"=>true 
            ],
            [
                "name"=>"status",
                "label"=>"Status",
                "type"=>"select",
                "required"=>true,
                "options"=>[
                    [
                        "id"=>1,
                        "name"=>'Activated'
                    ],
                    [
                        "id"=>0,
                        "name"=>'Deactivated'
                    ]
                ],
                "optionlabel"=>"name" 
            ],
            ];

        return view('admin.form.create',["action"=>$action,"name"=>$name,"fields"=>$fields]);
    }
    public function store(Request $request)
    {
        BoostCategory::create(
            $request->all()
        );
        return redirect('/admin/boostcategories');
    }
  
   public function edit(BoostCategory $boostcategory)
   {
       $action="admin/boostcategories/$boostcategory->id";
       $name="Division";
       $fields=[
        [
            "name"=>"price",
            "label"=>"Price",
            "type"=>"text",
            "required"=>true,
            'value'=> $boostcategory->price
        ],
        [
            "name"=>"duration",
            "label"=>"Duration",
            "type"=>"number",
            "required"=>true ,
            'value'=> $boostcategory->duration
        ],
        [
            "name"=>"status",
            "label"=>"Status",
            "type"=>"select",
            "required"=>true,
            'value'=> $boostcategory->status,
            "options"=>[
                [
                    "id"=>1,
                    "name"=>'Activated'
                ],
                [
                    "id"=>0,
                    "name"=>'Deactivated'
                ]
            ],
            "optionlabel"=>"name" 
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
   public function update(Request $request, BoostCategory $boostcategory)
   {
       $boostcategory->update($request->all());
       return redirect('/admin/boostcategories');
   }

   /**
    * Remove the specified resource from storage.
    *
    * @param  \App\Division  $var
    * @return \Illuminate\Http\Response
    */
   public function destroy(BoostCategory  $boostcategory)
   {
       
       $boostcategory->delete();
       return redirect('/admin/boostcategories');
   }
}
