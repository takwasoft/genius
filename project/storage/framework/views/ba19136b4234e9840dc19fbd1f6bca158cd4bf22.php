<?php $__env->startSection('styles'); ?>
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

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
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
        <?php echo $homeNotice; ?>

      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
	<?php if($ps->slider == 1): ?>

		<?php if(count($sliders)): ?>
 
			<?php echo $__env->make('includes.slider-style', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
		<?php endif; ?>
	<?php endif; ?>
	
	<?php if($ps->slider == 1): ?>
		<!-- Hero Area Start -->
		<section class="mt-4 hero-area" >
			<div class="container">
				<div class="row">
					<div id="mg-menu" class="col-lg-3 categorimenu-wrapper remove-padding d-none d-lg-block">
					<!--categorie menu start-->
					<div class="categories_menu categories_menu2" style="margin-left:15px">
						<div class="categories_title" style="background:#024c0b">
							<h2 class="categori_toggle" style="height:39px;margin-bottom:0;padding:0px 15px;line-height:40px;"><i class="fa fa-bars"></i>  <?php echo e($langg->lang14); ?> <i class="fa fa-angle-down arrow-down" style="float:right;line-height:40px;"></i></h2>
						</div>
						<div class="categories_menu_inner stay_home1" style="padding:0">
							<ul>
								<?php
								$i=1;
								?>
								<?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

								<li class="<?php echo e(count($category->subs) > 0 ? 'dropdown_list':''); ?> <?php echo e($i >= 15 ? 'rx-child' : ''); ?>">
								<?php if(count($category->subs) > 0): ?>
									<div class="img">
										<img src="<?php echo e(asset('assets/images/categories/'.$category->photo)); ?>" alt="">
									</div>
									<div class="link-area">
										<span><a href="<?php echo e(route('front.category',$category->slug)); ?>"><?php echo e($category->name); ?></a></span>
										<?php if(count($category->subs) > 0): ?>
										<a href="javascript:;">
											<i class="fa fa-angle-right" aria-hidden="true" ></i>
										</a>
										<?php endif; ?>
									</div>

								<?php else: ?>
									<a href="<?php echo e(route('front.category',$category->slug)); ?>"><img src="<?php echo e(asset('assets/images/categories/'.$category->photo)); ?>"> <?php echo e($category->name); ?></a>

								<?php endif; ?>
									<?php if(count($category->subs) > 0): ?>

									<?php
									$ck = 0;
									foreach($category->subs as $subcat) {
										if(count($subcat->childs) > 0) {
											$ck = 1;
											break;
										}
									}
									?>
									<ul class="<?php echo e($ck == 1 ? 'categories_mega_menu' : 'categories_mega_menu column_1'); ?> stay_home_3">
										<?php $__currentLoopData = $category->subs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subcat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
											<li>
												<a href="<?php echo e(route('front.subcat',['slug1' => $subcat->category->slug, 'slug2' => $subcat->slug])); ?>"><?php echo e($subcat->name); ?></a>
												<?php if(count($subcat->childs) > 0): ?>
													<div class="categorie_sub_menu">
														<ul>
															<?php $__currentLoopData = $subcat->childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $childcat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
															<li><a href="<?php echo e(route('front.childcat',['slug1' => $childcat->subcategory->category->slug, 'slug2' => $childcat->subcategory->slug, 'slug3' => $childcat->slug])); ?>"><?php echo e($childcat->name); ?></a></li>
															<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
														</ul>
													</div>
												<?php endif; ?>
											</li>
										<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
									</ul>

									<?php endif; ?>

									</li>

									<?php
									$i++;
									?>

									<?php if($i == 15): ?>
						                <li>
						                <a href="<?php echo e(route('front.categories')); ?>"><i class="fas fa-plus"></i> <?php echo e($langg->lang15); ?> </a>
						                </li>
						                <?php break; ?>
									<?php endif; ?>


									<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

							</ul>
						</div>
					</div>
					<!--categorie menu end-->
				</div>
					<div class="col-lg-9 col-12">
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
	<?php endif; ?>

	
	<?php if($ps->featured_category == 1): ?>

	
	
	

	

	<div id="brand-ad">
		<div class="container">
			<div class="mt-4 row">
				<div class="col-md-4 col-lg-3 d-none d-md-block">
					<div class="card">
						<div class="card-header">
							<h4>Deals of the week !!</h4>
						</div>
						<div class="card-body">
							<img  src="<?php echo e(asset('assets/images/brand/ad4.jpg')); ?>"  width="100%" />
						</div>
					</div>
				</div>
				<div class="col-md-8 col-lg-9 product-tabs d-none d-md-block">
					<ul class="nav nav-tabs brand-items">
						<li  class="nav-item"><a class='nav-link active' data-toggle="tab" href="#home">BRANDS OF THE WEEK</a></li>
						<?php $__currentLoopData = $brandCategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $brandCategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

						<li class="nav-item"><a class='nav-link' data-toggle="tab" href="#menu<?php echo e($brandCategory->id); ?>"><?php echo e($brandCategory->name); ?></a></li>
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						
					</ul>
					<div class="tab-content">
						<div id="home" class="tab-pane show active">
	
	
							<div class="text-center row ">
								<?php $__currentLoopData = $weekBrands; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $weekBrand): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<div class="py-4 col-sm-3">
								<a href="<?php echo e(route('front.brand',$weekBrand->name)); ?>">
								<img src="<?php echo e(URL::to('/images/'.$weekBrand->image)); ?>" alt="" width="80%" />
								</a>
									
								</div>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							
						
								
							</div>
							<!-- End home tab content row 2 -->
	
			
							<!-- End home tab content row 4 -->
						</div>
						<!-- End home tab content  -->
			<?php $__currentLoopData = $brandCategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $brandCategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<div id="menu<?php echo e($brandCategory->id); ?>" class="tab-pane fade">
							<div class="text-center row ">
								<?php $__currentLoopData = $brandCategory->brands; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $brand): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<div class="py-4 col-sm-3">
								<a href="<?php echo e(route('front.brand',$brand->name)); ?>">
								<img src="<?php echo e(URL::to('/images/'.$brand->image)); ?>" alt="" width="80%" />
								</a>
									
								</div>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							
						
								
							</div>
						</div>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>		
	
					</div>
					<!--- end Tab-content  ------>
				</div>
				<!--- end Tab  ------>
			</div>
		</div>
	</div>

	


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
							<?php $__currentLoopData = $services; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $service): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="p-0 col-6 col-xl-3">
                                    <div class="info-box">
                                        <div class="icon">
                                            <img src="<?php echo e($service->photo ?url('assets/images/services/'.$service->photo):url('assets/images/noimage.png')); ?>"> 
                                        </div>
                                        <div class="info">
                                            <div class="details text-dark">
                                                <h4 class="title"><?php echo e($service->title); ?></h4>
                                                <p class="text">
                                                    <?php echo e($service->details); ?>

                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end info are -->

	
	<div class="mt-4 full-width-ad">
		<div class="container">
			<div class='row'>
				<div class="text-center col-md-12">
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
					<div class="text-right col-md-6 col-sm-6 col-xs-6 see-all">
						<p><a href="<?php echo e(route('front.category')); ?>"">See all Products <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></p>
					</div>
					<div class="clearfix"></div>
				</div>
		</div>
 
		<div class="">
			<div class="product-slide">


				<?php $__currentLoopData = $feature_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<?php echo $__env->make('includes.product.sell', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				<!-- single product  --->
				
				<!-- end single product  --->

				
				<!-- end single product  --->
			</div>
		</div>
	</div>
	<!-- end thum-product section  --->


	
	<?php $__currentLoopData = $feature_categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $feature_category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

			<div class="container">
		<div id="top-heading">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-6">
						<h3><?php echo e($feature_category->name); ?></h3>
					</div>
					<div class="text-right col-md-6 col-sm-6 col-xs-6 see-all">
						<p><a href="<?php echo e(route('front.category',$feature_category->slug)); ?>">See all Products <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></p>
					</div>
					<div class="clearfix"></div>
				</div>
		</div>

		<div class="">
			<div class="product-slide">
							
<?php $__currentLoopData = $feature_category->products->where('status',1)->take(5); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php echo $__env->make('includes.product.sell', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
				<!-- end single product  --->
			</div>
		</div>
	</div>
	
	<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

	<!-- end thum-product section  --->

		

		
		<!-- end top-ad  --->

		

		<!-- end thum-product section  --->

		

		
        <div id="about" class="mt-5 d-none d-sm-block"> 
			
            
        </div>
		<!-- end about  --->
		

		
	<div class="my-4 full-width-ad">
		<div class="container">
			<div class="text-center col-md-12">
				<img class="lazy" data-src="<?php echo e(asset('assets/images/brand/gp2.gif')); ?>" alt="" width="100%" />
			</div>
		</div>
	</div>
	



	

	
	

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
<script>
    
</script>
	<?php if(count(explode("00",$homeNotice))<2): ?>
		<script>
		$('#notice').modal('show');
		</script>
	<?php endif; ?>
	<script>
        $(window).on('load',function() {

            setTimeout(function(){

                $('#about').load('<?php echo e(route('front.extraIndex')); ?>');

            }, 500);
        });

	</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.front', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>