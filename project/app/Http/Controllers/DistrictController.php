<?php

namespace App\Http\Controllers;

use App\Models\District;
use Illuminate\Http\Request;
use App\Http\Requests\DistrictRequest;
use App\Http\Resources\District\DistrictResource;
use App\Models\Division;
use DataTables;
use Illuminate\Support\Facades\URL;

class DistrictController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = District::latest()->with('Division')->get();
                return Datatables::of($data)
                        ->addIndexColumn()
                        ->addColumn('action', function($row){

                               $btn = '<div class="btn-group"><a href="'.URL::to('/admin/').'/districts/'.$row->id.'/edit" class="btn btn-sm btn-outline-primary">Edit</a>
                               <button onclick="deleteData('.$row->id.')" class="btn btn-sm btn-outline-danger">Delete</button></div>';

                                return $btn;
                        })

                        ->rawColumns(['action'])
                        ->escapeColumns([])
                        ->make(true);

                   }
                    $thead='<th>ID</th>
                    <th>District</th>
                    <th>Name</th>';
                    $columns="{data: 'id', name: 'id'},
                    {data: 'division.name', name: 'division.name'},
                    {data: 'name', name: 'name'},";
                    return view('table.data',["columns"=>$columns,"thead"=>$thead,"layout"=>'admin.master','ajax'=>'districts','title'=>'District List']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       
 
        return view('admin.district.create',["divisions"=>Division::all()]);
    }

    public function serial(Division $division){
        $districts=District::where('division_id',$division->id)->orderBy('serial')->get();
        return view('admin.district.serial',compact('division','districts'));
    }
    public function serialUpdate(Request $request,Division $division){
        $lists= json_decode($request->lists);
        for($i=0;$i<count($lists);$i++){
            $district=District::find($lists[$i]);
            $district->serial=$i;
            $district->save();
        }
        return redirect()->route('admin-dis-serial',$division->id);
       // return view('admin.category.serial');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        for($i=0;$i<count($request->name);$i++){
            District::create(
               [
                   "name"=>$request->name[$i],
                   "division_id"=>$request->division_id[$i]
               ]
            ); 
        }
       
        return redirect('/admin/districts');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\District  $var
     * @return \Illuminate\Http\Response
     */
    public function show(District $var)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\District  $var
     * @return \Illuminate\Http\Response
     */
    public function edit(District $district)
    {
        $action="/admin/districts/$district->id";
        $name="District";
        $fields=[
            [
                "name"=>"division_id",
                "label"=>"Division",
                "type"=>"select",
                "required"=>true,
                "value"=>$district->division_id,
                "options"=>Division::all(),
                "optionlabel"=>"name"
            ],
            [
                "name"=>"name",
                "label"=>"Name",
                "type"=>"text",
                "required"=>true,
                "value"=>$district->name
            ],
            ];

        return view('admin.form.edit',["action"=>$action,"name"=>$name,"fields"=>$fields]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\District  $var
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, District $district)
    {
        $district->update($request->all());
        return redirect('/admin/districts');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\District  $var
     * @return \Illuminate\Http\Response
     */
    public function destroy(District $district)
    {
        $district->delete();
        return redirect('/admin/districts');
    }
}
