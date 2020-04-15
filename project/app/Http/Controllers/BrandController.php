<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\BrandCategory;
use DataTables;
use Illuminate\Support\Facades\URL;
class BrandController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    } 
    public function index()
    {
        if (request()->ajax()) {
            $data = Brand::latest()->with('brandcategory')->get();
                return Datatables::of($data)
                        ->addIndexColumn()
                        ->addColumn('action', function($row){

                               $btn = '<div class="btn-group"><a href="'.URL::to('/').'/admin/brands/'.$row->id.'/edit" class="btn btn-sm btn-outline-primary">Edit</a>
                               <button onclick="deleteData('.$row->id.')" class="btn btn-sm btn-outline-danger">Delete</button></div>';

                                return $btn;
                        })
                        ->addColumn('img', function($row){

                            $btn = '<img style="width:60px" src="'.URL::to('/images/'.$row->image).'">';

                             return $btn;
                     })
                     ->addColumn('week', function($row){

                        return $row->brand_week==1?"<span class='text-light badge bg-success'>Yes</span>":"<span class='text-light badge bg-danger'>No</span>";
                 })
                        ->rawColumns(['action'])
                        ->escapeColumns([])
                        ->make(true);

                    }
                    $thead='<th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Brand Of Week</th>
                    <th>Category</th>
                    <th>Image</th>
                    ';
                    $columns="{data: 'id', name: 'id'},
                    {data: 'name', name: 'name'},
                    {data: 'details', name: 'details'},
                    {data: 'week', name: 'week'},
                    {data: 'brandcategory.name', name: 'brandcategory.name'},
                    {data: 'img', name: 'img'}, ";
                    return view('table.data',["columns"=>$columns,"thead"=>$thead,"layout"=>'admin.master','ajax'=>'brands','title'=>'Brand List']);
    }
    public function create()
    {
        $action="admin/brands";
        $name="Brand";
        $fields=[
            [
                "name"=>"brand_category_id",
                "label"=>"Brand Category",
                "type"=>"select",
                "required"=>true,
                "options"=>BrandCategory::all(),
                "optionlabel"=>"name"
            ],
            [
                "name"=>"name",
                "label"=>"Name",
                "type"=>"text",
                "required"=>true 
            ],
            [
                "name"=>"details",
                "label"=>"Description",
                "type"=>"textarea",
                "required"=>true 
            ],
            [
                "name"=>"img",
                "label"=>"Image",
                "type"=>"file",
                "required"=>true
            ],
            [
                "name"=>"brand_week",
                "label"=>"Brand Of Week",
                "type"=>"select",
                "required"=>true,
                "options"=>[
                    [
                        "name"=>"Yes",
                        "id"=>1
                    ],
                    [
                        "name"=>"No",
                        "id"=>0
                    ]
                ],
                "optionlabel"=>"name",
            ],
            ];

        return view('admin.form.create',["action"=>$action,"name"=>$name,"fields"=>$fields]);
    }
    public function store(Request $request)
    {
        $imageName = time().'.'.$request->img->getClientOriginalExtension();
        $request->img->move(public_path('images'), $imageName);
        $request['image'] = $imageName;
        Brand::create(
            $request->all()
        );
        return redirect('/admin/brands');
    }
  
   public function edit(Brand $brand)
   {
       $action="admin/brands/$brand->id";
       $name="Brand";
       $fields=[
        [
            "name"=>"brand_category_id",
            "label"=>"Brand Category",
            "type"=>"select",
            "required"=>true,
            "options"=>BrandCategory::all(),
            "optionlabel"=>"name",
            "value"=>$brand->brand_category_id
        ],
           [
               "name"=>"name",
               "label"=>"Name",
               "type"=>"text",
               "required"=>true,
               "value"=>$brand->name
           ],
           [
               "name"=>"details",
               "label"=>"Description",
               "type"=>"textarea", 
               "required"=>true,
               "value"=>$brand->details
           ],
           [
               "name"=>"img",
               "label"=>"Image",
               "type"=>"file",
               "required"=>false
           ],
           [
            "name"=>"brand_week",
            "label"=>"Brand Of Week",
            "type"=>"select",
            "required"=>true,
            "value"=>$brand->brand_week,
            "options"=>[
                [
                    "name"=>"Yes",
                    "id"=>1
                ],
                [
                    "name"=>"No",
                    "id"=>0
                ]
            ],
            "optionlabel"=>"name",
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
   public function update(Request $request, Brand $brand)
   {
    if($request->img){
        $imageName = time().'.'.$request->img->getClientOriginalExtension();
    $request->img->move(public_path('images'), $imageName);
    $request['image'] = $imageName;
    }
       $brand->update($request->all());
       return redirect('/admin/brands');
   }

   /**
    * Remove the specified resource from storage.
    *
    * @param  \App\Division  $var
    * @return \Illuminate\Http\Response
    */
   public function destroy(Brand  $brand)
   {
       
       $brand->delete();
       return redirect('/admin/brands');
   }
}
