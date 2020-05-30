@extends('layouts.vendor') @section('content')

<div class="content-area">
    <div class="mr-breadcrumb">
        <div class="row">
            <div class="col-lg-12">
                <h4 class="heading">{{ $langg->lang479 }} <a class="add-btn" href="{{ url()->previous() }}"><i class="fas fa-arrow-left"></i> {{ $langg->lang480 }}</a></h4>
                <ul class="links">
                    <li>
                        <a href="{{ route('vendor-dashboard') }}">{{ $langg->lang441 }} </a>
                    </li>
                    <li>
                        <a href="javascript:;">{{ $langg->lang472 }} </a>
                    </li>
                    <li>
                        <a href="javascript:;">{{ $langg->lang479 }}</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>


    <div class="add-product-content">
        <div class="row">
            <div class="col-lg-12">
                <div class="product-description">
                    <div class="body-area">

                        <div class="gocover" style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>

                        @include('includes.admin.form-both')
                        <form id="geniusform" class="form-horizontal" action="{{route('vendor-wt-store')}}" method="POST" enctype="multipart/form-data">

                            {{ csrf_field() }}
 

                            <div class="item form-group">
                                <label class="control-label col-sm-4" for="name"><b>{{ $langg->lang498 }} : {{ App\Models\Product::vendorConvertPrice(Auth::user()->current_balance) }}</b></label>
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
                                    <input name="amount" placeholder="{{ $langg->lang487 }}" max="{{round(Auth::user()->current_balance/(1+($gs->withdraw_charge/100)))}}" class="form-control" type="number" value="{{ old('amount') }}" required>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-sm-12" for="name">Withdraw Charge {{$gs->withdraw_charge}}% 
                                <br>
                                You can withdraw up to {{round(Auth::user()->current_balance/(1+($gs->withdraw_charge/100)))}}
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
</div>

@endsection @section('scripts')
<script type="text/javascript">
    $("#withmethod").change(function() {
        var method = $(this).val();
        if (method == "Bank") {

            $("#bank").show();
            $("#bank").find('input, select').attr('required', true);

            $("#paypal").hide();
            $("#paypal").find('input').attr('required', false);

        }
        if (method != "Bank") {
            $("#bank").hide();
            $("#bank").find('input, select').attr('required', false);

            $("#paypal").show();
            $("#paypal").find('input').attr('required', true);
        }
        if (method == "") {
            $("#bank").hide();
            $("#paypal").hide();
            $("#bank").find('input, select').attr('required', false);
            $("#paypal").find('input').attr('required', false);
        }

    })
</script>
@endsection