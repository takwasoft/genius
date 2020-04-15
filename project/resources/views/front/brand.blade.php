@extends('layouts.front')
@section('styles')
<style>
#mg-menu{
    display:none;
}
.wrap-core-nav-list{
    text-align:left !important;
}
   .model-item li {
        border-top: 1px solid rgba(0, 0, 0, .125);
        padding: .7rem .80rem;
    }
    
    .model-item li li {
        border-top: 1px solid rgba(0, 0, 0, .125);
        padding: .7rem .5rem;
    }
    
    .model-item li:first-child {
        border-top: none;
    }
    
    .model-item li:last-child {
        border-bottom: 1px solid rgba(0, 0, 0, .125);
    }
    
    .model-item li a {
        color: #0074ba;
    }
    
    .model-item li ul li a {
        color: #0074ba!important;
    }
    .item-filter{
        margin-top: 10px;
    }
</style>
<link rel="stylesheet" href="{{asset('assets/front/css/modify.css')}}">
@endsection
@section('content')
<!-- Breadcrumb Area Start -->
{{-- <div class="breadcrumb-area">
   <div class="container">
      <div class="row">
         <div class="col-lg-12">
            <ul class="pages">
               <li>
                  <a href="{{route('front.index')}}">{{ $langg->lang17 }}</a>
               </li>
               @if (!empty($cat))
               <li>
                  <a href="{{route('front.category', $cat->slug)}}">{{ $cat->name }}</a>
               </li>
               @endif
               @if (!empty($subcat))
               <li>
                  <a href="{{route('front.category', [$cat->slug, $subcat->slug])}}">{{ $subcat->name }}</a>
               </li>
               @endif
               @if (!empty($childcat))
               <li>
                  <a href="{{route('front.category', [$cat->slug, $subcat->slug, $childcat->slug])}}">{{ $childcat->name }}</a>
               </li>
               @endif
               @if (empty($childcat) && empty($subcat) && empty($cat))
               <li>
                  <a href="{{route('front.category')}}">{{ $langg->lang36 }}</a>
               </li>
               @endif

            </ul>
         </div>
      </div>
   </div>
</div> --}}
<!-- Breadcrumb Area End -->
<!-- SubCategori Area Start -->
<div class="header-section">
    <div class="top-add mt-3">
        <div class="container">
            <center><img src="{{ asset('assets/images/brand/gp.gif')}}"></center>
        </div>
    </div>

    <div class="mt-4">
        <div class="container" style="border-bottom: 1px solid #d4ded9; max-width:85%">
            <div class="row">
                <div class="col-1 col-md-3" style="padding-left:0px;">
                    <button onclick="myFunction()" class="btn"><i class="fas fa-bars manu-bar"></i></button>
                    <div style="display:none" class="list-group list-unstyled categories-list megamenu" id="myDIV">
                        <ul class="list-group">
                            <a class="list-group-item active text-light">
                                <i class="fa fa-bars" aria-hidden="true"></i>Categories
                            </a>
                            <li>
                                <a href="#" class="list-group-item megamenu-caret">
                                    <i class="fa fa-shopping-bag" aria-hidden="true"></i>Clothing</a>
                            </li>
                            <li>
                                <a href="#" class="list-group-item clearfix">
                                    <span class="float-left"><i class="fa fa-paw" aria-hidden="true"></i>Shoes </span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                            </li>

                            <li>
                                <a href="#" class="list-group-item clearfix">
                                    <span class="float-left"><i class="fa fa-clock-o" aria-hidden="true"></i>Watches </span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                            </li>

                            <li>
                                <a href="#" class="list-group-item clearfix">
                                    <i class="fa fa-paper-plane" aria-hidden="true"></i>Kids and babies</a>
                            </li>

                            <li>
                                <a href="#" class="list-group-item clearfix">
                                    <i class="fa fa-heart" aria-hidden="true"></i>Health and beauty</a>
                            </li>

                            <li>
                                <a href="#" class="list-group-item clearfix">
                                    <i class="fa fa-envira" aria-hidden="true"></i>House Hold</a>
                            </li>

                            <li>
                                <a href="#" class="list-group-item clearfix">
                                    <i class="fa fa-bullhorn" aria-hidden="true"></i>Others</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-6 col-sm-5 col-md-4">
                    <button data-target="#my-modal" data-toggle="modal" class="btn "><i class="fas fa-map-marker-alt map-marker"></i> অবস্থান নির্বাচন করুন</button>
                </div>
                <div class="col-12 col-sm-6 col-md-5 pr-4">
                    <form action="">
                        <div class="form-group input-group">
                            <input type="text" class="form-control" placeholder="আপনি কি খুঁজছেন">
                            <div class="input-group-append">
                                <input class="btn" type="submit" value="সার্চ" style="color:white;background:rgb(0, 152, 119);">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<section class="sub-categori" style="padding:0px">
   <div class="container" style="max-width:85%">
    <div class="row">
        <div class="col-md-3">
           
            <div style="display:none" class="list-group list-unstyled categories-list megamenu" id="myDIV">
                <ul class="list-group">
                    <a class="list-group-item active text-light">
                        <i class="fa fa-bars" aria-hidden="true"></i>Categories
                    </a>
                    <li>
                        <a href="#" class="list-group-item megamenu-caret">
                            <i class="fa fa-shopping-bag" aria-hidden="true"></i>Clothing</a>
                    </li>
                    <li>
                        <a href="#" class="list-group-item clearfix">
                            <span class="float-left"><i class="fa fa-paw" aria-hidden="true"></i>Shoes </span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                    </li>

                    <li>
                        <a href="#" class="list-group-item clearfix">
                            <span class="float-left"><i class="fa fa-clock-o" aria-hidden="true"></i>Watches </span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                    </li>

                    <li>
                        <a href="#" class="list-group-item clearfix">
                            <i class="fa fa-paper-plane" aria-hidden="true"></i>Kids and babies</a>
                    </li>

                    <li>
                        <a href="#" class="list-group-item clearfix">
                            <i class="fa fa-heart" aria-hidden="true"></i>Health and beauty</a>
                    </li>

                    <li>
                        <a href="#" class="list-group-item clearfix">
                            <i class="fa fa-envira" aria-hidden="true"></i>House Hold</a>
                    </li>

                    <li>
                        <a href="#" class="list-group-item clearfix">
                            <i class="fa fa-bullhorn" aria-hidden="true"></i>Others</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
      <div class="row">
      
        <div class="col-md-3" style="border-right: 1px solid #d4ded9;positon:relative">
            <div class="py-3">
                <div class="pt-2">পোস্টকারীর প্রকার</div>
                <div class="pb-3" style="border-bottom: 1px solid #d4ded9;">
                    <form action="">
                        <div class="form-check pt-2">
                            <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                            <label class="form-check-label" for="exampleRadios1">
                                    সকল 
                                </label>
                        </div>
                        <div class="form-check pt-2">
                            <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
                            <label class="form-check-label" for="exampleRadios2">
                                    মেম্বার
                                </label>
                        </div>
                        <div class="form-check pt-2">
                            <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="option3">
                            <label class="form-check-label" for="exampleRadios3">
                                অনুমোদিত ডিলার 
                                </label>
                        </div>
                    </form>
                </div>

            </div>
            <div>
                <div class="py-2"style="border-bottom: 1px solid #d4ded9;">এখানে প্রাইস পিল্টার হবে</div>
            </div>
            <div class="text-center mt-3 sticky-top">
                <img src="{{ asset('assets/images/brand/sidead.gif')}}" alt="">
            </div>
                
        </div>
         <div class="col-md-9 order-first order-lg-last ajax-loader-parent">
            <div class="right-area" id="app">

               @include('includes.filter')
               <div class="categori-item-area category-slide">
                    <div class="col" style="padding-left:10px;padding-right:10px;">
                        <div class="product-slide4 mb-4">
                            <div class="">
                                <div class="">
                                    <img class="" src="{{ asset('assets/images/brand/cropped.jpg')}}" alt="" />
                                </div>
                            </div>
                            <div class="">
                                <div class="">
                                    <img class="" src="{{ asset('assets/images/brand/cropped1.jpg')}}" alt="" />
                                </div>
                            </div>
                            <div class="">
                                <div class="">
                                    <img class="" src="{{ asset('assets/images/brand/cropped3.jpg')}}" alt="" />
                                </div>
                            </div>
                        </div>
                            <div class="product-slide2">
                                <div class="product-item">
                                    <div class="thumbnail">
                                        <a href="product-details.html">
                                            <div class="product-thum-img">
                                                <a href="preview.html"><img src="{{ asset('assets/images/brand/product.jpg')}}" alt="" /></a>
                                            </div>
                                        </a>
                                        <h5>Lorem Ipsum is simply </h5>
                                        <div class="price-details clearfix mt-3">
                                            <div class="price-number float-left">
                                                <p class="text-left" style="font-size:20px"><strong class="rupees">$679.87</strong></p>
                                            </div>
                                            <div class="add-cart float-right">
                                                <h4><a href="preview.html">Add to Cart</a></h4>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-item">
                                    <div class="thumbnail">
                                        <a href="product-details.html">
                                            <div class="product-thum-img">
                                                <a href="preview.html"><img src="{{ asset('assets/images/brand/product.jpg')}}" alt="" /></a>
                                            </div>
                                        </a>
                                        <h4>Lorem Ipsum is simply </h4>
                                        <div class="price-details clearfix mt-3">
                                            <div class="price-number float-left">
                                                <p class="text-left" style="font-size:20px"><strong class="rupees">$679.87</strong></p>
                                            </div>
                                            <div class="add-cart float-right">
                                                <h4><a href="preview.html">Add to Cart</a></h4>
                                            </div>
                                            <div class="clear"></div>
                                        </div> 
                                    </div>
                                </div>
                                <div class="product-item">
                                    <div class="thumbnail">
                                        <a href="product-details.html">
                                            <div class="product-thum-img">
                                                <a href="preview.html"><img src="{{ asset('assets/images/brand/product.jpg')}}" alt="" /></a>
                                            </div>
                                        </a>
                                        <h4>Lorem Ipsum is simply </h4>
                                        <div class="price-details clearfix mt-3">
                                            <div class="price-number float-left">
                                                <p class="text-left" style="font-size:20px"><strong class="rupees">$679.87</strong></p>
                                            </div>
                                            <div class="add-cart float-right">
                                                <h4><a href="preview.html">Add to Cart</a></h4>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                 <div class="col" id="ajaxContent">
                   @include('includes.product.filtered-products')
                 </div>
                 <div id="ajaxLoader" class="ajax-loader" style="background: url({{asset('assets/images/'.$gs->loader)}}) no-repeat scroll center center rgba(0,0,0,.6);"></div>
               </div>

            </div>
         </div>
      </div>
   </div>
</section>

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
                        <h6>খুলনা-এর মধ্যে একটি স্থানীয় এলাকা নির্বাচন করুন</h6>
                        <h6 class="mt-3 text-muted">জনপ্রিয় এলাকাসমূহ</h6>
                        <h6 class="mt-4" style="color: #0074ba">খুলনা-এর সবগুলো</h6>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="categories-list model-item">
                            <ul>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Dhaka</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                    <div class="categories-list" style="top: 0%; position: absolute; left: 100%;  width: 90%; margin-left: 5px;">
                                        <ul style="background-color:#fff;border:none;" class="sub-menu1 text-muted">
                                            <li><a class="text-muted" href="http://google.com">Dhaka</a></li>
                                            <li><a href="#" class="text-muted">Ghazipur</a>
                                            </li>
                                            <li><a href="#" class="text-muted">Kishoreganj</a></li>
                                            <li><a href="#" class=" text-muted">Manikganj</a></li>
                                        </ul>
                                    </div>

                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Chittagong</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Barisal</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Khulna</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Mymensingh</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Sylhet</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Rajshahi</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                            </ul>
                        </div>

                        <div class="btn text-muted mt-3">বিভাগ</div>
                        <div class=" categories-list model-item">
                            <ul>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Dhaka</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Chittagong</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Barisal</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Khulna</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Mymensingh</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Sylhet</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Rajshahi</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>
<!-- SubCategori Area End -->
@endsection


@section('scripts')
<script>
    function myFunction() {

        var x = document.getElementById("myDIV");
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }
</script>
<script>

  $(document).ready(function() {

    // when dynamic attribute changes
    $(".attribute-input, #sortby").on('change', function() {
      $("#ajaxLoader").show();
      filter();
    });

    // when price changed & clicked in search button
    $(".filter-btn").on('click', function(e) {
      e.preventDefault();
      $("#ajaxLoader").show();
      filter();
    });
  });

  function filter() {
    let filterlink = '';

    if ($("#prod_name").val() != '') {
      if (filterlink == '') {
        filterlink += '{{route('front.brand', [Request::route('brand')])}}' + '?search='+$("#prod_name").val();
      } else {
        filterlink += '&search='+$("#prod_name").val();
      }
    }

    $(".attribute-input").each(function() {
      if ($(this).is(':checked')) {
        if (filterlink == '') {
          filterlink += '{{route('front.brand', [Request::route('brand')])}}' + '?'+$(this).attr('name')+'='+$(this).val();
        } else {
          filterlink += '&'+$(this).attr('name')+'='+$(this).val();
        }
      }
    });

    if ($("#sortby").val() != '') {
      if (filterlink == '') {
        filterlink += '{{route('front.brand', [Request::route('brand')])}}' + '?'+$("#sortby").attr('name')+'='+$("#sortby").val();
      } else {
        filterlink += '&'+$("#sortby").attr('name')+'='+$("#sortby").val();
      }
    }

    if ($("#min_price").val() != '') {
      if (filterlink == '') {
        filterlink += '{{route('front.brand', [Request::route('brand')])}}' + '?'+$("#min_price").attr('name')+'='+$("#min_price").val();
      } else {
        filterlink += '&'+$("#min_price").attr('name')+'='+$("#min_price").val();
      }
    }

    if ($("#max_price").val() != '') {
      if (filterlink == '') {
        filterlink += '{{route('front.brand', [Request::route('brand')])}}' + '?'+$("#max_price").attr('name')+'='+$("#max_price").val();
      } else {
        filterlink += '&'+$("#max_price").attr('name')+'='+$("#max_price").val();
      }
    }

    // console.log(filterlink);
    console.log(encodeURI(filterlink));
    $("#ajaxContent").load(encodeURI(filterlink), function(data) {
      // add query string to pagination
      addToPagination();
      $("#ajaxLoader").fadeOut(1000);
    });
  }

  // append parameters to pagination links
  function addToPagination() {
    // add to attributes in pagination links
    $('ul.pagination li a').each(function() {
      let url = $(this).attr('href');
      let queryString = '?' + url.split('?')[1]; // "?page=1234...."

      let urlParams = new URLSearchParams(queryString);
      let page = urlParams.get('page'); // value of 'page' parameter

      let fullUrl = '{{route('front.brand', [Request::route('brand')])}}?page='+page+'&search='+'{{request()->input('search')}}';

      $(".attribute-input").each(function() {
        if ($(this).is(':checked')) {
          fullUrl += '&'+encodeURI($(this).attr('name'))+'='+encodeURI($(this).val());
        }
      });

      if ($("#sortby").val() != '') {
        fullUrl += '&sort='+encodeURI($("#sortby").val());
      }

      if ($("#min_price").val() != '') {
        fullUrl += '&min='+encodeURI($("#min_price").val());
      }

      if ($("#max_price").val() != '') {
        fullUrl += '&max='+encodeURI($("#max_price").val());
      }

      $(this).attr('href', fullUrl);
    });
  }

  $(document).on('click', '.categori-item-area .pagination li a', function (event) {
    event.preventDefault();
    if ($(this).attr('href') != '#' && $(this).attr('href')) {
      $('#preloader').show();
      $('#ajaxContent').load($(this).attr('href'), function (response, status, xhr) {
        if (status == "success") {
          $('#preloader').fadeOut();
          $("html,body").animate({
            scrollTop: 0
          }, 1);

          addToPagination();
        }
      });
    }
  });

</script>

<script type="text/javascript">

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



@endsection