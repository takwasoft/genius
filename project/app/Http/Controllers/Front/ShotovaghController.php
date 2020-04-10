<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ShotovaghController extends Controller
{
    public function index(){
        return "ok";
        //return view('front.product.product1');
    }
}
