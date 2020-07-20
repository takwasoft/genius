<?php

namespace App\Http\Controllers\Admin;

use Datatables;
use App\Models\Admin;
use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Input;
use Validator;


class StaffController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    //*** JSON Request
    public function datatables()
    {
        $datas = Admin::where('id', '!=', 1)->where('id', '!=', Auth::guard('admin')->user()->id)->orderBy('id')->get();
        //--- Integrating This Collection Into Datatables
        return Datatables::of($datas)
            ->addColumn('role', function (Admin $data) {
                $role = $data->role_id == 0 ? 'No Role' : $data->role->name;
                return $role;
            })

            ->editColumn('status', function (Admin $data) {
                $class = $data->status == 1 ? 'drop-success' : 'drop-danger';
                $s = $data->status == 1 ? 'selected' : '';
                $ns = $data->status == 0 ? 'selected' : '';
                return '<div class="action-list"><select onchange="changed(this.value,' . $data->id . ',this)" class="process select droplinks ' . $class . '"><option  value="1" ' . $s . '>Activated</option><<option  value="0" ' . $ns . '>Deactivated</option>/select></div>';
            })
            ->addColumn('action', function (Admin $data) {
                $delete = '<a href="javascript:;" data-href="' . route('admin-staff-delete', $data->id) . '" data-toggle="modal" data-target="#confirm-delete" class="delete"><i class="fas fa-trash-alt"></i></a>';
                return '<div class="action-list"><a data-href="' . route('admin-staff-show', $data->id) . '" class="view details-width" data-toggle="modal" data-target="#modal1"> <i class="fas fa-eye"></i>Details</a><a data-href="' . route('admin-staff-edit', $data->id) . '" class="edit" data-toggle="modal" data-target="#modal1"> <i class="fas fa-edit"></i>Edit</a>' . $delete . '</div>';
            })
            ->rawColumns(['action', 'status'])
            ->toJson(); //--- Returning Json Data To Client Side
    }

    public function status($id, $status)
    {
        $admin = Admin::find($id);
        $admin->update([
            "status" => $status
        ]);
    }

    //*** GET Request
    public function index()
    {
        return view('admin.staff.index');
    }

    //*** GET Request
    public function create()
    {
        return view('admin.staff.create');
    }

    //*** POST Request
    public function store(Request $request)
    {
        //--- Validation Section
        $rules = [
            'photo'      => 'required|mimes:jpeg,jpg,png,svg',
        ];

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

        //--- Logic Section
        $data = new Admin();
        $input = $request->all();
        if ($file = $request->file('photo')) {
            $name = time() . $file->getClientOriginalName();
            $file->move('assets/images/admins', $name);
            $input['photo'] = $name;
        }
        $input['role'] = 'Staff';
        $input['password'] = bcrypt($request['password']);
        $data->fill($input)->save();
        //--- Logic Section Ends

        //--- Redirect Section        
        $msg = 'New Data Added Successfully.';
        return response()->json($msg);
        //--- Redirect Section Ends    
    }


    public function edit($id)
    {
        $data = Admin::findOrFail($id);
        return view('admin.staff.edit', compact('data'));
    }

    public function update(Request $request, $id)
    {
        //--- Validation Section
        if ($id != Auth::guard('admin')->user()->id) {
            $rules =
                [
                    'photo' => 'mimes:jpeg,jpg,png,svg',
                    'email' => 'unique:admins,email,' . $id
                ];

            $validator = Validator::make(Input::all(), $rules);

            if ($validator->fails()) {
                return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
            }
            //--- Validation Section Ends
            $input = $request->all();
            $data = Admin::findOrFail($id);
            if ($file = $request->file('photo')) {
                $name = time() . $file->getClientOriginalName();
                $file->move('assets/images/admins/', $name);
                if ($data->photo != null) {
                    if (file_exists(public_path() . '/assets/images/admins/' . $data->photo)) {
                        unlink(public_path() . '/assets/images/admins/' . $data->photo);
                    }
                }
                $input['photo'] = $name;
            }
            if ($request->password == '') {
                $input['password'] = $data->password;
            } else {
                $input['password'] = Hash::make($request->password);
            }
            $data->update($input);
            $msg = 'Data Updated Successfully.';
            return response()->json($msg);
        } else {
            $msg = 'You can not change your role.';
            return response()->json($msg);
        }
    }

    //*** GET Request
    public function show($id)
    {
        $data = Admin::findOrFail($id);
        return view('admin.staff.show', compact('data'));
    }

    //*** GET Request Delete
    public function destroy($id)
    {
        if ($id == 1) {
            return "You don't have access to remove this admin";
        }
        $data = Admin::findOrFail($id);
        //If Photo Doesn't Exist
        if ($data->photo == null) {
            $data->delete();
            //--- Redirect Section     
            $msg = 'Data Deleted Successfully.';
            return response()->json($msg);
            //--- Redirect Section Ends     
        }
        //If Photo Exist
        if (file_exists(public_path() . '/assets/images/admins/' . $data->photo)) {
            unlink(public_path() . '/assets/images/admins/' . $data->photo);
        }
        $data->delete();
        //--- Redirect Section     
        $msg = 'Data Deleted Successfully.';
        return response()->json($msg);
        //--- Redirect Section Ends    
    }
}
