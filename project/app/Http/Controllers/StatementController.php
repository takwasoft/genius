<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Transaction;
use Carbon\Carbon;

class StatementController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function index(){
        $transactions = Transaction::orderBy('created_at')
        ->get()
        ->groupBy(function ($val) {
            return Carbon::parse($val->created_at)->format('d-m-y');
        });
        $ntransactions = Transaction::orderBy('created_at')
        ->get();
        return view('admin.statement.index',compact('transactions','ntransactions')); 
    }
    public function filter(Request $request){
        $start=$request->start;
        $end=$request->end;
        $transactions = Transaction::orderBy('created_at')
        ->when($end, function ($query, $end) {
            return $query->where('created_at','<=', $end);
        })
        ->when($start, function ($query, $start) {
            return $query->where('created_at','>=', $start);
        })
        ->get()
        ->groupBy(function ($val) {
            return Carbon::parse($val->created_at)->format('d-m-y');
        });
        $ntransactions = Transaction::orderBy('created_at')
        ->when($end, function ($query, $end) {
            return $query->where('created_at','<=', $end);
        })
        ->when($start, function ($query, $start) {
            return $query->where('created_at','>=', $start);
        })
        ->get();
        return view('admin.statement.index',compact('transactions','start','end','ntransactions')); 
    }
    public function datatable(){
        
    }
}
