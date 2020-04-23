<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\TicketCategory;

use Datatables;
use Illuminate\Support\Facades\URL;

class TicketCategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function index()
    {
        if (request()->ajax()) {
            $data = TicketCategory::latest()->get();
                return Datatables::of($data)
                        ->addIndexColumn()
                        ->addColumn('action', function($row){

                               $btn = '<div class="btn-group"><a href="'.URL::to('/').'/admin/ticketcategories/'.$row->id.'/edit" class="btn btn-sm btn-outline-primary">Edit</a>
                               <button onclick="deleteData('.$row->id.')" class="btn btn-sm btn-outline-danger">Delete</button></div>';

                                return $btn;
                        })
                        ->rawColumns(['action'])
                        ->escapeColumns([])
                        ->make(true);

                    }
                    $thead='<th>ID</th>
                    <th>Name</th>
                    ';
                    $columns="{data: 'id', name: 'id'},
                    {data: 'name', name: 'name'}, ";
                    return view('table.data',["columns"=>$columns,"thead"=>$thead,"layout"=>'admin.master','ajax'=>'ticketcategories','title'=>'Ticket Category List']);
    }
    public function create()
    {
        $action="admin/ticketcategories";
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
        TicketCategory::create(
            $request->all()
        );
        return redirect('/admin/ticketcategories');
    }
  
   public function edit(TicketCategory $ticketcategory)
   {
       $action="admin/ticketcategories/$ticketcategory->id";
       $name="Ticket Category";
       $fields=[
           [
               "name"=>"name",
               "label"=>"Name",
               "type"=>"text",
               "required"=>true,
               "value"=>$ticketcategory->name
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
   public function update(Request $request, TicketCategory $ticketcategory)
   {
       $ticketcategory->update($request->all());
       return redirect('/admin/ticketcategories');
   }

   /**
    * Remove the specified resource from storage.
    *
    * @param  \App\Division  $var
    * @return \Illuminate\Http\Response
    */
   public function destroy(TicketCategory  $ticketcategory)
   {
       
       $ticketcategory->delete();
       return redirect('/admin/ticketcategories');
   }
}
