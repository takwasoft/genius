<?php

namespace App\Http\Controllers;

use App\Models\Area;
use Illuminate\Http\Request;
use App\Http\Requests\AreaRequest;
use App\Http\Resources\Area\AreaResource;
use App\Models\District;
use App\Models\Division;
use App\Models\SubDistrict;
use DataTables;
use Illuminate\Support\Facades\URL;
class AreaController extends Controller
{


    public function getDistrict(Division $division){
        return view('vendor.area',['options'=>$division->districts,'name'=>'District']);
    }
    public function getSubDistrict(District $district){
        return view('vendor.area',['options'=>$district->subdistricts,'name'=>'Sub District']);
    }
    public function getArea(SubDistrict $subdistrict){
        return view('vendor.area',['options'=>$subdistrict->areas,'name'=>'Area']);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Area::latest()->with('SubDistrict')->get();
                return Datatables::of($data)
                        ->addIndexColumn()
                        ->addColumn('action', function($row){

                               $btn = '<div class="btn-group"><a href="'.URL::to('/admin/').'/areas/'.$row->id.'/edit" class="btn btn-sm btn-outline-primary">Edit</a>
                               <button onclick="deleteData('.$row->id.')" class="btn btn-sm btn-outline-danger">Delete</button></div>';

                                return $btn;
                        })

                        ->rawColumns(['action'])
                        ->escapeColumns([])
                        ->make(true);

                   }
                    $thead='<th>ID</th>
                    <th>SubDistrict</th>
                    <th>Name</th>';
                    $columns="{data: 'id', name: 'id'},
                    {data: 'sub_district.name', name: 'sub_district.name'},
                    {data: 'name', name: 'name'},";
                    return view('table.data',["columns"=>$columns,"thead"=>$thead,"layout"=>'admin.master','ajax'=>'areas','title'=>' Area List']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $action="admin/areas";
        $name="Area";
        $fields=[
            [
                "name"=>"sub_district_id",
                "label"=>"SubDistrict",
                "type"=>"select",
                "required"=>true,
                "options"=>SubDistrict::all(),
                "optionlabel"=>"name"
            ],
            [
                "name"=>"name",
                "label"=>"Area",
                "type"=>"text",
                "required"=>true
            ]
            ];

        return view('admin.form.create',["action"=>$action,"name"=>$name,"fields"=>$fields]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Area::create(
            $request->all()
        );
        return redirect('/admin/areas');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Area  $var
     * @return \Illuminate\Http\Response
     */
    public function show(Area $var)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Area  $var
     * @return \Illuminate\Http\Response
     */
    public function edit(Area $area)
    {
        $action="admin/areas/$area->id";
        $name="Area";
        $fields=[
            [
                "name"=>"sub_district_id",
                "label"=>"SubDistrict",
                "type"=>"select",
                "required"=>true,
                "value"=>$area->sub_district_id,
                "options"=>SubDistrict::all(),
                "optionlabel"=>"name"
            ],
            [
                "name"=>"name",
                "label"=>"Name",
                "type"=>"text",
                "required"=>true,
                "value"=>$area->name
            ],
            ];

        return view('admin.form.edit',["action"=>$action,"name"=>$name,"fields"=>$fields]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Area  $var
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Area $area)
    {
        $area->update($request->all());
        return redirect('/admin/areas');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Area  $var
     * @return \Illuminate\Http\Response
     */
    public function destroy(Area $area)
    {
        $area->delete();
        return redirect('/admin/areas');
    }
}
