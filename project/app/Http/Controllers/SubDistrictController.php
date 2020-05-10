<?php

namespace App\Http\Controllers;

use App\Models\SubDistrict;
use App\Models\District;
use Illuminate\Http\Request;
use App\Http\Requests\SubDistrictRequest;
use App\Http\Resources\SubDistrict\SubDistrictResource;
use DataTables;
use Illuminate\Support\Facades\URL;
class SubDistrictController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = SubDistrict::latest()->with('District')->get();
                return Datatables::of($data)
                        ->addIndexColumn()
                        ->addColumn('action', function($row){

                               $btn = '<div class="btn-group"><a href="'.URL::to('/').'/admin/subDistricts/'.$row->id.'/edit" class="btn btn-sm btn-outline-primary">Edit</a>
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
                    {data: 'district.name', name: 'district.name'},
                    {data: 'name', name: 'name'},";
                    return view('table.data',["columns"=>$columns,"thead"=>$thead,"layout"=>'admin.master','ajax'=>'subdistricts','title'=>' SubDistrict List']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        return view('admin.subdistrict.create',["districts"=>District::all()]);
    }
    public function serial(District $district){
        $subdistricts=SubDistrict::where('district_id',$district->id)->orderBy('serial')->get();
        return view('admin.subdistrict.serial',compact('district','subdistricts'));
    }

    public function serialUpdate(Request $request,District $district){
        $lists= json_decode($request->lists);
        for($i=0;$i<count($lists);$i++){
            $subdistrict=SubDistrict::find($lists[$i]);
            $subdistrict->serial=$i;
            $subdistrict->save();
        }
        return redirect()->route('admin-subdis-serial',$district->id);
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
            SubDistrict::create(
               [
                   "name"=>$request->name[$i],
                   "district_id"=>$request->district_id[$i]
               ]
            ); 
        }
        return redirect('/admin/subdistricts');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\SubDistrict  $var
     * @return \Illuminate\Http\Response
     */
    public function show(SubDistrict $var)
    {
       
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\SubDistrict  $var
     * @return \Illuminate\Http\Response
     */
    public function edit(SubDistrict $subDistrict)
    {
        $action="/admin/subdistricts/$subDistrict->id";
        $name="SubDistrict";
        $fields=[
            [
                "name"=>"division_id",
                "label"=>"Division",
                "type"=>"select",
                "required"=>true,
                "value"=>$subDistrict->district_id,
                "options"=>District::all(),
                "optionlabel"=>"name"
            ],
            [
                "name"=>"name",
                "label"=>"Name",
                "type"=>"text",
                "required"=>true,
                "value"=>$subDistrict->name
            ],
            ];

        return view('admin.form.edit',["action"=>$action,"name"=>$name,"fields"=>$fields]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\SubDistrict  $var
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, SubDistrict $subDistrict)
    {
        $subDistrict->update($request->all());
        return redirect('/admin/subdistricts');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\SubDistrict  $var
     * @return \Illuminate\Http\Response
     */
    public function destroy(SubDistrict $subDistrict)
    {
        $subDistrict->delete();
        return redirect('/admin/subDistricts');
    }
}
