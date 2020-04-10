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
							<img src="{{ asset('assets/images/brand/ad4.jpg')}}" alt="" width="100%" />
						</div>
					</div>
				</div>
				<div class="col-md-9 product-tabs">
					<ul class="nav nav-tabs">
						<li  class="nav-item"><a class='nav-link active' data-toggle="tab" href="#home">BRANDS OF THE WEEK</a></li>
						<li class="nav-item"><a class='nav-link' data-toggle="tab" href="#menu1">FASHION BRANDS</a></li>
						<li class="nav-item"><a class='nav-link' data-toggle="tab" href="#menu3">MOBILE BRANDS</a></li>
					</ul>
					<div class="tab-content">
						<div id="home" class="tab-pane show active">
	
	
							<div class="row text-center pt-3">
								<div class="col-sm-3">
									<img src="{{ asset('assets/images/brand/Samsung_logo.png')}}" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="{{ asset('assets/images/brand/MSFT_logo.png')}}" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="{{ asset('assets/images/brand/Samsung_logo.png')}}" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="{{ asset('assets/images/brand/MSFT_logo.png')}}" alt="" width="80%" />
								</div>
							</div>
							<!-- End home tab content row 2 -->
	
							<div class="row text-center py-5">
								<div class="col-sm-3">
									<img src="{{ asset('assets/images/brand/MSFT_logo.png')}}" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="{{ asset('assets/images/brand/Samsung_logo.png')}}" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="{{ asset('assets/images/brand/MSFT_logo.png')}}" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="{{ asset('assets/images/brand/Samsung_logo.png')}}" alt="" width="80%" />
								</div>
							</div>
							<!-- End home tab content row 3 -->
	
							<div class="row text-center pb-3">
								<div class="col-sm-3">
									<img src="{{ asset('assets/images/brand/Samsung_logo.png')}}" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="{{ asset('assets/images/brand/MSFT_logo.png')}}" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="{{ asset('assets/images/brand/Samsung_logo.png')}}" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="{{ asset('assets/images/brand/MSFT_logo.png')}}" alt="" width="80%" />
								</div>
							</div>
							<!-- End home tab content row 4 -->
						</div>
						<!-- End home tab content  -->
	
						<div id="menu1" class="tab-pane fade">
							<h4>Same this</h4>
						</div>
						<!-- End fashion tab content  -->
						<div id="menu3" class="tab-pane fade">
							<h4>Same this</h4>
						</div>
						<!-- End MOBILE tab content  -->
	
					</div>
					<!--- end Tab-content  ------>
				</div>
				<!--- end Tab  ------>
			</div>
		</div>
	</div>

	{{--  brand ad end  --}}

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


				<!-- single product  --->
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
				<!-- end single product  --->

				<!-- single product  --->
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
				<!-- end single product  --->

				<!-- single product  --->
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
				<!-- end single product  --->

				<!-- single product  --->
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
				<!-- end single product  --->
				<!-- single product  --->
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
				<!-- end single product  --->
			</div>
		</div>
	</div>
	<!-- end thum-product section  --->


	{{--  best product  --}}

	<div class="container">
		<div id="top-heading">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-6">
						<h3>Hot Deal</h3>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-6 see-all text-right">
						<p><a href="#">See all Products <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></p>
					</div>
					<div class="clearfix"></div>
				</div>
		</div>

		<div class="">
			<div class="product-slide">


				<!-- single product  --->
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
				<!-- end single product  --->

				<!-- single product  --->
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
				<!-- end single product  --->

				<!-- single product  --->
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
				<!-- end single product  --->

				<!-- single product  --->
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
				<!-- end single product  --->
				<!-- single product  --->
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
				<!-- end single product  --->
			</div>
		</div>
	</div>
	<!-- end thum-product section  --->

		{{--  top ad  --}}

	
		<div class="half-width-ad">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<img src="{{ asset('assets/images/brand/robi.gif')}}" alt="" width="100%" />
					</div>
					<div class="col-md-6">
						<img src="{{ asset('assets/images/brand/tale.gif')}}" alt="" width="100%" />
					</div>
				</div>
			</div>
		</div>
		<!-- end top-ad  --->

		{{--  product  --}}

	
		<div class="container">
			<div id="top-heading">
					<div class="row">
						<div class="col-md-6 col-sm-6 col-xs-6">
							<h3>Best Seller</h3>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6 see-all text-right">
							<p><a href="#">See all Products <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></p>
						</div>
						<div class="clearfix"></div>
					</div>
			</div>
	
			<div class="">
				<div class="product-slide">
	
	
					<!-- single product  --->
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
					<!-- end single product  --->
	
					<!-- single product  --->
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
					<!-- end single product  --->
	
					<!-- single product  --->
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
					<!-- end single product  --->
	
					<!-- single product  --->
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
					<!-- end single product  --->
					<!-- single product  --->
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
					<!-- end single product  --->
				</div>
			</div>
		</div>
		<!-- end thum-product section  --->
	
	
		{{--  best product  --}}
	
		<div class="container">
			<div id="top-heading">
					<div class="row">
						<div class="col-md-6 col-sm-6 col-xs-6">
							<h3>Related Products</h3>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6 see-all text-right">
							<p><a href="#">See all Products <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></p>
						</div>
						<div class="clearfix"></div>
					</div>
			</div>
	
			<div class="">
				<div class="product-slide">
	
	
					<!-- single product  --->
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
					<!-- end single product  --->
	
					<!-- single product  --->
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
					<!-- end single product  --->
	
					<!-- single product  --->
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
					<!-- end single product  --->
	
					<!-- single product  --->
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
					<!-- end single product  --->
					<!-- single product  --->
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
					<!-- end single product  --->
				</div>
			</div>
		</div>
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