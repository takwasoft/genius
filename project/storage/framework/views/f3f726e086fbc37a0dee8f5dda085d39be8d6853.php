<?php $__env->startSection('content'); ?>

	<?php if($ps->slider == 1): ?>

		<?php if(count($sliders)): ?>

			<?php echo $__env->make('includes.slider-style', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
		<?php endif; ?>
	<?php endif; ?>

	<?php if($ps->slider == 1): ?>
		<!-- Hero Area Start -->
		<section class="hero-area">
			<div class="container">
				<?php if($ps->slider == 1): ?>

				<?php if(count($sliders)): ?>
					<div class="hero-area-slider">
						<div class="slide-progress"></div>
						<div class="intro-carousel">
							<?php $__currentLoopData = $sliders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<div class="intro-content <?php echo e($data->position); ?>" style="background-image: url(<?php echo e(asset('assets/images/sliders/'.$data->photo)); ?>)">
									<div class="container">
										<div class="row">
											<div class="col-lg-12">
												<div class="slider-content">
													<!-- layer 1 -->
													<div class="layer-1">
														<h4 style="font-size: <?php echo e($data->subtitle_size); ?>px; color: <?php echo e($data->subtitle_color); ?>" class="subtitle subtitle<?php echo e($data->id); ?>" data-animation="animated <?php echo e($data->subtitle_anime); ?>"><?php echo e($data->subtitle_text); ?></h4>
														<h2 style="font-size: <?php echo e($data->title_size); ?>px; color: <?php echo e($data->title_color); ?>" class="title title<?php echo e($data->id); ?>" data-animation="animated <?php echo e($data->title_anime); ?>"><?php echo e($data->title_text); ?></h2>
													</div>
													<!-- layer 2 -->
													<div class="layer-2">
														<p style="font-size: <?php echo e($data->details_size); ?>px; color: <?php echo e($data->details_color); ?>"  class="text text<?php echo e($data->id); ?>" data-animation="animated <?php echo e($data->details_anime); ?>"><?php echo e($data->details_text); ?></p>
													</div>
													<!-- layer 3 -->
													<div class="layer-3">
														<a href="<?php echo e($data->link); ?>" target="_blank" class="mybtn1"><span><?php echo e($langg->lang25); ?> <i class="fas fa-chevron-right"></i></span></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						</div>
					</div>
				<?php endif; ?>

			<?php endif; ?>
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
	<?php endif; ?>

	
	<?php if($ps->featured_category == 1): ?>

	
	
	

	

	<div id="brand-ad">
		<div class="container">
			<div class="row mt-4">
				<div class="col-md-3">
					<div class="card">
						<div class="card-header">
							<h4>Deals of the week !!</h4>
						</div>
						<div class="card-body">
							<img src="<?php echo e(asset('assets/images/brand/ad4.jpg')); ?>" alt="" width="100%" />
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
									<img src="<?php echo e(asset('assets/images/brand/Samsung_logo.png')); ?>" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="<?php echo e(asset('assets/images/brand/MSFT_logo.png')); ?>" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="<?php echo e(asset('assets/images/brand/Samsung_logo.png')); ?>" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="<?php echo e(asset('assets/images/brand/MSFT_logo.png')); ?>" alt="" width="80%" />
								</div>
							</div>
							<!-- End home tab content row 2 -->
	
							<div class="row text-center py-5">
								<div class="col-sm-3">
									<img src="<?php echo e(asset('assets/images/brand/MSFT_logo.png')); ?>" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="<?php echo e(asset('assets/images/brand/Samsung_logo.png')); ?>" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="<?php echo e(asset('assets/images/brand/MSFT_logo.png')); ?>" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="<?php echo e(asset('assets/images/brand/Samsung_logo.png')); ?>" alt="" width="80%" />
								</div>
							</div>
							<!-- End home tab content row 3 -->
	
							<div class="row text-center pb-3">
								<div class="col-sm-3">
									<img src="<?php echo e(asset('assets/images/brand/Samsung_logo.png')); ?>" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="<?php echo e(asset('assets/images/brand/MSFT_logo.png')); ?>" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="<?php echo e(asset('assets/images/brand/Samsung_logo.png')); ?>" alt="" width="80%" />
								</div>
								<div class="col-sm-3">
									<img src="<?php echo e(asset('assets/images/brand/MSFT_logo.png')); ?>" alt="" width="80%" />
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

	

	
	<div class="full-width-ad mt-4">
		<div class="container">
			<div class='row'>
				<div class="col-md-12 text-center">
					<img src="<?php echo e(asset('assets/images/brand/gp.gif')); ?>" alt="" width="100%" />
				</div>
			</div>
		</div>
	</div>
	

	<?php endif; ?>

	

	
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
								<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
								<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
								<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
								<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
								<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
								<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
								<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
								<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
								<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
								<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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

		

	
		<div class="half-width-ad">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<img src="<?php echo e(asset('assets/images/brand/robi.gif')); ?>" alt="" width="100%" />
					</div>
					<div class="col-md-6">
						<img src="<?php echo e(asset('assets/images/brand/tale.gif')); ?>" alt="" width="100%" />
					</div>
				</div>
			</div>
		</div>
		<!-- end top-ad  --->

		

	
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
									<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
									<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
									<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
									<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
									<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
									<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
									<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
									<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
									<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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
									<a href="preview.html"><img src="<?php echo e(asset('assets/images/brand/product.jpg')); ?>" alt="" /></a>
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

		

		
        <div id="about" class="mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="about-img">
                            <img src="<?php echo e(asset('assets/images/brand/01.jpg')); ?>" alt="" width="530px" height="245px" />
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
		

		
	<div class="full-width-ad my-4">
		<div class="container">
			<div class="col-md-12 text-center">
				<img src="<?php echo e(asset('assets/images/brand/gp2.gif')); ?>" alt="" width="100%" />
			</div>
		</div>
	</div>
	



	

	


<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
	<script>
        $(window).on('load',function() {

            setTimeout(function(){

                $('#extraData').load('<?php echo e(route('front.extraIndex')); ?>');

            }, 500);
        });

	</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.front', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>