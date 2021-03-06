<?php

namespace App\Http\Controllers\Vendor;

use App\BoostAdditional;
use App\BoostExtraCharge;
use App\BoostPaymentVerification;
use App\ExtraChargeRule;
use App\Http\Controllers\Controller;
use App\Models\Area;
use App\Models\Category;
use App\Models\Childcategory;
use App\Models\Currency;
use App\Models\Gallery;
use App\Models\Product;
use App\Models\Generalsetting;
use App\Models\Subcategory;
use App\Models\Attribute;
use App\Models\AttributeOption;
use App\Models\Boost;
use App\Models\BoostCategory;
use App\Models\Brand;
use App\Models\District;
use App\Models\Division;
use App\Models\PaymentGateway;
use App\Models\SubDistrict;
use App\Models\Transaction;
use App\Models\User;
use App\TopAd;
use App\TopAdAdditional;
use App\TopAdCategory;
use App\TopAdExtraCharge;
use App\TopAdPaymentVerification;
use Auth;
use Carbon\Carbon;
use DB;
use Datatables;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Image;
use Session;
use Validator;

class ProductController extends Controller
{
    public $global_language;

    public function __construct()
    {
        $this->middleware('auth');

            if (Session::has('language'))
            {
                $data = DB::table('languages')->find(Session::get('language'));
                $data_results = file_get_contents(public_path().'/assets/languages/'.$data->file);
                $this->vendor_language = json_decode($data_results);
            }
            else
            {
                $data = DB::table('languages')->where('is_default','=',1)->first();
                $data_results = file_get_contents(public_path().'/assets/languages/'.$data->file);
                $this->vendor_language = json_decode($data_results);

            }

    }
    public function boostProductInsert(Request $request,Product $product){
        $boostCategory=BoostCategory::find($request->boost_category_id);
        $total=$boostCategory->price;
        $paid=0;
       if($request->method==0){
           if($total>auth()->user()->current_balance){

               return redirect()->back()->withErrors(["msg"=>"insufficient balance"]);
           }
           else{
               $paid=1;
               $user=User::find(auth()->user()->id);
               $user->current_balance-=$total;
               $user->save();
               $boost= Boost::create([
                "boost_category_id"=>$request->boost_category_id,
                "payment_gateway_id"=>$request->method,
                "product_id"=>$product->id,
                "status"=>0,
                "paid"=>$paid
            ]);
            Transaction::create([
                "amount"=>$boost->boostCategory->price,
                "type"=>"Product Boosting",
                "top_ad_id"=>$boost->id,
                "collected"=>1
            ]);
               return redirect()->route('my-boost');
           }
       }
       $boost= Boost::create([
            "boost_category_id"=>$request->boost_category_id,
            "payment_gateway_id"=>$request->method,
            "product_id"=>$product->id,
            "status"=>0,
            "paid"=>$paid
        ]);

        for($i=0;$i<count(array_keys($request->verification));$i++){
            if($request->verification[array_keys($request->verification)[$i]])
            {
                BoostPaymentVerification::create([
                    "boost_id"=>$boost->id,
                    "payment_verification_id"=>array_keys($request->verification)[$i],
                    "value"=>$request->verification[array_keys($request->verification)[$i]]
                ]);
            }
        }
      
        $payment=PaymentGateway::find($request->method);
        $extraCharges=ExtraChargeRule::where('payment_gateway_id','=',$payment->id)->get(); 
        foreach($extraCharges as $extraCharge){
            if($total>=$extraCharge->from&&$total<=$extraCharge->to){
                BoostExtraCharge::create([
                    "boost_id"=>$boost->id,
                    "extra_charge_rule_id"=>$extraCharge->id,
                    "charge"=>$extraCharge->fixed==1?$extraCharge->charge:$extraCharge->charge*$total*0.01
                ]);
            }
        }
        return redirect()->route('my-boost');
    }
    public function topAdProductInsert(Request $request,Product $product){
        $boostCategory=TopAdCategory::find($request->boost_category_id);
        $total=$boostCategory->price;
        $paid=0;
       if($request->method==0){
           if($total>auth()->user()->current_balance){

               return redirect()->back()->withErrors(["msg"=>"insufficient balance"]);
           }
           else{
               $paid=1;
               $user=User::find(auth()->user()->id);
               $user->current_balance-=$total;
               $user->save();
               $boost= TopAd::create([
                "top_ad_category_id"=>$request->boost_category_id,
                "payment_gateway_id"=>$request->method,
                "product_id"=>$product->id,
                "status"=>0,
                "paid"=>$paid
            ]);
            Transaction::create([
                "amount"=>$boost->topAdCategory->price,
                "type"=>"Product Top Ad",
                "top_ad_id"=>$boost->id,
                "collected"=>1
            ]);
               return redirect()->route('my-top-ad');
           }
       }
       $boost= TopAd::create([
            "top_ad_category_id"=>$request->boost_category_id,
            "payment_gateway_id"=>$request->method,
            "product_id"=>$product->id,
            "status"=>0,
            "paid"=>$paid
        ]);

        for($i=0;$i<count(array_keys($request->verification));$i++){
            if($request->verification[array_keys($request->verification)[$i]])
            {
                TopAdPaymentVerification::create([
                    "top_ad_id"=>$boost->id,
                    "payment_verification_id"=>array_keys($request->verification)[$i],
                    "value"=>$request->verification[array_keys($request->verification)[$i]]
                ]);
            }
        }
      
        $payment=PaymentGateway::find($request->method);
        $extraCharges=ExtraChargeRule::where('payment_gateway_id','=',$payment->id)->get(); 
        foreach($extraCharges as $extraCharge){
            if($total>=$extraCharge->from&&$total<=$extraCharge->to){
                TopAdExtraCharge::create([
                    "top_ad_id"=>$boost->id,
                    "extra_charge_rule_id"=>$extraCharge->id,
                    "charge"=>$extraCharge->fixed==1?$extraCharge->charge:$extraCharge->charge*$total*0.01
                ]);
            }
        }
        return redirect()->route('my-top-ad');
    }
    public function myBoost(){
        return view('vendor.product.myboost'); 
    }
    public function myTopAd(){
        return view('vendor.product.myTopAd');
    }
    public function boostDataTable(){
        $datas = Boost::whereHas('product', function($query) {
            $query->where('user_id','=', auth()->user()->id);
         })->orderBy('id','desc')->with('product.user')->with('boostcategory')->get();
 
         //--- Integrating This Collection Into Datatables
         return Datatables::of($datas)
                            ->addColumn('method', function(Boost $data) {
                                if($data->paymentGateway)
                                {
                                    return $data->paymentGateway->title;
                                }
                                else{
                                    return "from balance";
                                }
                            })
                            ->editColumn('id',function($data){
                                return '#00'.$data->id;
                            })
                            ->editColumn('status',function($data){
                                if($data->status == 1)
                                {
                                    return '<span class="badge badge-success">Aproved</span>';
                                }
                                else if($data->status == 0)
                                {
                                    return '<span class="badge badge-danger">Pending</span>';
                                }
                                
                            })
                            ->editColumn('paid',function($data){
                                if($data->paid == 1)
                                {
                                    return '<span class="badge badge-success">Paid</span>';
                                }
                                else if($data->paid == 0)
                                {
                                    return '<span class="badge badge-danger">Unpaid</span>';
                                }
                                
                            })
                            ->addColumn('action', function( $data) { 
                                if($data->status == 1)
                                {
                                    $class =   'drop-success';
                                }
                                else if($data->status == 0)
                                {
                                    $class =   'drop-warning';
                                }
                                else{
                                    $class =   'drop-danger';
                                }
                                

                                $s = $data->status == 1 ? 'selected' : '';
                                $ns = $data->status == 0 ? 'selected' : '';
                                $cs = $data->status == 2 ? 'selected' : '';
                                return '<div class="action-list"><select onchange="changed(this.value,'.$data->id.')" class="process select droplinks '.$class.'"><option data-val="1" value="1" '.$s.'>Confirm</option><option data-val="0" value="0" '.$ns.'>Pending</option><option data-val="2" value="2" '.$cs.'>Cancel</option>/select></div>';
                            })
                            ->addColumn('applied', function( $data) {
                                return $data->created_at->diffForHumans();
                            })
                            ->addColumn('valid', function( $data) {
                                //
                                return $data->product->boost_expired->diff(Carbon::now())->format('%d day %h hour  %i min');
                            })
                            ->rawColumns(['status','action','paid'])
                            ->toJson();
    }


    public function topAdDataTable(){
        $datas = TopAd::whereHas('product', function($query) {
            $query->where('user_id','=', auth()->user()->id);
         })->orderBy('id','desc')->with('product.user')->with('topadcategory')->get();
 
         //--- Integrating This Collection Into Datatables
         return Datatables::of($datas)
                            ->addColumn('method', function(TopAd $data) {
                                if($data->paymentGateway)
                                {
                                    return $data->paymentGateway->title;
                                }
                                else{
                                    return "from balance";
                                }
                            })
                            ->editColumn('id',function($data){
                                return '#00'.$data->id;
                            })
                            ->editColumn('status',function($data){
                                if($data->status == 1)
                                {
                                    return '<span class="badge badge-success">Aproved</span>';
                                }
                                else if($data->status == 0)
                                {
                                    return '<span class="badge badge-danger">Pending</span>';
                                }
                                
                            })
                            ->editColumn('paid',function($data){
                                if($data->paid == 1)
                                {
                                    return '<span class="badge badge-success">Paid</span>';
                                }
                                else if($data->paid == 0)
                                {
                                    return '<span class="badge badge-danger">Unpaid</span>';
                                }
                                
                            })
                            ->addColumn('action', function( $data) { 
                                if($data->status == 1)
                                {
                                    $class =   'drop-success';
                                }
                                else if($data->status == 0)
                                {
                                    $class =   'drop-warning';
                                }
                                else{
                                    $class =   'drop-danger';
                                }
                                

                                $s = $data->status == 1 ? 'selected' : '';
                                $ns = $data->status == 0 ? 'selected' : '';
                                $cs = $data->status == 2 ? 'selected' : '';
                                return '<div class="action-list"><select onchange="changed(this.value,'.$data->id.')" class="process select droplinks '.$class.'"><option data-val="1" value="1" '.$s.'>Confirm</option><option data-val="0" value="0" '.$ns.'>Pending</option><option data-val="2" value="2" '.$cs.'>Cancel</option>/select></div>';
                            })
                            ->addColumn('applied', function( $data) {
                                return $data->created_at->diffForHumans();
                            })
                            ->addColumn('valid', function( $data) {
                                //
                                return $data->product->boost_expired->diff(Carbon::now())->format('%d day %h hour  %i min');
                            })
                            ->rawColumns(['status','action','paid'])
                            ->toJson();
    }
    public function boostProduct(Product $product){  
        $boostCategories=BoostCategory::where('status','=','1')->get();
        $gateways=PaymentGateway::all(); 
        return view('vendor.product.boost',compact('product','gateways','boostCategories'));
    } 
    public function topProduct(Product $product){
        $boostCategories=TopAdCategory::where('status','=','1')->get(); 
        $gateways=PaymentGateway::all();
        return view('vendor.product.topAd',compact('product','gateways','boostCategories'));
    } 
    //*** JSON Request
    public function datatables()
    { 
    	 $user = Auth::user();
         $datas = $user->products()->where('product_type','normal')->orderBy('id','desc')->get();

         //--- Integrating This Collection Into Datatables
         return Datatables::of($datas)
                            ->editColumn('name', function(Product $data) {
                                $name = mb_strlen(strip_tags($data->name),'utf-8') > 50 ? mb_substr(strip_tags($data->name),0,50,'utf-8').'...' : strip_tags($data->name);
                                $id = '<small>Product ID: <a href="'.route('front.product', $data->slug).'" target="_blank">'.sprintf("%'.08d",$data->id).'</a></small>';
                                return  $name.'<br>'.$id;
                            })
                            ->editColumn('price', function(Product $data) {
                                $sign = Currency::where('is_default','=',1)->first();
                                $price = round($data->price * $sign->value , 2);
                                $price = $sign->sign.$price ;
                                return  $price;
                            })
                            ->addColumn('status', function(Product $data) {
                                if($data->status == 1 ){
                                    return '<span class="badge badge-success">Activated</span>';
                                }
                                else if($data->status == 0){
                                    return '<span class="badge badge-danger">Deactivated</span>';
                                }
                                else{
                                    return '<span class="badge badge-warning">Pending</span>';

                                }
                                
                            })
                            ->addColumn('promotion', function(Product $data) {
                                return $data->status == 1?'<div class="action-list"><select onchange="window.location.href=this.value" class="process select  drop-success">
                                <option  >Promote Now</option>
                                <option   value="'. route('vendor-prod-boost',$data->id).'" >Boost </option>
                                <option  value="'. route('vendor-prod-top',$data->id).'" >Top Ad</option>
                                /select></div>':'<span class="badge badge-danger">Ineligible</span>';
                                // return $data->status==1? '<a class="btn btn-sm btn-success" href="'.route('vendor-prod-boost',$data->id).'">Boost Now</a>':'<span class="badge badge-danger">Not Eligible</span>';
                                  
                             })
                            ->addColumn('action', function(Product $data) {
                                return '<div class="action-list"><a href="' . route('vendor-prod-edit',$data->id) . '"> <i class="fas fa-edit"></i>'.$this->vendor_language->lang715.'</a><a href="javascript" class="set-gallery" data-toggle="modal" data-target="#setgallery"><input type="hidden" value="'.$data->id.'"><i class="fas fa-eye"></i> '.$this->vendor_language->lang716.'</a><a href="javascript:;" data-href="' . route('vendor-prod-delete',$data->id) . '" data-toggle="modal" data-target="#confirm-delete" class="delete"><i class="fas fa-trash-alt"></i></a></div>';
                            })
                            ->rawColumns(['name','promotion', 'status', 'action'])
                            ->toJson(); //--- Returning Json Data To Client Side
    }


    //*** JSON Request
    public function catalogdatatables()
    {
         $user = Auth::user();
         $datas =  Product::where('product_type','normal')->where('status','=',1)->where('is_catalog','=',1)->orderBy('id','desc')->get();

         //--- Integrating This Collection Into Datatables
         return Datatables::of($datas)
                            ->editColumn('name', function(Product $data) {
                                $name = strlen(strip_tags($data->name)) > 50 ? substr(strip_tags($data->name),0,50).'...' : strip_tags($data->name);
                                $id = '<small>Product ID: <a href="'.route('front.product', $data->slug).'" target="_blank">'.sprintf("%'.08d",$data->id).'</a></small>';
                                return  $name.'<br>'.$id;
                            })
                            ->editColumn('price', function(Product $data) {
                                $sign = Currency::where('is_default','=',1)->first();
                                $price = $sign->sign.$data->price;
                                return  $price;
                            })
                            ->addColumn('action', function(Product $data) {
                                $user = Auth::user();
                                $ck = $user->products()->where('catalog_id','=',$data->id)->count() > 0;
                                $catalog = $ck ? '<a href="javascript:;"> Added To Catalog</a>' : '<a href="' . route('vendor-prod-catalog-edit',$data->id) . '"><i class="fas fa-plus"></i> Add To Catalog</a>';
                                return '<div class="action-list">'. $catalog .'</div>';
                            })
                            ->rawColumns(['name', 'status', 'action'])
                            ->toJson(); //--- Returning Json Data To Client Side
    }

    //*** GET Request
    public function index()
    {   
        return view('vendor.product.index');
    }


    //*** GET Request
    public function catalogs()
    {
        return view('vendor.product.catalogs');
    }

    //*** GET Request
    public function types()
    {
        return view('vendor.product.types',['divisions'=>Division::all()]);
    }

    //*** GET Request
    public function createPhysical()
    {   
        $package = auth()->user()->subscribes()->orderBy('id','desc')->first(); 
        
        $cats = $package->subscription->categories;
        //sob gulo category jabena. ei vendor er package e jgulo ache sudhu ogulo jabe
        //return $cats[0]->subs[0]->childs;
        $maxPrice=$package->subscription->max_price; 
        $brands = Brand::all();
        $sign = Currency::where('is_default','=',1)->first();
        $divisions=Division::all();
        $districts=District::orderBy('dis_serial')->limit(8)->get();
        $categories=Category::all();
      
        //every category has many subs. every subs has many childs
        return view('vendor.product.create.physical',compact('cats','sign','brands','maxPrice','divisions','districts','categories'));
    }

    //*** GET Request
    public function createDigital()
    {
        $cats = Category::all();
        $sign = Currency::where('is_default','=',1)->first();
        return view('vendor.product.create.digital',compact('cats','sign'));
    }

    //*** GET Request
    public function createLicense()
    {
        $cats = Category::all();
        $sign = Currency::where('is_default','=',1)->first();
        return view('vendor.product.create.license',compact('cats','sign'));
    }

    //*** GET Request
    public function status($id1,$id2)
    {
        $data = Product::findOrFail($id1);
        $data->status = $id2;
        $data->update();
    }

    //*** POST Request
    public function uploadUpdate(Request $request,$id)
    {
        //--- Validation Section
        $rules = [
          'image' => 'required',
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
          return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }

        $data = Product::findOrFail($id);

        //--- Validation Section Ends
        $image = $request->image;
        list($type, $image) = explode(';', $image);
        list(, $image)      = explode(',', $image);
        $image = base64_decode($image);
        $image_name = time().str_random(8).'.png';
        $path = 'assets/images/products/'.$image_name;
        file_put_contents($path, $image);
                if($data->photo != null)
                {
                    if (file_exists(public_path().'/assets/images/products/'.$data->photo)) {
                        unlink(public_path().'/assets/images/products/'.$data->photo);
                    }
                }
                        $input['photo'] = $image_name;
         $data->update($input);
                if($data->thumbnail != null)
                {
                    if (file_exists(public_path().'/assets/images/thumbnails/'.$data->thumbnail)) {
                        unlink(public_path().'/assets/images/thumbnails/'.$data->thumbnail);
                    }
                }

        $img = Image::make(public_path().'/assets/images/products/'.$data->photo)->resize(285, 285);
        $thumbnail = time().str_random(8).'.jpg';
        $img->save(public_path().'/assets/images/thumbnails/'.$thumbnail);
        $data->thumbnail  = $thumbnail;
        $data->update();
        return response()->json(['status'=>true,'file_name' => $image_name]);
    }


    //*** POST Request
    public function import(){

        $cats = Category::all();
        $sign = Currency::where('is_default','=',1)->first();
        return view('vendor.product.productcsv',compact('cats','sign'));
    }

    public function importSubmit(Request $request)
    {

        $user = Auth::user();
        $package = $user->subscribes()->orderBy('id','desc')->first();
        $prods = $user->products()->orderBy('id','desc')->get()->count();
        if(Generalsetting::find(1)->verify_product == 1)
        {
            if(!$user->checkStatus())
            {
                return response()->json(array('errors' => [ 0 => 'You must complete your verfication first.']));
            }
        }
        if($prods < $package->allowed_products || $package->allowed_products == 0) {
        $log = "";
        //--- Validation Section
        $rules = [
            'csvfile'      => 'required|mimes:csv,txt',
        ];

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }

        $filename = '';
        if ($file = $request->file('csvfile'))
        {
            $filename = time().'-'.$file->getClientOriginalName();
            $file->move('assets/temp_files',$filename);
        }

        //$filename = $request->file('csvfile')->getClientOriginalName();
        //return response()->json($filename);
        $datas = "";

        $file = fopen(public_path('assets/temp_files/'.$filename),"r");
        $i = 1;
        while (($line = fgetcsv($file)) !== FALSE) {

            if($i != 1)
            {

if (!Product::where('sku',$line[0])->exists()){

                //--- Validation Section Ends

                //--- Logic Section
                $data = new Product;
                $sign = Currency::where('is_default','=',1)->first();

                $input['type'] = 'Physical';
                $input['sku'] = $line[0];

                $input['category_id'] = "";
                $input['subcategory_id'] = "";
                $input['childcategory_id'] = "";

                $mcat = Category::where(DB::raw('lower(name)'), strtolower($line[1]));
                //$mcat = Category::where("name", $line[1]);

                if($mcat->exists()){
                    $input['category_id'] = $mcat->first()->id;

                    if($line[2] != ""){
                        $scat = Subcategory::where(DB::raw('lower(name)'), strtolower($line[2]));

                        if($scat->exists()) {
                            $input['subcategory_id'] = $scat->first()->id;
                        }
                    }
                    if($line[3] != ""){
                        $chcat = Childcategory::where(DB::raw('lower(name)'), strtolower($line[3]));

                        if($chcat->exists()) {
                            $input['childcategory_id'] = $chcat->first()->id;
                        }
                    }
                $input['photo'] = $line[5];
                $input['name'] = $line[4];
                $input['details'] = $line[6];
                $input['color'] = $line[13];
                $input['price'] = $line[7];
                $input['previous_price'] = $line[8];
                $input['stock'] = $line[9];
                $input['size'] = $line[10];
                $input['size_qty'] = $line[11];
                $input['size_price'] = $line[12];
                $input['youtube'] = $line[15];
                $input['policy'] = $line[16];
                $input['meta_tag'] = $line[17];
                $input['meta_description'] = $line[18];
                $input['tags'] = $line[14];
                $input['product_type'] = $line[19];
                $input['affiliate_link'] = $line[20];

                // Conert Price According to Currency
                $input['price'] = ($input['price'] / $sign->value);
                $input['previous_price'] = ($input['previous_price'] / $sign->value);
                $input['user_id'] = Auth::user()->id;
                // Save Data

                $data->fill($input)->save();

                // Set SLug
                $prod = Product::find($data->id);
                $prod->slug = str_slug($data->name,'-').'-'.strtolower($data->sku);
                // Set Thumbnail
                $img = Image::make($line[5])->resize(285, 285);
                $thumbnail = time().str_random(8).'.jpg';
                $img->save(public_path().'/assets/images/thumbnails/'.$thumbnail);
                $prod->thumbnail  = $thumbnail;
                $prod->update();


                }else{
                    $log .= "<br>Row No: ".$i." - No Category Found!<br>";
                }

}else{
    $log .= "<br>Row No: ".$i." - Duplicate Product Code!<br>";
}

            }

            $i++;

        }
        fclose($file);


        //--- Redirect Section
        $msg = 'Bulk Product File Imported Successfully.<a href="'.route('vendor-prod-index').'">View Product Lists.</a>'.$log;
        return response()->json($msg);



        }
        else
        {
            //--- Redirect Section
            return response()->json(array('errors' => [ 0 => 'You Can\'t Add More Products.']));

            //--- Redirect Section Ends
        }
    }



    //*** POST Request
    public function store(Request $request)
    {
 
        $user = Auth::user();
        $package = $user->subscribes()->orderBy('id','desc')->first(); 
        $prods = $user->products()->orderBy('id','desc')->get()->count();
        if(Generalsetting::find(1)->verify_product == 1)
        {
            if(!$user->checkStatus())
            {
                return response()->json(array('errors' => [ 0 => 'You must complete your verfication first.']));
            }
        }
        if($prods < $package->allowed_products || $package->allowed_products == 0)
        {

        //--- Validation Section
        $rules = [
               'pht'      => 'required',
               'file'       => 'mimes:zip'
                ];

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
          return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

        //--- Logic Section
            $data = new Product;
            $sign = Currency::where('is_default','=',1)->first();
            $input = $request->all();
            // Check File
            if ($file = $request->file('file'))
            {
                $name = time().$file->getClientOriginalName();
                $file->move('assets/files',$name);
                $input['file'] = $name;
            }



            if ($file = $request->file('pht')) 
            {              
                $name = time().str_random(8).$file->getClientOriginalName();
                $file->move('assets/images/products/',$name);
                           
            $input['photo'] = $name;
            } 

            // Check Physical
            if($request->type == "Physical")
            {

                    //--- Validation Section
                    $rules = ['sku'      => 'min:8|unique:products'];

                    $validator = Validator::make(Input::all(), $rules);

                    if ($validator->fails()) {
                        return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
                    }
                    //--- Validation Section Ends


            // Check Condition
            if ($request->product_condition_check == ""){
                $input['product_condition'] = 0;
            }

            // Check Shipping Time
            if ($request->shipping_time_check == ""){
                $input['ship'] = null;
            }

            // Check Size
            if(empty($request->size_check ))
            {
                $input['size'] = null;
                $input['size_qty'] = null;
                $input['size_price'] = null;
            }
            else{
                    if(in_array(null, $request->size) || in_array(null, $request->size_qty))
                    {
                        $input['size'] = null;
                        $input['size_qty'] = null;
                        $input['size_price'] = null;
                    }
                    else
                    {
                        $input['size'] = implode(',', $request->size);
                        $input['size_qty'] = implode(',', $request->size_qty);
                        $input['size_price'] = implode(',', $request->size_price);
                    }
            }

            // Check Whole Sale
            if(empty($request->whole_check ))
            {
                $input['whole_sell_qty'] = null;
                $input['whole_sell_discount'] = null;
            }
            else{
                if(in_array(null, $request->whole_sell_qty) || in_array(null, $request->whole_sell_discount))
                {
                $input['whole_sell_qty'] = null;
                $input['whole_sell_discount'] = null;
                }
                else
                {
                    $input['whole_sell_qty'] = implode(',', $request->whole_sell_qty);
                    $input['whole_sell_discount'] = implode(',', $request->whole_sell_discount);
                }
            }


            // Check Color
            if(empty($request->color_check))
            {
                $input['color'] = null;
            }
            else{
                $input['color'] = implode(',', $request->color);
            }

            // Check Measurement
            if ($request->mesasure_check == "")
             {
                $input['measure'] = null;
             }

            }

            // Check Seo
        if (empty($request->seo_check))
         {
            $input['meta_tag'] = null;
            $input['meta_description'] = null;
         }
         else {
        if (!empty($request->meta_tag))
         {
            $input['meta_tag'] = implode(',', $request->meta_tag);
         }
         }

             // Check License

            if($request->type == "License")
            {

                if(in_array(null, $request->license) || in_array(null, $request->license_qty))
                {
                    $input['license'] = null;
                    $input['license_qty'] = null;
                }
                else
                {
                    $input['license'] = implode(',,', $request->license);
                    $input['license_qty'] = implode(',', $request->license_qty);
                }

            }

             // Check Features
            if(in_array(null, $request->features) || in_array(null, $request->colors))
            {
                $input['features'] = null;
                $input['colors'] = null;
            }
            else
            {
                $input['features'] = implode(',', str_replace(',',' ',$request->features));
                $input['colors'] = implode(',', str_replace(',',' ',$request->colors));
            }

            //tags
            if (!empty($request->tags))
             {
                $input['tags'] = implode(',', $request->tags);
             }

            // Conert Price According to Currency
             $input['price'] = ($input['price'] / $sign->value);
             $input['previous_price'] = ($input['previous_price'] / $sign->value);
         	 $input['user_id'] = Auth::user()->id;

           // store filtering attributes for physical product
           $attrArr = [];
           if (!empty($request->category_id)) {
             $catAttrs = Attribute::where('attributable_id', $request->category_id)->where('attributable_type', 'App\Models\Category')->get();
             if (!empty($catAttrs)) {
               foreach ($catAttrs as $key => $catAttr) {
                 $in_name = $catAttr->input_name;
                 if ($request->has("$in_name")) {
                   $attrArr["$in_name"]["values"] = $request["$in_name"];
                   $attrArr["$in_name"]["prices"] = $request["$in_name"."_price"];
                   if ($catAttr->details_status) {
                     $attrArr["$in_name"]["details_status"] = 1;
                   } else {
                     $attrArr["$in_name"]["details_status"] = 0;
                   }
                 }
               }
             }
           }

           if (!empty($request->subcategory_id)) {
             $subAttrs = Attribute::where('attributable_id', $request->subcategory_id)->where('attributable_type', 'App\Models\Subcategory')->get();
             if (!empty($subAttrs)) {
               foreach ($subAttrs as $key => $subAttr) {
                 $in_name = $subAttr->input_name;
                 if ($request->has("$in_name")) {
                   $attrArr["$in_name"]["values"] = $request["$in_name"];
                   $attrArr["$in_name"]["prices"] = $request["$in_name"."_price"];
                   if ($subAttr->details_status) {
                     $attrArr["$in_name"]["details_status"] = 1;
                   } else {
                     $attrArr["$in_name"]["details_status"] = 0;
                   }
                 }
               }
             }
           }
           if (!empty($request->childcategory_id)) {
             $childAttrs = Attribute::where('attributable_id', $request->childcategory_id)->where('attributable_type', 'App\Models\Childcategory')->get();
             if (!empty($childAttrs)) {
               foreach ($childAttrs as $key => $childAttr) {
                 $in_name = $childAttr->input_name;
                 if ($request->has("$in_name")) {
                   $attrArr["$in_name"]["values"] = $request["$in_name"];
                   $attrArr["$in_name"]["prices"] = $request["$in_name"."_price"];
                   if ($childAttr->details_status) {
                     $attrArr["$in_name"]["details_status"] = 1;
                   } else {
                     $attrArr["$in_name"]["details_status"] = 0;
                   }
                 }
               }
             }
           }



           if (empty($attrArr)) {
             $input['attributes'] = NULL;
           } else {
             $jsonAttr = json_encode($attrArr);
             $input['attributes'] = $jsonAttr;
           }
           $input['sub_district_id']=$request["subdistrict_id"];
           if(!$request->subdistrict_id&&!$request->division_id&&!$request->subdistrict_id&&!$request->district_id){
            $input['subdistrict_id']=$user->subdistrict_id;
            $input['sub_district_id']=$user->subdistrict_id;
            $input['district_id']=$user->district_id;
            
            $input['division_id']=$user->division_id;
            }
            else{
                $input['area_id']=0;
                if(!$request->division_id){
                    $input['division_id']=District::find($request->district_id)->division_id; 
                }
                
            }
            if(!$request->brand_id){
                $input['brand_id']=0;
            }
            
            // Save Data
                $data->fill($input)->save();

            // Set SLug

                $prod = Product::find($data->id);
                $prod->deal_code="DC".$prod->id.rand(pow(10, 3), pow(10, 4)-1);
                if($prod->type != 'Physical'){
                    $prod->slug = str_slug($data->name,'-').'-'.strtolower(str_random(3).$data->id.str_random(3));
                }
                else {
                    $prod->slug = str_slug($data->name,'-').'-'.strtolower($data->sku);
                }
            // Set Thumbnail
                $img = Image::make(public_path().'/assets/images/products/'.$prod->photo)->resize(285, 285);
                $thumbnail = time().str_random(8).'.jpg';
                $img->save(public_path().'/assets/images/thumbnails/'.$thumbnail);
                $prod->thumbnail  = $thumbnail;
                $prod->status=2;
                $prod->update();

            // Add To Gallery If any
                $lastid = $data->id;
                if ($files = $request->file('gallery')){
                    foreach ($files as  $key => $file){
                        if(in_array($key, $request->galval))
                        {
                    $gallery = new Gallery;
                    $name = time().$file->getClientOriginalName();
                    $img = Image::make($file->getRealPath())->resize(800, 800);
                    $thumbnail = time().str_random(8).'.jpg';
                    $img->save(public_path().'/assets/images/galleries/'.$name);
                    $gallery['photo'] = $name;
                    $gallery['product_id'] = $lastid;
                    $gallery->save();
                        }
                    }
                }
        //logic Section Ends

        //--- Redirect Section
        $msg = 'New Product Added Successfully.<a href="'.route('vendor-prod-index').'">View Product Lists.</a>';
        return response()->json($msg);
        //--- Redirect Section Ends
        }
        else
        {
        //--- Redirect Section
        return response()->json(array('errors' => [ 0 => 'You Can\'t Add More Product.']));

        //--- Redirect Section Ends
        }

    }

    //*** GET Request
    public function edit($id)
    {

        $cats = Category::all();
        $data = Product::findOrFail($id);
        $sign = Currency::where('is_default','=',1)->first();
        $brands = Brand::all();
        $divisions=Division::all();
        $districts=District::orderBy('dis_serial')->limit(5)->get();
        $categories=Category::all();
        if($data->type == 'Digital')
            return view('vendor.product.edit.digital',compact('cats','data','sign'));
        elseif($data->type == 'License')
            return view('vendor.product.edit.license',compact('cats','data','sign'));
        else 
            return view('vendor.product.edit.physical',compact('divisions','districts','categories','brands','cats','data','sign'));
 
    }


    //*** GET Request CATALOG
    public function catalogedit($id)
    {
        $cats = Category::all();
        $data = Product::findOrFail($id);
        $sign = Currency::where('is_default','=',1)->first();


        if($data->type == 'Digital')
            return view('vendor.product.edit.catalog.digital',compact('cats','data','sign'));
        elseif($data->type == 'License')
            return view('vendor.product.edit.catalog.license',compact('cats','data','sign'));
        else
            return view('vendor.product.edit.catalog.physical',compact('cats','data','sign'));
    }

    //*** POST Request
    public function update(Request $request, $id)
    {

        //--- Validation Section
        $rules = [
               'file'       => 'mimes:zip'
                ];
                
        $validator = Validator::make(Input::all(), $rules);
$user=auth()->user();
        if ($validator->fails()) {
          return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

        //-- Logic Section
        $data = Product::findOrFail($id);
        $sign = Currency::where('is_default','=',1)->first();
        $input = $request->all();

            //Check Types
            if($request->type_check == 1)
            {
                $input['link'] = null;
            }
            else
            {
                if($data->file!=null){
                        if (file_exists(public_path().'/assets/files/'.$data->file)) {
                        unlink(public_path().'/assets/files/'.$data->file);
                    }
                }
                $input['file'] = null;
            }


            // Check Physical
            if($data->type == "Physical")
            {

                    //--- Validation Section
                    $rules = ['sku' => 'min:8|unique:products,sku,'.$id];

                    $validator = Validator::make(Input::all(), $rules);

                    if ($validator->fails()) {
                        return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
                    }
                    //--- Validation Section Ends

                        // Check Condition
                        if ($request->product_condition_check == ""){
                            $input['product_condition'] = 0;
                        }

                        // Check Shipping Time
                        if ($request->shipping_time_check == ""){
                            $input['ship'] = null;
                        }

                        // Check Size

                        if(empty($request->size_check ))
                        {
                            $input['size'] = null;
                            $input['size_qty'] = null;
                            $input['size_price'] = null;
                        }
                        else{
                                if(in_array(null, $request->size) || in_array(null, $request->size_qty) || in_array(null, $request->size_price))
                                {
                                    $input['size'] = null;
                                    $input['size_qty'] = null;
                                    $input['size_price'] = null;
                                }
                                else
                                {
                                    $input['size'] = implode(',', $request->size);
                                    $input['size_qty'] = implode(',', $request->size_qty);
                                    $input['size_price'] = implode(',', $request->size_price);
                                }
                        }

                        // Check Whole Sale
            if(empty($request->whole_check ))
            {
                $input['whole_sell_qty'] = null;
                $input['whole_sell_discount'] = null;
            }
            else{
                if(in_array(null, $request->whole_sell_qty) || in_array(null, $request->whole_sell_discount))
                {
                $input['whole_sell_qty'] = null;
                $input['whole_sell_discount'] = null;
                }
                else
                {
                    $input['whole_sell_qty'] = implode(',', $request->whole_sell_qty);
                    $input['whole_sell_discount'] = implode(',', $request->whole_sell_discount);
                }
            }

                        // Check Color
                        if(empty($request->color_check ))
                        {
                            $input['color'] = null;
                        }
                        else{
                            if (!empty($request->color))
                             {
                                $input['color'] = implode(',', $request->color);
                             }
                            if (empty($request->color))
                             {
                                $input['color'] = null;
                             }
                        }

                        // Check Measure
                    if ($request->measure_check == "")
                     {
                        $input['measure'] = null;
                     }
            }


            // Check Seo
        if (empty($request->seo_check))
         {
            $input['meta_tag'] = null;
            $input['meta_description'] = null;
         }
         else {
        if (!empty($request->meta_tag))
         {
            $input['meta_tag'] = implode(',', $request->meta_tag);
         }
         }

        // Check License
        if($data->type == "License")
        {

        if(!in_array(null, $request->license) && !in_array(null, $request->license_qty))
        {
            $input['license'] = implode(',,', $request->license);
            $input['license_qty'] = implode(',', $request->license_qty);
        }
        else
        {
            if(in_array(null, $request->license) || in_array(null, $request->license_qty))
            {
                $input['license'] = null;
                $input['license_qty'] = null;
            }
            else
            {
                $license = explode(',,', $prod->license);
                $license_qty = explode(',', $prod->license_qty);
                $input['license'] = implode(',,', $license);
                $input['license_qty'] = implode(',', $license_qty);
            }
        }

        }
            // Check Features
            if(!in_array(null, $request->features) && !in_array(null, $request->colors))
            {
                    $input['features'] = implode(',', str_replace(',',' ',$request->features));
                    $input['colors'] = implode(',', str_replace(',',' ',$request->colors));
            }
            else
            {
                if(in_array(null, $request->features) || in_array(null, $request->colors))
                {
                    $input['features'] = null;
                    $input['colors'] = null;
                }
                else
                {
                    $features = explode(',', $data->features);
                    $colors = explode(',', $data->colors);
                    $input['features'] = implode(',', $features);
                    $input['colors'] = implode(',', $colors);
                }
            }

        //Product Tags
        if (!empty($request->tags))
         {
            $input['tags'] = implode(',', $request->tags);
         }
        if (empty($request->tags))
         {
            $input['tags'] = null;
         }

         $input['price'] = $input['price'] / $sign->value;
         $input['previous_price'] = $input['previous_price'] / $sign->value;

         // store filtering attributes for physical product
         $attrArr = [];
         if (!empty($request->category_id)) {
           $catAttrs = Attribute::where('attributable_id', $request->category_id)->where('attributable_type', 'App\Models\Category')->get();
           if (!empty($catAttrs)) {
             foreach ($catAttrs as $key => $catAttr) {
               $in_name = $catAttr->input_name;
               if ($request->has("$in_name")) {
                 $attrArr["$in_name"]["values"] = $request["$in_name"];
                 $attrArr["$in_name"]["prices"] = $request["$in_name"."_price"];
                 if ($catAttr->details_status) {
                   $attrArr["$in_name"]["details_status"] = 1;
                 } else {
                   $attrArr["$in_name"]["details_status"] = 0;
                 }
               }
             }
           }
         }

         if (!empty($request->subcategory_id)) {
           $subAttrs = Attribute::where('attributable_id', $request->subcategory_id)->where('attributable_type', 'App\Models\Subcategory')->get();
           if (!empty($subAttrs)) {
             foreach ($subAttrs as $key => $subAttr) {
               $in_name = $subAttr->input_name;
               if ($request->has("$in_name")) {
                 $attrArr["$in_name"]["values"] = $request["$in_name"];
                 $attrArr["$in_name"]["prices"] = $request["$in_name"."_price"];
                 if ($subAttr->details_status) {
                   $attrArr["$in_name"]["details_status"] = 1;
                 } else {
                   $attrArr["$in_name"]["details_status"] = 0;
                 }
               }
             }
           }
         }
         if (!empty($request->childcategory_id)) {
           $childAttrs = Attribute::where('attributable_id', $request->childcategory_id)->where('attributable_type', 'App\Models\Childcategory')->get();
           if (!empty($childAttrs)) {
             foreach ($childAttrs as $key => $childAttr) {
               $in_name = $childAttr->input_name;
               if ($request->has("$in_name")) {
                 $attrArr["$in_name"]["values"] = $request["$in_name"];
                 $attrArr["$in_name"]["prices"] = $request["$in_name"."_price"];
                 if ($childAttr->details_status) {
                   $attrArr["$in_name"]["details_status"] = 1;
                 } else {
                   $attrArr["$in_name"]["details_status"] = 0;
                 }
               }
             }
           }
         }



         if (empty($attrArr)) {
           $input['attributes'] = NULL;
         } else {
           $jsonAttr = json_encode($attrArr);
           $input['attributes'] = $jsonAttr;
         }

            if($data->type != 'Physical'){
                $data->slug = str_slug($data->name,'-').'-'.strtolower(str_random(3).$data->id.str_random(3));
            }
            else {
                $data->slug = str_slug($data->name,'-').'-'.strtolower($data->sku);
            }
            $input['sub_district_id']=$request["subdistrict_id"];
            if(!$request->subdistrict_id&&!$request->division_id&&!$request->subdistrict_id&&!$request->district_id){
                $input['subdistrict_id']=$user->subdistrict_id;
                $input['sub_district_id']=$user->subdistrict_id;
                $input['district_id']=$user->district_id;
                
                $input['division_id']=$user->division_id;
                }
                else{
                    $input['area_id']=0;
                    
                    if(!$request->division_id){
                        $input['division_id']=District::find($request->district_id)->division_id; 
                    }
                }
                if(!$request->brand_id){
                    $input['brand_id']=0;
                }
                
            if ($file = $request->file('pht')) 
            {              
                $name = time().str_random(8).$file->getClientOriginalName();
                $file->move('assets/images/thumbnails/',$name);
                           
            $input['thumbnail'] = $name;
            
            } 
         $data->update($input); 
        //-- Logic Section Ends

        //--- Redirect Section
        $msg = 'Product Updated Successfully.<a href="'.route('vendor-prod-index').'">View Product Lists.</a>';
        return response()->json($msg);
        //--- Redirect Section Ends
    }

    //*** POST Request CATALOG
    public function catalogupdate(Request $request, $id)
    {

        $user = Auth::user();
        $package = $user->subscribes()->orderBy('id','desc')->first();
        $prods = $user->products()->orderBy('id','desc')->get()->count();
        if(Generalsetting::find(1)->verify_product == 1)
        {
            if(!$user->checkStatus())
            {
                return response()->json(array('errors' => [ 0 => 'You must complete your verfication first.']));
            }
        }
        if($prods < $package->allowed_products || $package->allowed_products == 0)
        {

        //--- Validation Section
        $rules = [
               'file'       => 'mimes:zip'
                ];

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
          return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

        //--- Logic Section
            $data = new Product;
            $sign = Currency::where('is_default','=',1)->first();
            $input = $request->all();
            // Check File
            if ($file = $request->file('file'))
            {
                $name = time().$file->getClientOriginalName();
                $file->move('assets/files',$name);
                $input['file'] = $name;
            }

            $image = $request->photo;
            if($request->is_photo == '1')
            {
            list($type, $image) = explode(';', $image);
            list(, $image)      = explode(',', $image);
            $image = base64_decode($image);
            $image_name = time().str_random(8).'.png';
            $path = 'assets/images/products/'.$image_name;
            file_put_contents($path, $image);

            }
            else {
             $image_name = $request->photo;
            }

            $input['photo'] = $image_name;

            // Check Physical
            if($request->type == "Physical")
            {

                    //--- Validation Section
                    $rules = ['sku'      => 'min:8|unique:products'];

                    $validator = Validator::make(Input::all(), $rules);

                    if ($validator->fails()) {
                        return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
                    }
                    //--- Validation Section Ends


            // Check Condition
            if ($request->product_condition_check == ""){
                $input['product_condition'] = 0;
            }

            // Check Shipping Time
            if ($request->shipping_time_check == ""){
                $input['ship'] = null;
            }

            // Check Size
            if(empty($request->size_check ))
            {
                $input['size'] = null;
                $input['size_qty'] = null;
                $input['size_price'] = null;
            }
            else{
                    if(in_array(null, $request->size) || in_array(null, $request->size_qty))
                    {
                        $input['size'] = null;
                        $input['size_qty'] = null;
                        $input['size_price'] = null;
                    }
                    else
                    {
                        $input['size'] = implode(',', $request->size);
                        $input['size_qty'] = implode(',', $request->size_qty);
                        $input['size_price'] = implode(',', $request->size_price);
                    }
            }

            // Check Whole Sale
            if(empty($request->whole_check ))
            {
                $input['whole_sell_qty'] = null;
                $input['whole_sell_discount'] = null;
            }
            else{
                if(in_array(null, $request->whole_sell_qty) || in_array(null, $request->whole_sell_discount))
                {
                $input['whole_sell_qty'] = null;
                $input['whole_sell_discount'] = null;
                }
                else
                {
                    $input['whole_sell_qty'] = implode(',', $request->whole_sell_qty);
                    $input['whole_sell_discount'] = implode(',', $request->whole_sell_discount);
                }
            }


            // Check Color
            if(empty($request->color_check))
            {
                $input['color'] = null;
            }
            else{
                $input['color'] = implode(',', $request->color);
            }

            // Check Measurement
            if ($request->mesasure_check == "")
             {
                $input['measure'] = null;
             }

            }

            // Check Seo
        if (empty($request->seo_check))
         {
            $input['meta_tag'] = null;
            $input['meta_description'] = null;
         }
         else {
        if (!empty($request->meta_tag))
         {
            $input['meta_tag'] = implode(',', $request->meta_tag);
         }
         }

             // Check License

            if($request->type == "License")
            {

                if(in_array(null, $request->license) || in_array(null, $request->license_qty))
                {
                    $input['license'] = null;
                    $input['license_qty'] = null;
                }
                else
                {
                    $input['license'] = implode(',,', $request->license);
                    $input['license_qty'] = implode(',', $request->license_qty);
                }

            }

             // Check Features
            if(in_array(null, $request->features) || in_array(null, $request->colors))
            {
                $input['features'] = null;
                $input['colors'] = null;
            }
            else
            {
                $input['features'] = implode(',', str_replace(',',' ',$request->features));
                $input['colors'] = implode(',', str_replace(',',' ',$request->colors));
            }

            //tags
            if (!empty($request->tags))
             {
                $input['tags'] = implode(',', $request->tags);
             }

            // Conert Price According to Currency
             $input['price'] = ($input['price'] / $sign->value);
             $input['previous_price'] = ($input['previous_price'] / $sign->value);
             $input['user_id'] = Auth::user()->id;

             // store filtering attributes for physical product
             $attrArr = [];
             if (!empty($request->category_id)) {
               $catAttrs = Attribute::where('attributable_id', $request->category_id)->where('attributable_type', 'App\Models\Category')->get();
               if (!empty($catAttrs)) {
                 foreach ($catAttrs as $key => $catAttr) {
                   $in_name = $catAttr->input_name;
                   if ($request->has("$in_name")) {
                     $attrArr["$in_name"]["values"] = $request["$in_name"];
                     $attrArr["$in_name"]["prices"] = $request["$in_name"."_price"];
                     if ($catAttr->details_status) {
                       $attrArr["$in_name"]["details_status"] = 1;
                     } else {
                       $attrArr["$in_name"]["details_status"] = 0;
                     }
                   }
                 }
               }
             }

             if (!empty($request->subcategory_id)) {
               $subAttrs = Attribute::where('attributable_id', $request->subcategory_id)->where('attributable_type', 'App\Models\Subcategory')->get();
               if (!empty($subAttrs)) {
                 foreach ($subAttrs as $key => $subAttr) {
                   $in_name = $subAttr->input_name;
                   if ($request->has("$in_name")) {
                     $attrArr["$in_name"]["values"] = $request["$in_name"];
                     $attrArr["$in_name"]["prices"] = $request["$in_name"."_price"];
                     if ($subAttr->details_status) {
                       $attrArr["$in_name"]["details_status"] = 1;
                     } else {
                       $attrArr["$in_name"]["details_status"] = 0;
                     }
                   }
                 }
               }
             }
             if (!empty($request->childcategory_id)) {
               $childAttrs = Attribute::where('attributable_id', $request->childcategory_id)->where('attributable_type', 'App\Models\Childcategory')->get();
               if (!empty($childAttrs)) {
                 foreach ($childAttrs as $key => $childAttr) {
                   $in_name = $childAttr->input_name;
                   if ($request->has("$in_name")) {
                     $attrArr["$in_name"]["values"] = $request["$in_name"];
                     $attrArr["$in_name"]["prices"] = $request["$in_name"."_price"];
                     if ($childAttr->details_status) {
                       $attrArr["$in_name"]["details_status"] = 1;
                     } else {
                       $attrArr["$in_name"]["details_status"] = 0;
                     }
                   }
                 }
               }
             }



             if (empty($attrArr)) {
               $input['attributes'] = NULL;
             } else {
               $jsonAttr = json_encode($attrArr);
               $input['attributes'] = $jsonAttr;
             }

            // Save Data
                $data->fill($input)->save();

            // Set SLug

                $prod = Product::find($data->id);
                if($prod->type != 'Physical'){
                    $prod->slug = str_slug($data->name,'-').'-'.strtolower(str_random(3).$data->id.str_random(3));
                }
                else {
                    $prod->slug = str_slug($data->name,'-').'-'.strtolower($data->sku);
                }
                $photo = $prod->photo;
                if($request->is_photo == '0')
                {
                // Set Photo
                $newimg = Image::make(public_path().'/assets/images/products/'.$prod->photo)->resize(800, 800);
                $photo = time().str_random(8).'.jpg';
                $newimg->save(public_path().'/assets/images/products/'.$photo);
                }



            // Set Thumbnail
                $img = Image::make(public_path().'/assets/images/products/'.$prod->photo)->resize(285, 285);
                $thumbnail = time().str_random(8).'.jpg';
                $img->save(public_path().'/assets/images/thumbnails/'.$thumbnail);
                $prod->thumbnail  = $thumbnail;
                $prod->photo  = $photo;
                $prod->update();

            // Add To Gallery If any
                $lastid = $data->id;
                if ($files = $request->file('gallery')){
                    foreach ($files as  $key => $file){
                        if(in_array($key, $request->galval))
                        {
                    $gallery = new Gallery;
                    $name = time().$file->getClientOriginalName();
                    $img = Image::make($file->getRealPath())->resize(800, 800);
                    $thumbnail = time().str_random(8).'.jpg';
                    $img->save(public_path().'/assets/images/galleries/'.$name);
                    $gallery['photo'] = $name;
                    $gallery['product_id'] = $lastid;
                    $gallery->save();
                        }
                    }
                }
        //logic Section Ends

        //--- Redirect Section
        $msg = 'New Product Added Successfully.<a href="'.route('vendor-prod-index').'">View Product Lists.</a>';
        return response()->json($msg);
        //--- Redirect Section Ends
        }
        else
        {
          //--- Redirect Section
          return response()->json(array('errors' => [ 0 => 'You Can\'t Add More Product.']));

          //--- Redirect Section Ends
        }
    }


    //*** GET Request
    public function destroy($id)
    {

        $data = Product::findOrFail($id);
        if($data->galleries->count() > 0)
        {
            foreach ($data->galleries as $gal) {
                    if (file_exists(public_path().'/assets/images/galleries/'.$gal->photo)) {
                        unlink(public_path().'/assets/images/galleries/'.$gal->photo);
                    }
                $gal->delete();
            }

        }

        if($data->ratings->count() > 0)
        {
            foreach ($data->ratings  as $gal) {
                $gal->delete();
            }
        }
        if($data->wishlists->count() > 0)
        {
            foreach ($data->wishlists as $gal) {
                $gal->delete();
            }
        }
        if($data->clicks->count() > 0)
        {
            foreach ($data->clicks as $gal) {
                $gal->delete();
            }
        }
        if($data->comments->count() > 0)
        {
            foreach ($data->comments as $gal) {
            if($gal->replies->count() > 0)
            {
                foreach ($gal->replies as $key) {
                    $key->delete();
                }
            }
                $gal->delete();
            }
        }

        if (!filter_var($data->photo,FILTER_VALIDATE_URL)){
            if (file_exists(public_path().'/assets/images/products/'.$data->photo)) {
                unlink(public_path().'/assets/images/products/'.$data->photo);
            }
        }

        if (file_exists(public_path().'/assets/images/thumbnails/'.$data->thumbnail) && $data->thumbnail != "") {
            unlink(public_path().'/assets/images/thumbnails/'.$data->thumbnail);
        }
        if($data->file != null){
            if (file_exists(public_path().'/assets/files/'.$data->file)) {
                unlink(public_path().'/assets/files/'.$data->file);
            }
        }
        $data->delete();
        //--- Redirect Section
        $msg = 'Product Deleted Successfully.';
        return response()->json($msg);
        //--- Redirect Section Ends

// PRODUCT DELETE ENDS
    }

    public function getAttributes(Request $request) {
      $model = '';
      if ($request->type == 'category') {
        $model = 'App\Models\Category';
      } elseif ($request->type == 'subcategory') {
        $model = 'App\Models\Subcategory';
      } elseif ($request->type == 'childcategory') {
        $model = 'App\Models\Childcategory';
      }

      $attributes = Attribute::where('attributable_id', $request->id)->where('attributable_type', $model)->get();
      $attrOptions = [];
      foreach ($attributes as $key => $attribute) {
        $options = AttributeOption::where('attribute_id', $attribute->id)->get();
        $attrOptions[] = ['attribute' => $attribute, 'options' => $options];
      }
      return response()->json($attrOptions);
    }
}
