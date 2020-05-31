@extends('layouts.front')
@section('styles')

<style>
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #3e8e41;
}
 
#myInput {
  box-sizing: border-box;
  background-image: url('../assets/images/searchicon.png');
  background-position: 14px 9px;
  background-repeat: no-repeat;
  font-size: 16px;
  padding: 8px 20px 8px 45px;
  border: 1px solid #ddd;
  border-radius:4px;
}
#all_sub_category i{
     padding-left: 2px;
    padding-right: 2px;
    padding-top: 6px;
    padding-bottom: 5px;
    margin-top: -2px;
}

.all_sub_category_btn{
    border: 1px solid #ddd;
    margin-top: -2px;
    margin-left: -5px;
    padding: 0.26rem .7rem;
}
#myInput:focus {outline: 0;
box-shadow: 0 0 0 .2rem rgba(0,123,255,.25);}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  min-width: 100%;
  overflow: auto;
  border: 1px solid #ddd;
  z-index: 1;

}

.dropdown-content a {
  color: black;
  padding: 9px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {    background: rgba(0,152,119,.05);
    color: #149777!important;}

.show {display: block;}
	.sub-cate-item{
    top: 0%; 
    position: absolute;
    left: 100%;  
    width: 90%; 
    margin-left: 5px;
    display: none;
}
.close span {
    font-size: 27px!important;
}

.model-item li {
    border-top: 1px solid rgba(0, 0, 0, .125);
    padding: .7rem 0 .7rem .80rem;
}
.model-item li li {
    border-top: 1px solid rgba(0, 0, 0, .125);
    padding: .82rem .5rem; 
}
.model-item li:last-child {
    border-bottom: 1px solid rgba(0, 0, 0, .125);
}
.model-item li:first-child {
    border-top: none;
}
.model-item1 li:first-child {
    border-top: 1px solid rgba(0, 0, 0, .125);
}
.model-item ul {
    margin-top: 0;
    margin-bottom: 10px;
	padding: 0;
    list-style: none;
}
.model-item li a {
    color: #0074ba;
}
.model-item li ul li a {
    color: #0074ba!important;
}
</style>
@endsection
@section('content')
 
<section class="user-dashbord">
    <div class="container">
        <div class="row">
            @include('includes.user-dashboard-sidebar')
            <div class="col-lg-8">
                <div class="user-profile-details">

                    <div class="account-info">
                        <div class="header-area">
                            <h4 class="title">
                                {{ $langg->lang409 }} <a class="mybtn1" href="{{route('user-package')}}"> <i
                                        class="fas fa-arrow-left"></i> {{ $langg->lang410 }}</a>
                            </h4>
                        </div>
                        <div class="pack-details">
                            <div class="row">

                                <div class="col-lg-4">
                                    <h5 class="title">
                                        {{ $langg->lang411 }}
                                    </h5>
                                </div>
                                <div class="col-lg-8">
                                    <p class="value">
                                        {{$subs->title}}
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4">
                                    <h5 class="title">
                                        {{ $langg->lang412 }}
                                    </h5>
                                </div>
                                <div class="col-lg-8">
                                    <p class="value">
                                        {{$subs->price}}{{$subs->currency}}
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4">
                                    <h5 class="title">
                                        {{ $langg->lang413 }}
                                    </h5>
                                </div>
                                <div class="col-lg-8">
                                    <p class="value">
                                        {{$subs->days}} {{ $langg->lang403 }}
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4">
                                    <h5 class="title">
                                        {{ $langg->lang414 }}
                                    </h5>
                                </div>
                                <div class="col-lg-8">
                                    <p class="value">
                                        {{ $subs->allowed_products == 0 ? 'Unlimited':  $subs->allowed_products}}
                                    </p>
                                </div>
                            </div>

                            @if(!empty($package))
                            @if($package->subscription_id != $subs->id)
                            <div class="row">
                                <div class="col-lg-4">
                                </div>
                                <div class="col-lg-8">
                                    <span class="notic"><b>{{ $langg->lang415 }}</b> {{ $langg->lang416 }}</span>
                                </div>
                            </div>

                            <br>
                            @else
                            <br>

                            @endif
                            @else
                            <br>
                            @endif

                            <form id="subscribe-form" class="pay-form" action="{{route('user-vendor-request-submit')}}"
                                method="POST">

                                @include('includes.form-success')
                                @include('includes.form-error')
                                @include('includes.admin.form-error')
 
                                {{ csrf_field() }}
												<input id="subdistrict_id" name="subdistrict_id" type="hidden">
                                                <input id="district_id" name="district_id" type="hidden">
                                                <input id="division_id" name="division_id" type="hidden">

<div class="modal fade" id="my-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content" style="overflow: scroll;height:90vh">

            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                <div class="row">
                    <div class="col-md-6">
                        <h6 class="mb-3">শহর বা বিভাগ নির্বাচন করুন</h6>
                        <a href="" style="color: #0074ba;">বাংলাদেশ-এর সবগুলো</a>
                        <h6 class="text-muted" style="margin-top: 19px;border-top: 1px solid rgba(0, 0, 0, .125);; padding-top: 10px;">শহর</h6>
                    </div>
                    <div class="col-md-6">
                        
                        <h6 class="mt-3 text-muted">জনপ্রিয় এলাকাসমূহ</h6>
                        
                    </div>

					
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="categories-list model-item main-cate-item ">
                            <ul>
                                @foreach($districts as $district)

                                    <li class="brn">
                                    <a onclick="showItem('sub-dis',{{$district->id}},'.dis','district_id',{{$district->id}},['division_id','subdistrict_id'],'area_name','{{$district->name}}')" href="#" class="clearfix">
                                        <span class="dnn float-left">{{$district->name}}</span><span class="dnn float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                    <div id="sub-dis{{$district->id}}" class="lft sub-dis categories-list sub-cate-item" >
                                        <button class="d-sm-none btn-back" onclick="dModal()"><i class="fas fa-chevron-left"></i>Back</button>
                                        <ul class="sub-menu1 text-muted">

                                         <li><a onclick="closeModal()" class="text-muted" href="javascript:void(0)">{{$district->name}} এর সবগুলো</a></li>
                                         @php($i=1)
                                            @foreach($district->subdistricts as $subdistrict)
                                                @if($i<6)
                                                <li><a class="text-muted" href="javascript:void(0)" onclick="showItem('sub-dis','','.dis','subdistrict_id',{{$subdistrict->id}},[],'area_name','{{$subdistrict->name}}','#my-modal')">{{$subdistrict->name}}</a></li>
                                                @elseif($i==6)
                                                    <div class="dropdown mt-4" id="all_sub_category">
  
    <input onclick="myFunction()" type="text" placeholder="অন্যান্য এলাকা (A-Z)" id="myInput" onkeyup="filterFunction()" >
    <button class="btn all_sub_category_btn" onclick="myFunction()"><i class="dist fas  fa-angle-down">
    </i></button>
  <div id="myDropdown" class="dropdown-content ">
                                                    <a class="text-muted" href="javascript:void(0)" onclick="showItem('sub-dis','','.dis','subdistrict_id',{{$subdistrict->id}},[],'area_name','{{$subdistrict->name}}','#my-modal')">{{$subdistrict->name}}</a>
                                                
                                                @else
                                                    <a class="text-muted" href="javascript:void(0)" onclick="showItem('sub-dis','','.dis','subdistrict_id',{{$subdistrict->id}},[],'area_name','{{$subdistrict->name}}','#my-modal')">{{$subdistrict->name}}</a>
                                                @endif
                                                @if($i>=6&&$i==$district->subdistricts->count())
                                                   
                                                    </div>
                                                    </div>
                                                    @endif
                                                   @php($i++) 
                                            @endforeach
                                            
                                        </ul>
                                    </div>

                                </li>
                                @endforeach
                              
                            </ul>
                        </div>
                        <input type="hidden" id="area_key" >
                        <input type="hidden" id="area_value" >
                        <div class="dnn btn text-muted mt-3">বিভাগ</div>
                        <div class=" categories-list model-item categories-list-division">
                            <ul>
                            
                               @foreach($divisions as $division)
                                <li class="brn">
                                    <a
									 onclick="showItem('dis',{{$division->id}},'.sub-dis','division_id',{{$division->id}},['district_id','subdistrict_id'],'area_name','{{$division->name}}')"
									
									 href="#" class="clearfix">
                                        <span class="dnn float-left">{{$division->name}}</span><span class="dnn float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                        <div id="dis{{$division->id}}" class="lft dis categories-list sub-cate-item sub-cate-item-division" style="">
                                        <button class="d-sm-none btn-back" onclick="dModal()"><i class="fas fa-chevron-left"></i>Back</button>

                                        <ul class="sub-menu1 text-muted">
                                         <li><a onclick="closeModal()" class="text-muted" href="#">{{$division->name}} বিভাগ এর সবগুলো</a></li>
                                         @php($i=1)
                                            @foreach($division->districts as $district)
                                                @if($i<6)

                                                <li><a class="text-muted" href="#"
												onclick="showItem('','','','district_id',{{$district->id}},[],'area_name','{{$district->name}}','#my-modal')"
												>{{$district->name}}</a></li>
@elseif($i==6)
                                                    <div class="dropdown mt-4" id="all_sub_category">
  
    <input onclick="myFunctionDiv()" type="text" placeholder="অন্যান্য এলাকা (A-Z)" id="myInput" onkeyup="filterFunctionDiv()" >
    <button class="btn all_sub_category_btn" onclick="myFunctionDiv()"><i class="div fas fa-angle-down ">
    </i></button>
  <div id="myDropdownDiv" class="dropdown-content ">
                                                    <a class="text-muted" href="#"
												onclick="showItem('','','','district_id',{{$district->id}},[],'area_name','{{$district->name}}','#my-modal')"
												>{{$district->name}}</a>
                                                
                                                @else
                                                    <a class="text-muted" href="#"
												onclick="showItem('','','','district_id',{{$district->id}},[],'area_name','{{$district->name}}','#my-modal')"
												>{{$district->name}}</a>
                                                @endif
                                                @if($i>=6&&$i==$district->subdistricts->count())
                                                   
                                                    </div>
                                                    </div>
                                                    @endif
                                                   @php($i++) 

                                            @endforeach
                                            
                                        </ul>
                                    </div>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>
                    
                    <script>
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
  if($(".dist.fa-angle-up").length>0)
  {
    $(".dist.fa-angle-up").attr("class","dist fas fa-angle-down")
  }
  else{
    $(".fa-angle-down.dist").attr("class","dist fas fa-angle-up")
  }
}

function filterFunction() {
  if(document.getElementById("myDropdown").classList.length==1){
    document.getElementById("myDropdown").classList.add("show")
  }
  var input, filter, ul, li, a, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  div = document.getElementById("myDropdown");
  a = div.getElementsByTagName("a");
  for (i = 0; i < a.length; i++) {
    txtValue = a[i].textContent || a[i].innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = "";
    } else {
      a[i].style.display = "none";
    }
  }
}
function myFunctionDiv() {
  document.getElementById("myDropdownDiv").classList.toggle("show");
  if($(".fa-angle-up.div").length>0)
  {
    $(".fa-angle-up.div").attr("class","fas div fa-angle-down")
  }
  else{
    $(".fa-angle-down.div").attr("class","fas div fa-angle-up")
  }
}
function filterFunctionDiv() {
  if(document.getElementById("myDropdownDiv").classList.length==1){
    document.getElementById("myDropdownDiv").classList.add("show")
  }
  var input, filter, ul, li, a, i;
  input = document.getElementById("myInputDiv");
  filter = input.value.toUpperCase();
  div = document.getElementById("myDropdownDiv");
  a = div.getElementsByTagName("a");
  for (i = 0; i < a.length; i++) {
    txtValue = a[i].textContent || a[i].innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = "";
    } else {
      a[i].style.display = "none";
    }
  }
}

dModal=()=>{
  if(screen.width<576){
        
        $(".dnn").css("display","inline-block");
        $(".lft").css("left","100%");

         $(".brn").css("border-top","1px solid rgba(0, 0, 0, .125)");
        $(".brn:first-child").css("border","none");
        

      }
}
	showItem=(cls,id,cls2,sid,svalue,r,hid,hval,cm=null)=>{
if(cm){

		$(cm).modal('toggle');
		}
		toastr.success(hval+" selected");
		document.getElementById(hid).innerHTML=hval;
		console.log(r)
		r.forEach(ri=>{
			document.getElementById(ri).value="";
		})
		document.getElementById(sid).value=svalue;
		$(cls2).hide();
		id="#"+cls+id;
		cls="."+cls;
		$(cls).hide();
		$(id).show();

        if(screen.width<576){
        $(".brn").css("border","none");
        $(".dnn").css("display","none");
        $(".lft").css("left","18px");

      }
	}
</script>
                                @if($user->is_vendor == 0)
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title pt-1">
                                            Area
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                       <div onclick="dModal()" data-target="#my-modal"  data-toggle="modal">
                                            <span id="area_name">Choose Area*</span>
                                    
                                        </div>
                                    </div>
                                </div>
                            
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title pt-1">
                                            {{ $langg->lang238 }} 
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="text" id="shop-name" class="option" name="shop_name"
                                            placeholder="{{ $langg->lang238 }}" required>
                                    </div>
                                </div>

                                <br>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title pt-1">
                                            {{ $langg->lang239 }} *
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                        <input value="{{$user->name}}" type="text" class="option" name="owner_name"
                                            placeholder="{{ $langg->lang239 }}" required>
                                    </div>
                                </div>

                                <br>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title pt-1">
                                            {{ $langg->lang240 }} *
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="text" class="option" name="shop_number"
                                            placeholder="{{ $langg->lang240 }}" required>
                                    </div>
                                </div>

                                <br>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title pt-1">
                                            {{ $langg->lang241 }} *
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                        <input value="{{$user->address}}" type="text" class="option" name="shop_address"
                                            placeholder="{{ $langg->lang241 }}" required>
                                    </div>
                                </div>

                                <br>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title pt-1">
                                            {{ $langg->lang242 }} <small>{{ $langg->lang417 }}</small>
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="text" class="option" name="reg_number"
                                            placeholder="{{ $langg->lang242 }}">
                                    </div>
                                </div>

                                <br>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title pt-1">
                                            {{ $langg->lang243 }} <small>{{ $langg->lang417 }}</small>
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                        <textarea class="option" name="shop_message" placeholder="{{ $langg->lang243 }}"
                                            rows="5"></textarea>
                                    </div>
                                </div>

                                <br>


                                @endif
                                <input type="hidden" name="subs_id" value="{{ $subs->id }}">

                                @if($subs->price != 0)

                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title pt-1">
                                            {{ $langg->lang418 }} *
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">

                                        <select name="method" id="option" onchange="getAdditional(this.value)"  class="option"
                                            required="">
                                        <option value="">Select Payment Method</option>
                                                <option value="0">From Balance</option>
                                            @foreach($gateways as $gateway)
                                                <option value="{{$gateway->id}}">{{$gateway->title}}</option>
                                            @endforeach 
                                        </select>
                                 <div id="ad-field">

                                    </div>
                                    </div>
                                   
                                </div>
                            
                            <script>
                                getAdditional = (id) => {
                                    if(id==0){
                                        document.getElementById("ad-field").innerHTML="";
                                    }
                                    var xhttp = new XMLHttpRequest();
                                    xhttp.onreadystatechange = function() {
                                        if (this.readyState == 4 && this.status == 200) {
                                            document.getElementById("ad-field").innerHTML = this.responseText;
                                        }
                                    };
                                    xhttp.open("GET", "{{URL::to('/checkout/subs/')}}/{{$subs->price}}/"+id, true);
                                    xhttp.send();
                                }
                            </script>

                                <div id="stripes" style="display: none;">

                                    <br>



                                    <div class="row">
                                        <div class="col-lg-4">
                                            <h5 class="title pt-1">
                                                {{ $langg->lang422 }} *
                                            </h5>
                                        </div>
                                        <div class="col-lg-8">
                                            <input type="text" class="option" name="card" id="scard"
                                                placeholder="{{ $langg->lang422 }}">
                                        </div>
                                    </div>

                                    <br>


                                    <div class="row">
                                        <div class="col-lg-4">
                                            <h5 class="title pt-1">
                                                {{ $langg->lang423 }} *
                                            </h5>
                                        </div>
                                        <div class="col-lg-8">
                                            <input type="text" class="option" name="cvv" id="scvv"
                                                placeholder="{{ $langg->lang423 }}">
                                        </div>
                                    </div>

                                    <br>


                                    <div class="row">
                                        <div class="col-lg-4">
                                            <h5 class="title pt-1">
                                                {{ $langg->lang424 }} *
                                            </h5>
                                        </div>
                                        <div class="col-lg-8">
                                            <input type="text" class="option" name="month" id="smonth"
                                                placeholder="{{ $langg->lang424 }}">
                                        </div>
                                    </div>


                                    <br>

                                    <div class="row">
                                        <div class="col-lg-4">
                                            <h5 class="title pt-1">
                                                {{ $langg->lang425 }} *
                                            </h5>
                                        </div>
                                        <div class="col-lg-8">
                                            <input type="text" class="option" name="year" id="syear"
                                                placeholder="{{ $langg->lang425 }}">
                                        </div>
                                    </div>

                                </div>
                                <div id="paypals">
                                    <input type="hidden" name="cmd" value="_xclick">
                                    <input type="hidden" name="no_note" value="1">
                                    <input type="hidden" name="lc" value="UK">
                                    <input type="hidden" name="currency_code"
                                        value="{{strtoupper($subs->currency_code)}}">
                                    <input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynow_LG.gif:NonHostedGuest">
                                    <input type="hidden" name="ref_id" id="ref_id" value="">
                                    <input type="hidden" name="sub" id="sub" value="0">
                                    <input type="hidden" name="ck" id="ck" value="0">
                                </div>

                                @endif
                                <div class="row">
                                    <div class="col-lg-4">
                                    </div>
                                    <div class="col-lg-8">
                                        <button type="submit" id="final-btn"
                                            class="mybtn1">{{ $langg->lang426 }}</button>
                                    </div>
                                </div>




                            </form>



                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection



@section('scripts')

<script src="https://js.paystack.co/v1/inline.js"></script>

<script type="text/javascript">

    $(document).on('submit', '#paystack-form', function (e) {
        var val = $('#sub').val();
        if (val == 0) {
            $.get('{{ route('user.paystack.check').' ? shop_name = ' }}' + $('#shop-name').val(), function (data, status) {


                if ((data.errors)) {

                    $('.alert-danger').show();
                    $('.alert-danger ul').html('');
                    for (var error in data.errors) {
                        $('.alert-danger ul').append('<li>' + data.errors[error] + '</li>');
                        $('#sub').val('0');
                        $('#ck').val('1');
                    }

                }
                else {
                    $('#ck').val('0');
                }



            });

            setTimeout(function () {

                if ($('#ck').val() == '0') {

                    $('#preloader').hide();

                    var total = {{ $subs-> price}}
                }
            };

            var handler = PaystackPop.setup({
                key: '{{$gs->paystack_key}}',
                email: '{{$user->email}}',
                amount: total * 100,
                currency: "{{strtoupper($subs->currency_code)}}",
                ref: '' + Math.floor((Math.random() * 1000000000) + 1),
                callback: function (response) {
                    $('#ref_id').val(response.reference);
                    $('#sub').val('1');
                    $('#final-btn').click();
                },
                onClose: function () {
                }
            });
            handler.openIframe();
            return false;



        }



    }, 1000);




    return false;

                }


                            else {
        $('#preloader').show();
        return true;
    }


        });

</script>


@if($subs->price != 0)
<script type="text/javascript">
    function meThods(val) {
        var action1 = "{{route('user.paypal.submit')}}";
        var action2 = "{{route('user.stripe.submit')}}";
        var action3 = "{{route('user.instamojo.submit')}}";
        var action4 = "{{route('user.paystack.submit')}}";
        var action5 = "{{route('user.molly.submit')}}";
        var action6 = "{{route('user.paytm.submit')}}";
        var action7 = "{{route('user.razorpay.submit')}}";

        if (val.value == "Paypal") {
            $('.pay-form').attr('id', 'subscribe-form');
            $(".pay-form").attr("action", action1);
            $("#scard").prop("required", false);
            $("#scvv").prop("required", false);
            $("#smonth").prop("required", false);
            $("#syear").prop("required", false);
            $("#stripes").hide();

        }
        else if (val.value == "Instamojo") {
            $('.pay-form').attr('id', 'subscribe-form');
            $(".pay-form").attr("action", action3);
            $("#scard").prop("required", false);
            $("#scvv").prop("required", false);
            $("#smonth").prop("required", false);
            $("#syear").prop("required", false);
            $("#stripes").hide();
        }

        else if (val.value == "Molly") {
            $('.pay-form').attr('id', 'subscribe-form');
            $(".pay-form").attr("action", action5);
            $("#scard").prop("required", false);
            $("#scvv").prop("required", false);
            $("#smonth").prop("required", false);
            $("#syear").prop("required", false);
            $("#stripes").hide();
        }

        else if (val.value == "Paytm") {
            $('.pay-form').attr('id', 'subscribe-form');
            $(".pay-form").attr("action", action6);
            $("#scard").prop("required", false);
            $("#scvv").prop("required", false);
            $("#smonth").prop("required", false);
            $("#syear").prop("required", false);
            $("#stripes").hide();
        }

        else if (val.value == "Razorpay") {
            $('.pay-form').attr('id', 'subscribe-form');
            $(".pay-form").attr("action", action7);
            $("#scard").prop("required", false);
            $("#scvv").prop("required", false);
            $("#smonth").prop("required", false);
            $("#syear").prop("required", false);
            $("#stripes").hide();
        }

        else if (val.value == "Paystack") {
            $('.pay-form').attr('id', 'paystack-form');
            $(".pay-form").attr("action", action4);
            $("#scard").prop("required", false);
            $("#scvv").prop("required", false);
            $("#smonth").prop("required", false);
            $("#syear").prop("required", false);
            $("#stripes").hide();
        }

        else if (val.value == "Stripe") {
            $('.pay-form').attr('id', 'subscribe-form');
            $(".pay-form").attr("action", action2);
            $("#scard").prop("required", true);
            $("#scvv").prop("required", true);
            $("#smonth").prop("required", true);
            $("#syear").prop("required", true);
            $("#stripes").show();
        }
    }    
</script>
@endif

<script type="text/javascript">

    $(document).on('submit', '#subscribe-form', function () {
        $('#preloader').show();
    });

</script>

@endsection