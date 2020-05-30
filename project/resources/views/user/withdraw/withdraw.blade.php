@extends('layouts.front')

@section('styles')
<style type="text/css">
	

</style>


@endsection

@section('content')


<section class="user-dashbord">
    <div class="container">
      <div class="row">
        @include('includes.user-dashboard-sidebar')
        <div class="col-lg-8">
					<div class="user-profile-details">
						<div class="order-history">
							<div class="header-area">
								<h4 class="title" >
									{{ $langg->lang336 }}
									<a class="mybtn1" href="{{route('user-wwt-index')}}"> <i class="fas fa-arrow-left"></i> {{ $langg->lang337 }}</a>
								</h4>
							</div>

                                                <div class="gocover" style="background: url({{ asset('assets/images/'.$gs->loader) }}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                         <form id="userform" class="form-horizontal" action="{{route('user-wwt-store')}}" method="POST" enctype="multipart/form-data">

                             {{ csrf_field() }}
 

                            <div class="item form-group">
                                <label class="control-label col-sm-4" for="name"><b>{{ $langg->lang498 }} : {{ App\Models\Product::vendorConvertPrice(Auth::user()->affilate_income) }}</b></label>
                            </div>

                            <div class="item form-group">
                                <label class="control-label col-sm-4" for="name">{{ $langg->lang481 }} *

                                    </label>
                                <div class="col-sm-12">
                                    <select onchange="getAdditional(this.value)" class="form-control" name="methods" id="withmethod" required>
                                        <option value="">Select Payment Method</option>
                                            @foreach($gateways as $gateway)
                                                <option value="{{$gateway->id}}">{{$gateway->title}}</option>
                                            @endforeach
                                        </select>
                                </div>
                            </div>
                            <div id="ad-field">

                            </div>
                            <script>
                                getAdditional = (id) => {
                                    var xhttp = new XMLHttpRequest();
                                    xhttp.onreadystatechange = function() {
                                        if (this.readyState == 4 && this.status == 200) {
                                            document.getElementById("ad-field").innerHTML = this.responseText;
                                        }
                                    };
                                    xhttp.open("GET", "{{route('vendor-get-additional')}}?id=" + id, true);
                                    xhttp.send();
                                }
                            </script>
                            <div class="item form-group">
                                <label class="control-label col-sm-12" for="name">{{ $langg->lang487 }} *

                                    </label>
                                <div class="col-sm-12">
                                    <input name="amount" placeholder="{{ $langg->lang487 }}" max="{{round(Auth::user()->affilate_income/(1+($gs->withdraw_charge/100)))}}" class="form-control" type="number" value="{{ old('amount') }}" required>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-sm-12" for="name">Withdraw Charge {{$gs->withdraw_charge}}% 
                                <br>
                                You can withdraw up to {{round(Auth::user()->affilate_income/(1+($gs->withdraw_charge/100)))}}
                                    </label>
                            </div>


                            <hr>
                            <div class="add-product-footer">
                                <button name="addProduct_btn" type="submit" class="mybtn1">{{ $langg->lang497 }}</button>
                            </div>
                                        </form>




						</div>
					</div>
		</div>
	  </div>
	</div>
</section>
@endsection

@section('scripts')


<script type="text/javascript">
  

    $("#withmethod").change(function(){
        var method = $(this).val();
        if(method == "Bank"){

            $("#bank").show();
            $("#bank").find('input, select').attr('required',true);

            $("#paypal").hide();
            $("#paypal").find('input').attr('required',false);

        }
        if(method != "Bank"){
            $("#bank").hide();
            $("#bank").find('input, select').attr('required',false);

            $("#paypal").show();
            $("#paypal").find('input').attr('required',true);
        }
        if(method == ""){
            $("#bank").hide();
            $("#paypal").hide();
        }

    })

</script>

@endsection