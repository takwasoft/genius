<?php

namespace App\Http\Controllers;

use App\Models\BrandCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DataTables;
use Illuminate\Support\Facades\URL;
class BrandCategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    } 
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (request()->ajax()) {
            $data = BrandCategory::latest()->get();
                return Datatables::of($data)
                        ->addIndexColumn()
                        ->addColumn('action', function($row){

                               $btn = '<div class="btn-group"><a href="'.URL::to('/').'/admin/brandcategories/'.$row->id.'/edit" class="btn btn-sm btn-outline-primary">Edit</a>
                               <button onclick="deleteData('.$row->id.')" class="btn btn-sm btn-outline-danger">Delete</button></div>';

                                return $btn;
                        })
                        ->addColumn('show', function($row){

                            return $row->show_in_home==1?"<span class='text-light badge bg-success'>Showed</span>":"<span class='text-light badge bg-danger'>Hidden</span>";
                     })
                        ->rawColumns(['action'])
                        ->escapeColumns([])
                        ->make(true);

                    }
                    $thead='<th>ID</th>
                    <th>Name</th>
                    <th>Show</th>
                    ';
                    $columns="{data: 'id', name: 'id'},
                    {data: 'name', name: 'name'},
                    {data: 'show', name: 'show'},
                  ";
                    return view('table.data',["columns"=>$columns,"thead"=>$thead,"layout"=>'admin.master','ajax'=>'brandcategories','title'=>'Brand Categories List']);
    }

    public function create()
    {
        $action="admin/brandcategories";
        $name="Brand Category";
        $fields=[
            [
                "name"=>"name",
                "label"=>"Name",
                "type"=>"text",
                "required"=>true 
            ],
            [
                "name"=>"show_in_home",
                "label"=>"Show Homepage",
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
                "optionlabel"=>"name" 
            ],
          
            ];
 
        return view('admin.form.create',["action"=>$action,"name"=>$name,"fields"=>$fields]);
    }
    public function store(Request $request)
    {


        BrandCategory::create(
            $request->all()
        );
        return redirect('/admin/brandcategories');
    }
  
   public function edit(BrandCategory $brandcategory)
   {
       $action="admin/brandcategories/$brandcategory->id";
       $name="Brand Category";
       $fields=[
        [
            "name"=>"name",
            "label"=>"Name",
            "type"=>"text",
            "required"=>true ,
            "value"=>$brandcategory->name,
        ],
        [
            "name"=>"show_in_home",
            "label"=>"Show Homepage",
            "type"=>"select",
            "required"=>true,
            "value"=>$brandcategory->show_in_home,
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
   public function update(Request $request, BrandCategory $brandcategory)
   {

       $brandcategory->update($request->all());
       return redirect('/admin/brandcategories');
   }

   /**
    * Remove the specified resource from storage.
    *
    * @param  \App\Division  $var
    * @return \Illuminate\Http\Response
    */
   public function destroy(BrandCategory  $brandcategory)
   {
       
       $brandcategory->delete();
       return redirect('/admin/brands');
   }
}
