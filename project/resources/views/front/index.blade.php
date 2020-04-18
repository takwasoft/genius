@extends('layouts.front')

@section('content')

	@if($ps->slider == 1)

		@if(count($sliders))

			@include('includes.slider-style')
		@endif
	@endif

	@if($ps->slider == 1)
		<!-- Hero Area Start -->
		<section class="hero-area">
			<div class="container">
				<div class="row">
					
					<div class="col-md-12">
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
				<div class="col-md-4 col-sm-4 text-center slider-content" >
					<h4 class="text-light mt-2">UP TO 70% OFF</h4>
					<p class="text-light">On House Hold Items</p>
				</div>
				<div class="col-md-4 col-sm-4 text-center slider-content ">
					<h4 class="text-light mt-2">BUY ONE GET ONE</h4>
					<p class="text-light">All Formal Shows</p>
				</div>
				<div class="col-md-4 col-sm-4 text-center slider-content ">
					<h4 class="text-light mt-2">UP TO 70% OFF</h4>
					<p class="text-light">On Smart Phones</p>
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
			<div class="row mt-4">
				<div class="col-md-3">
					<div class="card">
						<div class="card-header">
							<h4>Deals of the week !!</h4>
						</div>
						<div class="card-body">
							<img  src="{{ asset('assets/images/brand/ad4.jpg')}}"  width="100%" />
						</div>
					</div>
				</div>
				<div class="col-md-9 product-tabs">
					<ul class="nav nav-tabs brand-items">
						<li  class="nav-item"><a class='nav-link active' data-toggle="tab" href="#home">BRANDS OF THE WEEK</a></li>
						@foreach($brandCategories as $brandCategory)

						<li class="nav-item"><a class='nav-link' data-toggle="tab" href="#menu{{$brandCategory->id}}">{{$brandCategory->name}}</a></li>
						@endforeach
						
					</ul>
					<div class="tab-content">
						<div id="home" class="tab-pane show active">
	
	
							<div class="row text-center ">
								@foreach($weekBrands as $weekBrand)
								<div class="col-sm-3 py-4">
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
							<div class="row text-center ">
								@foreach($brandCategory->brands as $brand)
								<div class="col-sm-3 py-4">
								<a href="#">
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
        <section class="slider_bottom_banner mt-4">
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
                    <div class="col-lg-3 col-6">
                        <a href="https://www.google.com/" target="_blank" class="banner-effect">
                            <img src="https://geniusocean.com/demo/marketplace/assets/images/featuredbanner/1571287054feature3.jpg" alt="">
                        </a>
                    </div>
                    <div class="col-lg-3 col-6">
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
                                <div class="col-6 col-xl-3 p-0">
                                    <div class="info-box">
                                        <div class="icon">
                                            <img src="https://geniusocean.com/demo/marketplace/assets/images/services/1571288944s1.png">
                                        </div>
                                        <div class="info">
                                            <div class="details text-dark">
                                                <h4 class="title">FREE SHIPPING</h4>
                                                <p class="text">
                                                    Free Shipping All Order
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-xl-3 p-0">
                                    <div class="info-box">
                                        <div class="icon">
                                            <img src="https://geniusocean.com/demo/marketplace/assets/images/services/1571288950s2.png">
                                        </div>
                                        <div class="info">
                                            <div class="details">
                                                <h4 class="title">PAYMENT METHOD</h4>
                                                <p class="text">
                                                    Secure Payment
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-xl-3 p-0">
                                    <div class="info-box">
                                        <div class="icon">
                                            <img src="https://geniusocean.com/demo/marketplace/assets/images/services/1571288955s3.png">
                                        </div>
                                        <div class="info">
                                            <div class="details">
                                                <h4 class="title">30 DAY RETURNS</h4>
                                                <p class="text">
                                                    30-Day Return Policy
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-xl-3 p-0">
                                    <div class="info-box">
                                        <div class="icon">
                                            <img src="https://geniusocean.com/demo/marketplace/assets/images/services/1571288959s4.png">
                                        </div>
                                        <div class="info">
                                            <div class="details">
                                                <h4 class="title">HELP CENTER</h4>
                                                <p class="text">
                                                    24/7 Support System
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end info are -->

	{{--  ad  --}}
	<div class="full-width-ad mt-4">
		<div class="container">
			<div class='row'>
				<div class="col-md-12 text-center">
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
					<div class="col-md-6 col-sm-6 col-xs-6 see-all text-right">
						<p><a href="#">See all Products <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></p>
					</div>
					<div class="clearfix"></div>
				</div>
		</div>

		<div class="">
			<div class="product-slide">


				@foreach ($feature_products as $product)
					<div class="product-item">
					<div class="thumbnail">
						<a href="product-details.html">
							<div class="product-thum-img">
								<a href="{{URL::to('/item/'.$product->slug)}}"><img src="{{ $product->photo ? asset('assets/images/thumbnails/'.$product->thumbnail):asset('assets/images/noimage.png') }}" alt="" /></a>
							</div>
						</a>
						<h5 class="mt-2">{{$product->name}}</h5>
						<div class="price-details clearfix mt-3">
							<div class="price-number float-left">
								<p class="text-left" style="font-size:20px"><strong class="rupees">{{$product->price}} BDT</strong></p>
							</div>
							<div class="add-cart float-right">
								<span style="background: red;" class="add-to-cart add-to-cart-btn" data-href="{{ route('product.cart.add',$product->id) }}">
																	{{ $langg->lang56 }}
																</span>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
				@endforeach
				<!-- single product  --->
				
				<!-- end single product  --->

				
				<!-- end single product  --->
			</div>
		</div>
	</div>
	<!-- end thum-product section  --->
	@php
								$j=1;
								@endphp

	{{--  best product  --}}
	@foreach ($feature_categories as $feature_category)
@php
								$j++;
								@endphp
			<div class="container">
		<div id="top-heading">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-6">
						<h3>{{$feature_category->name}}</h3>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-6 see-all text-right">
						<p><a href="{{route('front.category',$feature_category->name)}}">See all Products <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></p>
					</div>
					<div class="clearfix"></div>
				</div>
		</div>

		<div class="">
			<div class="product-slide">
							
@foreach ($feature_category->products->take(5) as $product)

<div class="product-item">
					<div class="thumbnail">
						<a href="product-details.html">
							<div class="product-thum-img">
								<a href="{{URL::to('/item/'.$product->slug)}}"><img src="{{ $product->photo ? asset('assets/images/thumbnails/'.$product->thumbnail):asset('assets/images/noimage.png') }}" alt="" /></a>
							</div>
						</a>
						<h5 class="mt-2">{{$product->name}}</h5>
						<div class="price-details clearfix mt-3">
							<div class="price-number float-left">
								<p class="text-left" style="font-size:20px"><strong class="rupees">{{$product->price}} BDT</strong></p>
							</div>
							<div class="add-cart float-right">
								<span style="background: red;" class="add-to-cart add-to-cart-btn" data-href="{{ route('product.cart.add',$product->id) }}">
																	{{ $langg->lang56 }}
																</span>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>

@endforeach
				<!-- end single product  --->
			</div>
		</div>
	</div>
	@if($j%2==0)
	<section class="banner-section">
		<div class="container">
								<div class="row">
												<div class="col-lg-6" style="padding:10px">
							<div class="left">
								<a class="banner-effect" href="https://www.google.com/" target="_blank">
									<img src="https://geniusocean.com/demo/marketplace/assets/images/banners/1568889151top2.jpg" alt="">
								</a>
							</div>
						</div>
												<div class="col-lg-6"  style="padding:10px">
							<div class="left">
								<a class="banner-effect" href="" target="_blank">
									<img src="https://geniusocean.com/demo/marketplace/assets/images/banners/1568889146top1.jpg" alt="">
								</a>
							</div>
						</div>
										</div>
						</div>
	</section>
	@endif
	@endforeach

	<!-- end thum-product section  --->

		{{--  top ad  --}}

		
		<!-- end top-ad  --->

		{{--  product  --}}

		<!-- end thum-product section  --->

		{{--  about section  --}}

		
        <div id="about" class="mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="about-img">
                            <img src="{{ asset('assets/images/brand/01.jpg')}}" alt="" width="530px" height="245px" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h2 style="font-size:30px">WHAT IS TMIWEB.CO </h2>
                        <p style="font-size:15px;line-height:1.4">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed justo massa, venenatis sit amet lorem sit amet, dignissim laoreet tortor. Nunc iaculis ligula non dolor vulputate, a vulputate diam viverra. Etiam egestas gravida lorem at varius. Suspendisse
                            et tortor quis massa rutrum eleifend non nec dui. Praesent luctus convallis urna. Phasellus non tempor odio, sed faucibus arcu. Duis id convallis odio. Proin sit amet enim scelerisque, convallis metus mollis, varius turpis.
                        </p>
                        <button class="btn btn-success" type="button"style="font-size:13px" > Click Here</button>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row padding mt-4">
                    <div class="col-md-6">
                        <div class="col-sm-12">
                            <div class="icon-wrapper">
                                <i class="fa fa-search fa-2x" aria-hidden="true"></i>
                            </div>
                            <h3 class="text-center"> HOW TO BUY ? </h3>
                            <p style="font-size:15px;line-height:1.4">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed justo massa, venenatis sit amet lorem sit amet, dignissim laoreet tortor. Nunc iaculis ligula non dolor vulputate, a vulputate diam viverra. Etiam egestas gravida lorem at varius. Suspendisse
                                et tortor quis massa rutrum eleifend non nec dui. Etiam egestas gravida lorem at varius. Suspendisse et tortor quis massa rutrum eleifend non nec dui.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-sm-12">
                            <div class="icon-wrapper">
                                <i class="fa fa-search fa-2x" aria-hidden="true"></i>
                            </div>
                            <h3 class="text-center"> HOW TO BUY ? </h3>
                            <p style="font-size:15px;line-height:1.4">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed justo massa, venenatis sit amet lorem sit amet, dignissim laoreet tortor. Nunc iaculis ligula non dolor vulputate, a vulputate diam viverra. Etiam egestas gravida lorem at varius. Suspendisse
                                et tortor quis massa rutrum eleifend non nec dui. Etiam egestas gravida lorem at varius. Suspendisse et tortor quis massa rutrum eleifend non nec dui.
                            </p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <hr class="bottom-hr" />
                </div>
            </div>
        </div>
		<!-- end about  --->
		

		{{--  ad  --}}
	<div class="full-width-ad my-4">
		<div class="container">
			<div class="col-md-12 text-center">
				<img src="{{ asset('assets/images/brand/gp2.gif')}}" alt="" width="100%" />
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
        $(window).on('load',function() {

            setTimeout(function(){

                $('#extraData').load('{{route('front.extraIndex')}}');

            }, 500);
        });

	</script>
@endsection