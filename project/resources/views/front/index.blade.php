@extends('layouts.front')

@section('styles')
<style>


	@media(min-width:992px){
	#mg-menu{
		display:none;
	}
	.mainmenu-area .core-nav .wrap-core-nav-list.right {
     text-align: left!important; 
     margin-top: -1px;
	}

	.core-nav .wrap-core-nav-list.right {
    	text-align: left!important; 
	}
	#home-menu-item li a{
		font-weight: 600;
		font-size: 14px;
		text-transform: uppercase;
		text-decoration: none;
		color: #fff;
		display: block;
		padding: 8px 20px;
		border-right: 2px ridge #585858;
		-webkit-transition: all .9s;
		-moz-transition: all .9s;
		-o-transition: all .9s;
		-ms-transition: all .9s;
		transition: all .9s;
	}
	#home-menu-item li:last-child a{
		padding-right:20px!important;
	}
	#home-menu-item li:first-child a{
		border-top-left-radius: 6px;
		border-bottom-left-radius: 6px;
	}
	#home-menu-item li a.active{
		background: #024c0b;
	}
	#home-menu-item li a:hover, #home-menu-item a.active {
    background: #024c0b;
	}
	 .mainmenu-bb .mainmenu-area-innner {
        height:52px;
    }
	.bedge-section{
		display:none;
	}
	}
	@media(max-width:991px){
	#mg-menu{
		display:block;
	}
	}
</style>

@endsection

@section('content')
<div class="modal" id="notice">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Notice</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        {!!$homeNotice!!}
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
	@if($ps->slider == 1)

		@if(count($sliders))
 
			@include('includes.slider-style')
		@endif
	@endif
	
	@if($ps->slider == 1)
		<!-- Hero Area Start -->
		<section class="mt-4 hero-area" >
			<div class="container">
				<div class="row">
					<div id="mg-menu" class="col-lg-3 categorimenu-wrapper remove-padding d-none d-lg-block">
					<!--categorie menu start-->
					<div class="categories_menu categories_menu2" style="margin-left:15px">
						<div class="categories_title" style="background:#024c0b">
							<h2 class="categori_toggle" style="height:39px;margin-bottom:0;padding:0px 15px;line-height:40px;"><i class="fa fa-bars"></i>  {{ $langg->lang14 }} <i class="fa fa-angle-down arrow-down" style="float:right;line-height:40px;"></i></h2>
						</div>
						<div class="categories_menu_inner stay_home1" style="padding:0">
							<ul>
								@php
								$i=1;
								@endphp
								@foreach($categories as $category)

								<li class="{{count($category->subs) > 0 ? 'dropdown_list':''}} {{ $i >= 15 ? 'rx-child' : '' }}">
								@if(count($category->subs) > 0)
									<div class="img">
										<img src="{{ asset('assets/images/categories/'.$category->photo) }}" alt="">
									</div>
									<div class="link-area">
										<span><a href="{{ route('front.category',$category->slug) }}">{{ $category->name }}</a></span>
										@if(count($category->subs) > 0)
										<a href="javascript:;">
											<i class="fa fa-angle-right" aria-hidden="true" ></i>
										</a>
										@endif
									</div>

								@else
									<a href="{{ route('front.category',$category->slug) }}"><img src="{{ asset('assets/images/categories/'.$category->photo) }}"> {{ $category->name }}</a>

								@endif
									@if(count($category->subs) > 0)

									@php
									$ck = 0;
									foreach($category->subs as $subcat) {
										if(count($subcat->childs) > 0) {
											$ck = 1;
											break;
										}
									}
									@endphp
									<ul class="{{ $ck == 1 ? 'categories_mega_menu' : 'categories_mega_menu column_1' }} stay_home_3">
										@foreach($category->subs as $subcat)
											<li>
												<a href="{{ route('front.subcat',['slug1' => $subcat->category->slug, 'slug2' => $subcat->slug]) }}">{{$subcat->name}}</a>
												@if(count($subcat->childs) > 0)
													<div class="categorie_sub_menu">
														<ul>
															@foreach($subcat->childs as $childcat)
															<li><a href="{{ route('front.childcat',['slug1' => $childcat->subcategory->category->slug, 'slug2' => $childcat->subcategory->slug, 'slug3' => $childcat->slug]) }}">{{$childcat->name}}</a></li>
															@endforeach
														</ul>
													</div>
												@endif
											</li>
										@endforeach
									</ul>

									@endif

									</li>

									@php
									$i++;
									@endphp

									@if($i == 15)
						                <li>
						                <a href="{{ route('front.categories') }}"><i class="fas fa-plus"></i> {{ $langg->lang15 }} </a>
						                </li>
						                @break
									@endif


									@endforeach

							</ul>
						</div>
					</div>
					<!--categorie menu end-->
				</div>
					<div class="col-lg-9 col-12">
						@if($ps->slider == 1)

				@if(count($sliders))
					<div class="hero-area-slider">
						<div class="slide-progress"></div>
						<div class="intro-carousel">
							@foreach($sliders as $data)
								<div class="intro-content {{$data->position}}" style="background-image: url({{asset('assets/images/sliders/'.$data->photo)}})">
									<div class="container">
										<div class="row">
											<div class="col-lg-12">
												<div class="slider-content">
													<!-- layer 1 -->
													<div class="layer-1">
														<h4 style="font-size: {{$data->subtitle_size}}px; color: {{$data->subtitle_color}}" class="subtitle subtitle{{$data->id}}" data-animation="animated {{$data->subtitle_anime}}">{{$data->subtitle_text}}</h4>
														<h2 style="font-size: {{$data->title_size}}px; color: {{$data->title_color}}" class="title title{{$data->id}}" data-animation="animated {{$data->title_anime}}">{{$data->title_text}}</h2>
													</div>
													<!-- layer 2 -->
													<div class="layer-2">
														<p style="font-size: {{$data->details_size}}px; color: {{$data->details_color}}"  class="text text{{$data->id}}" data-animation="animated {{$data->details_anime}}">{{$data->details_text}}</p>
													</div>
													<!-- layer 3 -->
													<div class="layer-3">
														<a href="{{$data->link}}" target="_blank" class="mybtn1"><span>{{ $langg->lang25 }} <i class="fas fa-chevron-right"></i></span></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							@endforeach
						</div>
					</div>
				@endif

			@endif
			<div class="row"style="background:#024c0b;margin:0;border-top:1px solid white">
				<div class="text-center col-4 slider-content" >
					<h4 class="mt-2 text-light slide-d-head">UP TO 70% OFF</h4>
					<p class="text-light slide-d-text">On House Hold Items</p>
				</div>
				<div class="text-center  col-4 slider-content">
					<h4 class="mt-2 text-light slide-d-head">BUY ONE GET ONE</h4>
					<p class="text-light slide-d-text">All Formal Shows</p>
				</div>
				<div class="text-center  col-4 slider-content">
					<h4 class="mt-2 text-light slide-d-head">UP TO 70% OFF</h4>
					<p class="text-light slide-d-text">On Smart Phones</p>
				</div>
			</div>
					</div>
				</div>
			
			</div>

		</section>
		<!-- Hero Area End -->
	@endif

	
	@if($ps->featured_category == 1)

	{{-- Slider buttom Category Start --}}
	{{--  <section class="slider-buttom-category d-none d-md-block">
		<div class="container-fluid">
			<div class="row">
				@foreach($categories->where('is_featured','=',1) as $cat)
					<div class="col-xl-2 col-lg-3 col-md-4 sc-common-padding">
						<a href="{{ route('front.category',$cat->slug) }}" class="single-category">
							<div class="left">
								<h5 class="title">
									{{ $cat->name }}
								</h5>
								<p class="count">
									{{ count($cat->products) }} {{ $langg->lang4 }}
								</p>
							</div>
							<div class="right">
								<img src="{{asset('assets/images/categories/'.$cat->image) }}" alt="">
							</div>
						</a>
					</div>
				@endforeach
			</div>
		</div>
	</section>  --}}
	{{-- Slider buttom banner End --}}

	{{--  brand ad  --}}

	<div id="brand-ad">
		<div class="container">
			<div class="mt-4 row">
				<div class="col-md-4 col-lg-3 d-none d-md-block">
					<div class="card">
						<div class="card-header">
							<h4>Deals of the week !!</h4>
						</div>
						<div class="card-body">
							<img  src="{{ asset('assets/images/brand/ad4.jpg')}}"  width="100%" />
						</div>
					</div>
				</div>
				<div class="col-md-8 col-lg-9 product-tabs d-none d-md-block">
					<ul class="nav nav-tabs brand-items">
						<li  class="nav-item"><a class='nav-link active' data-toggle="tab" href="#home">BRANDS OF THE WEEK</a></li>
						@foreach($brandCategories as $brandCategory)

						<li class="nav-item"><a class='nav-link' data-toggle="tab" href="#menu{{$brandCategory->id}}">{{$brandCategory->name}}</a></li>
						@endforeach
						
					</ul>
					<div class="tab-content">
						<div id="home" class="tab-pane show active">
	
	
							<div class="text-center row ">
								@foreach($weekBrands as $weekBrand)
								<div class="py-4 col-sm-3">
								<a href="{{ route('front.brand',$weekBrand->name) }}">
								<img src="{{URL::to('/images/'.$weekBrand->image)}}" alt="" width="80%" />
								</a>
									
								</div>
								@endforeach
							
						
								
							</div>
							<!-- End home tab content row 2 -->
	
			
							<!-- End home tab content row 4 -->
						</div>
						<!-- End home tab content  -->
			@foreach($brandCategories as $brandCategory)
						<div id="menu{{$brandCategory->id}}" class="tab-pane fade">
							<div class="text-center row ">
								@foreach($brandCategory->brands as $brand)
								<div class="py-4 col-sm-3">
								<a href="{{ route('front.brand',$brand->name) }}">
								<img src="{{URL::to('/images/'.$brand->image)}}" alt="" width="80%" />
								</a>
									
								</div>
								@endforeach
							
						
								
							</div>
						</div>
				@endforeach		
	
					</div>
					<!--- end Tab-content  ------>
				</div>
				<!--- end Tab  ------>
			</div>
		</div>
	</div>

	{{--  brand ad end  --}}


	<!-- offer ad -->
        <section class="mt-4 slider_bottom_banner d-none d-sm-block">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-6">
                        <a href="https://www.google.com/" target="_blank" class="banner-effect">
                            <img src="https://geniusocean.com/demo/marketplace/assets/images/featuredbanner/1571287040feature1.jpg" alt="">
                        </a>
                    </div>
                    <div class="col-lg-3 col-6">
                        <a href="https://www.google.com/" target="_blank" class="banner-effect">
                            <img src="https://geniusocean.com/demo/marketplace/assets/images/featuredbanner/1571287047feature2.jpg" alt="">
                        </a>
                    </div>
                    <div class="mt-3 col-lg-3 col-6 mt-lg-0">
                        <a href="https://www.google.com/" target="_blank" class="banner-effect">
                            <img src="https://geniusocean.com/demo/marketplace/assets/images/featuredbanner/1571287054feature3.jpg" alt="">
                        </a>
                    </div>
                    <div class="mt-3 col-lg-3 col-6 mt-lg-0">
                        <a href="https://www.google.com/" target="_blank" class="banner-effect">
                            <img src="https://geniusocean.com/demo/marketplace/assets/images/featuredbanner/1571287106feature4.jpg" alt="">
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <!-- offer ad end -->

        <!-- info area -->

        <section class="info-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="info-big-box">
                            <div class="row">
							@foreach($services as $service)
                                <div class="p-0 col-6 col-xl-3">
                                    <div class="info-box">
                                        <div class="icon">
                                            <img src="{{$service->photo ?url('assets/images/services/'.$service->photo):url('assets/images/noimage.png')}}"> 
                                        </div>
                                        <div class="info">
                                            <div class="details text-dark">
                                                <h4 class="title">{{$service->title}}</h4>
                                                <p class="text">
                                                    {{$service->details}}
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
            </div>
        </section>
        <!-- end info are -->

	{{--  ad  --}}
	<div class="mt-4 full-width-ad">
		<div class="container">
			<div class='row'>
				<div class="text-center col-md-12">
					<img src="{{ asset('assets/images/brand/gp.gif')}}" alt="" width="100%" />
				</div>
			</div>
		</div>
	</div>
	{{--  end ad  --}}

	@endif

	{{--  product  --}}

	
	<div class="container">
		<div id="top-heading">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-6">
						<h3>New Products</h3>
					</div>
					<div class="text-right col-md-6 col-sm-6 col-xs-6 see-all">
						<p><a href="{{route('front.category')}}"">See all Products <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></p>
					</div>
					<div class="clearfix"></div>
				</div>
		</div>
 
		<div class="">
			<div class="product-slide">


				@foreach ($feature_products as $product)
					@include('includes.product.sell')
				@endforeach
				<!-- single product  --->
				
				<!-- end single product  --->

				
				<!-- end single product  --->
			</div>
		</div>
	</div>
	<!-- end thum-product section  --->


	{{--  best product  --}}
	@foreach ($feature_categories as $feature_category)

			<div class="container">
		<div id="top-heading">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-6">
						<h3>{{$feature_category->name}}</h3>
					</div>
					<div class="text-right col-md-6 col-sm-6 col-xs-6 see-all">
						<p><a href="{{route('front.category',$feature_category->slug)}}">See all Products <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></p>
					</div>
					<div class="clearfix"></div>
				</div>
		</div>

		<div class="">
			<div class="product-slide">
							
@foreach ($feature_category->products->where('status',1)->take(5) as $product)
@include('includes.product.sell')
@endforeach 
				<!-- end single product  --->
			</div>
		</div>
	</div>
	
	@endforeach

	<!-- end thum-product section  --->

		{{--  top ad  --}}

		
		<!-- end top-ad  --->

		{{--  product  --}}

		<!-- end thum-product section  --->

		{{--  about section  --}}

		
        <div id="about" class="mt-5 d-none d-sm-block"> 
			
            
        </div>
		<!-- end about  --->
		

		{{--  ad  --}}
	<div class="my-4 full-width-ad">
		<div class="container">
			<div class="text-center col-md-12">
				<img class="lazy" data-src="{{ asset('assets/images/brand/gp2.gif')}}" alt="" width="100%" />
			</div>
		</div>
	</div>
	{{--  end ad  --}}



	

	{{--  <section id="extraData">
		<div class="text-center">
			<img src="{{asset('assets/images/'.$gs->loader)}}">
		</div>
	</section>  --}}
	

@endsection

@section('scripts')
<script>
    
</script>
	@if(count(explode("00",$homeNotice))<2)
		<script>
		$('#notice').modal('show');
		</script>
	@endif
	<script>
        $(window).on('load',function() {

            setTimeout(function(){

                $('#about').load('{{route('front.extraIndex')}}');

            }, 500);
        });

	</script>
@endsection