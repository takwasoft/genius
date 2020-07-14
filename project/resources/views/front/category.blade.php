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
  padding: 7px 20px 7px 45px;
  border: 1px solid #ddd;
  border-radius:4px;
}
#all_sub_category i{
     padding-left: 2px;
    padding-right: 2px;
    padding-top: 6px;
    padding-bottom: 4px;
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

/* #mg-menu{
    display:none;
} */
/* .wrap-core-nav-list{
    text-align:left !important;
} */
   .model-item li {
        border-top: 1px solid rgba(0, 0, 0, .125);
        padding: .7rem 0 .7rem .80rem;
    }
    
    .model-item li li {
        border-top: 1px solid rgba(0, 0, 0, .125);
        padding: .82rem .5rem;
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
    .filter-btn {
    border: 1px solid #0f78f2;
    width: 160px;
    height: 40px;
    line-height: 40px;
    text-align: center;
    font-size: 14px;
    text-transform: uppercase;
    color: #fff;
    border: 0px;
    border-radius: 50px;
    display: block;
    margin: 0 auto;
    -webkit-transition: all 0.3s ease-in;
    -o-transition: all 0.3s ease-in;
    transition: all 0.3s ease-in;
    cursor: pointer;
    background: #0f78f2;

}
.price-range-block .livecount {
    margin-bottom: 30px;
}
.price-range-block {
    text-align: center;
    margin-top: 15px;
    padding:0 18px;
}
.price-range-block #slider-range {
    margin-bottom: 21px;
}
.body-area {
    padding: 5px 12px 5px 0;
    display: block;
}
</style>
<link rel="stylesheet" href="{{asset('assets/front/css/modify.css')}}">
@endsection
@section('content')

<!-- SubCategori Area Start -->
<div class="header-section" style="border-bottom: 1px solid #d4ded9;">
    <div class="top-add mt-3">
        <div class="container">
            <center><img src="{{ asset('assets/images/brand/gp.gif')}}"></center>
        </div>
    </div>

    <div class="mt-4">
        <div class="container" style="max-width:78%">
            <div class="row">
                {{--  <div class="col-1 col-md-3" style="padding-left:0px;">
                    <button onclick="myFunction()" class="btn"><i class="fas fa-bars manu-bar"></i></button>
                  
                </div>  --}}
                <div class="col-sm-6 col-2 rm-padding-sm">
                    <button onclick="dModal()" data-target="#my-modal" data-toggle="modal" class="btn "><i class="fas fa-map-marker-alt map-marker"></i> <span id="area_name" class="d-none d-sm-inline-block">অবস্থান নির্বাচন করুন</span></button>
                </div>
                <div class="col-sm-6 col-10 pr-sm-4 rm-padding-sm-rg">
                    <form action="{{ route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')]) }}">
                        <div class="form-group input-group">
                            <input value="{{ request()->input('search') }}" name="search" type="text" class="form-control" placeholder="আপনি কি খুঁজছেন">
                            <div class="input-group-append">
                                <input
                                 
                                class="btn" type="submit" value="সার্চ" style="color:white;background:rgb(0, 152, 119);">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<section class="sub-categori" style="padding:0px;background: #e7edee;">
   <div class="container sm-container" style="max-width:75%;background:#fff;">
    
      <div class="row">
      
        <div class="col-md-3 " style="positon:relative">
            <div class="py-3 " style="border-right: 1px solid #d4ded9;padding-left: 20px;">
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
                <div class="py-2"style="border-bottom: 1px solid #d4ded9;border-right: 1px solid #d4ded9;">
                    <div class="body-area">
                    <form id="catalogForm" action="{{ route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')]) }}" method="GET">
                        @if (!empty(request()->input('search')))
                          <input type="hidden" name="search" value="{{ request()->input('search') }}">
                        @endif
                        @if (!empty(request()->input('sort')))
                          <input type="hidden" name="sort" value="{{ request()->input('sort') }}">
                        @endif
        
                        <div class="price-range-block">
                            <div id="slider-range" class="price-filter-range" name="rangeInput"></div>
                            <div class="livecount">
                              <input type="number" min=0  name="min"  id="min_price" class="price-range-field" />
                              <br>
                              <span>{{$langg->lang62}}</span>
                              <br>
                              <input type="number" min=0  name="max" id="max_price" class="price-range-field" />
                            </div>
                          </div>
        
                          <button class="filter-btn" type="submit">{{$langg->lang58}}</button>
                      </form>
                      </div>
                </div>
            </div>
            <div class="text-center mt-3 d-none d-sm-block">
                <img src="{{ asset('assets/images/brand/sidead.gif')}}" alt="">
            </div>
                
        </div>
         <div class="col-md-9 ajax-loader-parent">
            <div class="right-area" id="app">

               @include('includes.filter')
               <div class="categori-item-area category-slide">
                    <div class="col" style="padding-left:10px;padding-right:10px;">
                        <!--<div class="product-slide4 mb-4">-->
                        <!--    <div class="">-->
                        <!--        <div class="">-->
                        <!--            <img class="" src="{{ asset('assets/images/brand/cropped.jpg')}}" alt="" />-->
                        <!--        </div>-->
                        <!--    </div>-->
                        <!--    <div class="">-->
                        <!--        <div class="">-->
                        <!--            <img class="" src="{{ asset('assets/images/brand/cropped1.jpg')}}" alt="" />-->
                        <!--        </div>-->
                        <!--    </div>-->
                        <!--    <div class="">-->
                        <!--        <div class="">-->
                        <!--            <img class="" src="{{ asset('assets/images/brand/cropped3.jpg')}}" alt="" />-->
                        <!--        </div>-->
                        <!--    </div>-->
                        <!--</div>-->
                            <div class="product-slide2">
                                	@foreach ($topAdProducts as $product)
					@include('includes.product.sell')
				@endforeach
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
  
    <input onclick="myFunction(this)" type="text" placeholder="অন্যান্য এলাকা (A-Z)" id="myInput" onkeyup="filterFunction(this)" >
    <button class="btn all_sub_category_btn" onclick="myFunction(this)"><i class="dist fas  fa-angle-down">
    </i></button>
  <div id="myDropdown" class="dropdown-content ">
                                                    <a class="text-muted" href="javascript:void(0)" onclick="showItem('sub-dis','','.dis','subdistrict_id',{{$subdistrict->id}},[],'area_name','{{$subdistrict->name}}','#my-modal')">{{$subdistrict->name}}</a>
                                                
                                                @else
                                                    <a class="text-muted " href="javascript:void(0)" onclick="showItem('sub-dis','','.dis','subdistrict_id',{{$subdistrict->id}},[],'area_name','{{$subdistrict->name}}','#my-modal')">{{$subdistrict->name}}</a>
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
  
    <input onclick="myFunctionDiv(this)" type="text" placeholder="অন্যান্য এলাকা (A-Z)" id="myInput" onkeyup="filterFunctionDiv(this)" >
    <button class="btn all_sub_category_btn" onclick="myFunctionDiv(this)"><i class="div fas fa-angle-down ">
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
<!-- SubCategori Area End -->
@endsection


@section('scripts')
<script>

</script>
<script>
closeModal=()=>{
  $("#my-modal").modal('toggle');
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
    document.getElementById("area_key").value=sid;
    document.getElementById("area_value").value=svalue;
		if(cm){

		$(cm).modal('toggle');
		}
		toastr.success(hval+" selected");
		if(document.getElementById(hid)){
      document.getElementById(hid).innerHTML=hval;
    }

		$(cls2).hide();
		id="#"+cls+id;
		cls="."+cls;
		$(cls).hide();
		$(id).show();
     $("#ajaxLoader").show();
      filter(); 
      if(screen.width<576){
        $(".brn").css("border","none");
        $(".dnn").css("display","none");
        $(".lft").css("left","18px");

      }
	} 
function myFunction(el) {
    el.parentElement.children[2].classList.toggle("show")
  //document.getElementById("myDropdown").classList.toggle("show");
  if($(".dist.fa-angle-up").length>0)
  {
    $(".dist.fa-angle-up").attr("class","dist fas fa-angle-down")
  }
  else{
    $(".fa-angle-down.dist").attr("class","dist fas fa-angle-up")
  }
}

function filterFunction(el) {
  if(el.parentElement.children[2].classList.length==1){
    el.parentElement.children[2].classList.add("show")
  }
  var input, filter, ul, li, a, i;
  input = el;
  filter = input.value.toUpperCase();
  div = el.parentElement.children[2];
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
function myFunctionDiv(el) {
    el.parentElement.children[2].classList.toggle("show")
  //document.getElementById("myDropdownDiv").classList.toggle("show");
  if($(".fa-angle-up.div").length>0)
  {
    $(".fa-angle-up.div").attr("class","fas div fa-angle-down")
  }
  else{
    $(".fa-angle-down.div").attr("class","fas div fa-angle-up")
  }
}
function filterFunctionDiv(el) {
  if(el.parentElement.children[2].classList.length==1){
    el.parentElement.children[2].classList.add("show")
  }
  var input, filter, ul, li, a, i;
  input = el;
  filter = input.value.toUpperCase();
  div = el.parentElement.children[2];
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
        filterlink += '{{route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])}}' + '?search='+$("#prod_name").val();
      } else {
        filterlink += '&search='+$("#prod_name").val();
      }
    }

    $(".attribute-input").each(function() {
      if ($(this).is(':checked')) {
        if (filterlink == '') {
          filterlink += '{{route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])}}' + '?'+$(this).attr('name')+'='+$(this).val();
        } else {
          filterlink += '&'+$(this).attr('name')+'='+$(this).val();
        }
      }
    });

    if ($("#sortby").val() != '') {
      if (filterlink == '') {
        filterlink += '{{route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])}}' + '?'+$("#sortby").attr('name')+'='+$("#sortby").val();
      } else {
        filterlink += '&'+$("#sortby").attr('name')+'='+$("#sortby").val();
      }
    }

    if ($("#min_price").val() != '') {
      if (filterlink == '') {
        filterlink += '{{route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])}}' + '?'+$("#min_price").attr('name')+'='+$("#min_price").val();
      } else {
        filterlink += '&'+$("#min_price").attr('name')+'='+$("#min_price").val();
      }
    }

    if ($("#max_price").val() != '') {
      if (filterlink == '') {
        filterlink += '{{route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])}}' + '?'+$("#max_price").attr('name')+'='+$("#max_price").val();
      } else {
        filterlink += '&'+$("#max_price").attr('name')+'='+$("#max_price").val();
      }
    }

    // console.log(filterlink);
    console.log(encodeURI(filterlink));
    if ($("#area_key").val() != '') {
      filterlink += '&'+$("#area_key").val()+"="+$("#area_value").val();
    }
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

      let fullUrl = '{{route('front.category', [Request::route('category'),Request::route('subcategory'),Request::route('childcategory')])}}?page='+page+'&search='+'{{request()->input('search')}}';

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