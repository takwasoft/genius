@extends('layouts.front')
@section('content')

<!-- Vendor Area Start -->
  <div class="vendor-banner" style="background: url({{  $vendor->shop_image != null ? asset('assets/images/vendorbanner/'.$vendor->shop_image) : '' }}); background-repeat: no-repeat; background-size: cover;background-position: center;padding:0;{!! $vendor->shop_image != null ? '' : 'background-color:'.$gs->vendor_color !!} ">
    <div class="container ">
      <div class="row align-items-end"  style="height:75vh;">
       <div class="col-md-2" style="margin-bottom:-25px;">
          <div class="vendor-details clearfix">
              <div class="vendor-logo float-left">
          <img src="https://geniusocean.com/demo/marketplace/assets/images/featuredbanner/1571287040feature1.jpg" alt="" style="border-radius:50%; width:150px;height:150px;">
          </div>
            <!-- <div class="content float-left ml-3 pt-5 mt-2">
            <p class="sub-title">
              {{ $vendor->shop_name }}
            </p>
            
          </div> -->
          </div>
       </div>
       
      </div>
    </div>
  </div>
  <section class="bg-muted">
    <div class="container" style="border-bottom:1px solid #f5f5f5">
    <div class="offset-2"><button data-toggle="modal" data-target=".bd-example-modal-lg" class="btn vendor-btn" style="border-right:1px solid  #f5f5f5; border-radius:0">About</button><button  class="btn vendor-btn" data-toggle="modal" data-target=".bd-example-modal-lg1" style="border-right:1px solid  #f5f5f5; border-radius:0">Contact</button></div>
  </div>
  </section>


{{-- Info Area Start --}}
<!-- <section class="info-area">
  <div class="container">


        @foreach($services->chunk(4) as $chunk)

        <div class="row">

        <div class="col-lg-12 p-0">
          <div class="info-big-box">
              <div class="row">
                @foreach($chunk as $service)
              <div class="col-6 col-xl-3 p-0">
                <div class="info-box">
                  <div class="icon">
                    <img src="{{ asset('assets/images/services/'.$service->photo) }}">
                  </div>
                  <div class="info">
                      <div class="details">
                        <h4 class="title">{{ $service->title }}</h4>
                      <p class="text">
                        {!! $service->details !!}
                      </p>
                      </div>
                  </div>
                </div>
              </div>
              @endforeach
              </div>
          </div>
        </div>

        </div>

          @endforeach


        </div>
</section> -->
{{-- Info Area End  --}}




<!-- SubCategori Area Start -->
  <section class="sub-categori">
    <div class="container">
      <div class="row">

        @include('includes.vendor-catalog')

        <div class="col-lg-9 order-first order-lg-last">
          <div class="right-area">

            @if(count($vprods) > 0)

              @include('includes.vendor-filter')

            <div class="categori-item-area">
              {{-- <div id="ajaxContent"> --}}
                <div class="row">

                  @foreach($vprods as $prod)
                    @include('includes.product.product')
                  @endforeach

                </div>
                  <div class="page-center category">
                    {!! $vprods->appends(['sort' => request()->input('sort'), 'min' => request()->input('min'), 'max' => request()->input('max')])->links() !!}
                  </div>
              {{-- </div> --}}
            </div>

            @else
              <div class="page-center">
                <h4 class="text-center">{{ $langg->lang60 }}</h4>
              </div>
            @endif


          </div>
        </div>
      </div>
    </div>
  </section>
<!-- SubCategori Area End -->


@if(Auth::guard('web')->check())

{{-- MESSAGE VENDOR MODAL --}}

<div class="message-modal">
  <div class="modal" id="vendorform1" tabindex="-1" role="dialog" aria-labelledby="vendorformLabel1" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="vendorformLabel1">{{ $langg->lang118 }}</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>
      <div class="modal-body">
        <div class="container-fluid p-0">
          <div class="row">
            <div class="col-md-12">
              <div class="contact-form">

                <form id="emailreply">
                  {{csrf_field()}}
                  <ul>

                    <li>
                      <input type="text" class="input-field" readonly="" placeholder="Send To {{ $vendor->shop_name }}" readonly="">
                    </li>

                    <li>
                      <input type="text" class="input-field" id="subj" name="subject" placeholder="{{ $langg->lang119}}" required="">
                    </li>

                    <li>
                      <textarea class="input-field textarea" name="message" id="msg" placeholder="{{ $langg->lang120 }}" required=""></textarea>
                    </li>

                    <input type="hidden" name="email" value="{{ Auth::guard('web')->user()->email }}">
                    <input type="hidden" name="name" value="{{ Auth::guard('web')->user()->name }}">
                    <input type="hidden" name="user_id" value="{{ Auth::guard('web')->user()->id }}">
                    <input type="hidden" name="vendor_id" value="{{ $vendor->id }}">

                  </ul>
                  <button class="submit-btn" id="emlsub1" type="submit">{{ $langg->lang118 }}</button>
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
  </div>
</div>





{{-- MESSAGE VENDOR MODAL ENDS --}}


@endif

<!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" >
  Launch demo modal
</button> -->

<!-- Modal -->
<!-- <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered " role="document">
    <div class="modal-content">
      <div class=" vendor-model claarfix">
        <h5 class="modal-title float:left" id="exampleModalCenterTitle">About Us</h5>
        <button type="button" class="close float:right" style="margin-top:-35px;font-size:28px" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.</p>
        <p>Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.</p>
        <p>Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.</p>
      </div>

    </div>
  </div>
</div> -->

<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
     <div class="modal-header vendor-model" style="padding:25px 15px!important;">
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row">
        
         <div class="col-6">
         <img src="https://geniusocean.com/demo/marketplace/assets/images/featuredbanner/1571287040feature1.jpg" alt=""></div>
        <div class="col-6"><h2>About Us</h2>
        <hr class="float-left" style="width:200px;margin-top: -5px; margin-bottom: 1.3rem;border: 0;
    border-top: 2px solid rgba(63, 103, 60, 0.1);background: #08a245;">
        <div class="clearfix"></div>
        Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups. Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.</div>
       
      </div>
      </div>
    </div>
  </div>
</div>

<div class="modal fade bd-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
     <div class="modal-header vendor-model" style="padding:25px 15px!important;">
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row">
        
         <div class="col-6">
          <div>
            <form>
  <div class="form-group">
    <label for="exampleInputName">Your Name</label>
    <input type="name" class="form-control" id="exampleInputName" aria-describedby="emailHelp" placeholder="Enter Name">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Your E-mail</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Your Message</label>
    <textarea class="form-control" placeholder="Please enter your message here..." id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
          </div>
         </div>
        <div class="col-6"><h2>Address</h2>
        <hr class="float-left" style="width:200px;margin-top: -5px; margin-bottom: 1.3rem;border: 0;
    border-top: 2px solid rgba(63, 103, 60, 0.1);background: #08a245;">
        <div class="clearfix"></div>
        
                <h5 class="pt-3"><i class="fas fa-phone-volume mr-2"></i>01913-837936, 01913-837936</h5>
                <h5 class="py-3"><i class="far fa-envelope  mr-2" aria-hidden="true"></i>info@takwasoft.com</h5>
                <h5 class="pb-3"><i class="fas fa-map-marker-alt mr-2" aria-hidden="true"></i>Uttar Kamalapur, Motijheel, Dhaka</h5>
                <h5 class="pb-3"><i class="fas fa-map-marker-alt mr-2" aria-hidden="true"></i>College Road, Luxmipur Sadar</h5>
            </div>
       
      </div>
      </div>
    </div>
  </div>
</div>

@endsection

@section('scripts')

<script type="text/javascript">
        $("#sortby").on('change',function () {
          var sort = $("#sortby").val();
          window.location = "{{url('/store')}}/{{ str_replace(' ', '-', $vendor->shop_name) }}?sort="+sort;
        });

  $(function () {
    $("#slider-range").slider({
    range: true,
    orientation: "horizontal",
    min: 0,
    max: 10000000,
    values: [{{ isset($_GET['min']) ? $_GET['min'] : '0' }}, {{ isset($_GET['max']) ? $_GET['max'] : '10000000' }}],
    step: 5,

    slide: function (event, ui) {
      if (ui.values[0] == ui.values[1]) {
        return false;
      }

      $("#min_price").val(ui.values[0]);
      $("#max_price").val(ui.values[1]);
    }
    });

    $("#min_price").val($("#slider-range").slider("values", 0));
    $("#max_price").val($("#slider-range").slider("values", 1));

  });
</script>

<script type="text/javascript">
          $(document).on("submit", "#emailreply" , function(){
          var token = $(this).find('input[name=_token]').val();
          var subject = $(this).find('input[name=subject]').val();
          var message =  $(this).find('textarea[name=message]').val();
          var email = $(this).find('input[name=email]').val();
          var name = $(this).find('input[name=name]').val();
          var user_id = $(this).find('input[name=user_id]').val();
          var vendor_id = $(this).find('input[name=vendor_id]').val();
          $('#subj').prop('disabled', true);
          $('#msg').prop('disabled', true);
          $('#emlsub').prop('disabled', true);
     $.ajax({
            type: 'post',
            url: "{{URL::to('/vendor/contact')}}",
            data: {
                '_token': token,
                'subject'   : subject,
                'message'  : message,
                'email'   : email,
                'name'  : name,
                'user_id'   : user_id,
                'vendor_id'  : vendor_id
                  },
            success: function() {
          $('#subj').prop('disabled', false);
          $('#msg').prop('disabled', false);
          $('#subj').val('');
          $('#msg').val('');
        $('#emlsub').prop('disabled', false);
        toastr.success("{{ $langg->message_sent }}");
        $('.ti-close').click();
            }
        });
          return false;
        });
</script>


@endsection
