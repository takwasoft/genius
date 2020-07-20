<!DOCTYPE html>
<html lang="en">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php if(isset($page->meta_tag) && isset($page->meta_description)): ?>
        <meta name="keywords" content="<?php echo e($page->meta_tag); ?>">
        <meta name="description" content="<?php echo e($page->meta_description); ?>">
		<title><?php echo e($gs->title); ?></title>
		  <meta property="og:title" content="<?php echo e($gs->title); ?>">
    <?php elseif(isset($blog->meta_tag) && isset($blog->meta_description)): ?>
        <meta name="keywords" content="<?php echo e($blog->meta_tag); ?>">
        <meta name="description" content="<?php echo e($blog->meta_description); ?>">
		<title><?php echo e($gs->title); ?></title>
    <?php elseif(isset($productt)): ?>
		<meta name="keywords" content="<?php echo e(!empty($productt->meta_tag) ? implode(',', $productt->meta_tag ): ''); ?>">
		<meta name="description" content="<?php echo e($productt->meta_description != null ? $productt->meta_description : strip_tags($productt->description)); ?>">
	    <meta property="og:title" content="<?php echo e($productt->name); ?>" />
	    <meta property="og:description" content="<?php echo e($productt->meta_description != null ? $productt->meta_description : strip_tags($productt->description)); ?>" />
	    <meta property="og:image" content="<?php echo e(asset('assets/images/'.$productt->photo)); ?>" />
	    <meta name="author" content="TakwaSoft">
    	<title><?php echo e(substr($productt->name, 0,11)."-"); ?><?php echo e($gs->title); ?></title>
    <?php else: ?>
	    <meta name="keywords" content="<?php echo e($seo->meta_keys); ?>">
	    <meta name="author" content="TakwaSoft">
		<title><?php echo e($gs->title); ?></title>
    <?php endif; ?>
	<!-- favicon -->
	<link rel="icon"  type="image/x-icon" href="<?php echo e(asset('assets/images/'.$gs->favicon)); ?>"/>
	<!-- bootstrap -->
	<link rel="stylesheet" href="<?php echo e(asset('assets/front/css/bootstrap.min.css')); ?>">
	<!-- Plugin css -->
	<link rel="stylesheet" href="<?php echo e(asset('assets/front/css/plugin.css')); ?>">
	<link rel="stylesheet" href="<?php echo e(asset('assets/front/css/animate.css')); ?>">
	<link rel="stylesheet" href="<?php echo e(asset('assets/front/css/toastr.css')); ?>">
	<link rel="stylesheet" href="<?php echo e(asset('assets/front/css/toastr.css')); ?>"> 

	<!-- jQuery Ui Css-->
	<link rel="stylesheet" href="<?php echo e(asset('assets/front/jquery-ui/jquery-ui.min.css')); ?>">
	<link rel="stylesheet" href="<?php echo e(asset('assets/front/jquery-ui/jquery-ui.structure.min.css')); ?>">



	<!-- stylesheet -->
	<link rel="stylesheet" href="<?php echo e(asset('assets/front/css/style.css')); ?>">
	<link rel="stylesheet" href="<?php echo e(asset('assets/front/css/custom.css')); ?>">
	<link rel="stylesheet" href="<?php echo e(asset('assets/front/css/common.css')); ?>">
	<!-- responsive -->
	<link rel="stylesheet" href="<?php echo e(asset('assets/front/css/responsive.css')); ?>">
	<link rel="stylesheet" href="<?php echo e(asset('assets/front/css/common-responsive.css')); ?>">

    <!--Updated CSS-->
 <link rel="stylesheet" href="<?php echo e(asset('assets/front/css/styles.php?color='.str_replace('#','',$gs->colors).'&amp;'.'header_color='.str_replace('#','',$gs->header_color).'&amp;'.'footer_color='.str_replace('#','',$gs->footer_color).'&amp;'.'copyright_color='.str_replace('#','',$gs->copyright_color).'&amp;'.'menu_color='.str_replace('#','',$gs->menu_color).'&amp;'.'menu_hover_color='.str_replace('#','',$gs->menu_hover_color))); ?>">




 
	<?php echo $__env->yieldContent('styles'); ?>

</head>

<body>
  <?php if($gs->is_messenger == 1): ?>
    <!--Start of messenger Script-->
      <?php echo $gs->messenger; ?>

    <!--End of messenger Script-->
  <?php endif; ?>

<!--<?php if($gs->is_loader == 1): ?>-->
<!--	<div class="preloader" id="preloader" style="background: url(<?php echo e(asset('assets/images/'.$gs->loader)); ?>) no-repeat scroll center center #FFF;"></div>-->
<!--<?php endif; ?>-->

<?php if($gs->is_popup== 1): ?>

<?php if(isset($visited)): ?>
    <div style="display:none">
        <img src="<?php echo e(asset('assets/images/'.$gs->popup_background)); ?>">
    </div>
  
    <!--  Starting of subscribe-pre-loader Area   -->
    <div class="subscribe-preloader-wrap" id="subscriptionForm" style="display: none;">
        <div class="subscribePreloader__thumb" style="background-image: url(<?php echo e(asset('assets/images/'.$gs->popup_background)); ?>);">
            <span class="preload-close"><i class="fas fa-times"></i></span>
            <div class="text-center subscribePreloader__text">
                <h1><?php echo e($gs->popup_title); ?></h1>
                <p><?php echo e($gs->popup_text); ?></p>
                <form action="<?php echo e(route('front.subscribe')); ?>" id="subscribeform" method="POST">
                    <?php echo e(csrf_field()); ?>

                    <div class="form-group">
                        <input type="email" name="email"  placeholder="<?php echo e($langg->lang741); ?>" required="">
                        <button id="sub-btn" type="submit"><?php echo e($langg->lang742); ?></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!--  Ending of subscribe-pre-loader Area   -->

<?php endif; ?>

<?php endif; ?>


	<section class="top-header" style='background-color: #024c0b;padding: 7px 0px 7px!important;'>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 remove-padding">
					<div class="content">
						<div class="left-content">
							<div class="list text-light"style="font-size:14px;padding-top: 2px;">
								<span>Need help?</span> call us <span class="number"><?php echo e($ps->phone); ?></span>
							</div>
						</div>
						<div class="right-content">
							<div class="list">
								<ul>
									<?php if(!Auth::guard('web')->check()): ?>
									<li class="login">
										<a href="<?php echo e(route('user.login')); ?>" class="sign-log">
											<div class="links">
												<span class="sign-in"><?php echo e($langg->lang12); ?></span> <span>|</span>
												<span class="join"><?php echo e($langg->lang13); ?></span>
											</div>
										</a>
									</li>
									<?php else: ?>
										<li class="profilearea my-dropdown">
											<a href="javascript: ;" id="profile-icon" class="profile carticon">
												<span class="text">
													<i class="far fa-user"></i>	<?php echo e($langg->lang11); ?> <i class="fas fa-chevron-down"></i>
												</span>
											</a>
											<div class="my-dropdown-menu profile-dropdown">
												<ul class="profile-links">
													<li>
														<a href="<?php echo e(route('user-dashboard')); ?>"><i class="fas fa-angle-double-right"></i> <?php echo e($langg->lang221); ?></a>
													</li>
													<?php if(Auth::user()->IsVendor()): ?>
													<li>
														<a href="<?php echo e(route('vendor-dashboard')); ?>"><i class="fas fa-angle-double-right"></i> <?php echo e($langg->lang222); ?></a>
													</li>
													<?php endif; ?>

													<li>
														<a href="<?php echo e(route('user-profile')); ?>"><i class="fas fa-angle-double-right"></i> <?php echo e($langg->lang205); ?></a>
													</li>

													<li>
														<a href="<?php echo e(route('user-logout')); ?>"><i class="fas fa-angle-double-right"></i> <?php echo e($langg->lang223); ?></a>
													</li>
												</ul>
											</div>
										</li>
									<?php endif; ?>


                        			<?php if($gs->reg_vendor == 1): ?>
										<li>
                        				<?php if(Auth::check()): ?>
	                        				<?php if(Auth::guard('web')->user()->is_vendor == 2): ?>
	                        					<a href="<?php echo e(route('vendor-dashboard')); ?>" class="sell-btn"><?php echo e($langg->lang220); ?></a>
	                        				<?php else: ?>
	                        					<a href="<?php echo e(route('user-package')); ?>" class="sell-btn"><?php echo e($langg->lang220); ?></a>
	                        				<?php endif; ?>
										</li>
                        				
										<?php endif; ?>
									<?php endif; ?>


								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Top Header Area End -->

	<!-- Logo Header Area Start -->
	<section class="logo-header">
		<div class="container">
			<div class="mt-3 row mt-sm-0">
				
				<div class="col-xl-8 col-md-7 col-12 remove-padding">
					<div class="search-box-wrapper">
						<div class="search-box" >
							<div class="categori-container" id="catSelectForm">
								<select name="category" id="category_select" class="categoris">
									<option value=""><?php echo e($langg->lang1); ?></option>
									<?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									<option value="<?php echo e($data->slug); ?>" <?php echo e(Request::route('category') == $data->slug ? 'selected' : ''); ?>><?php echo e($data->name); ?></option>
									<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
								</select>
							</div>

							<form id="searchForm" class="search-form" action="<?php echo e(route('front.category', [Request::route('category'),Request::route('subcategory'),Request::route('childcategory')])); ?>" method="GET">
								<?php if(!empty(request()->input('sort'))): ?>
									<input type="hidden" name="sort" value="<?php echo e(request()->input('sort')); ?>">
								<?php endif; ?>
								<?php if(!empty(request()->input('minprice'))): ?>
									<input type="hidden" name="minprice" value="<?php echo e(request()->input('minprice')); ?>">
								<?php endif; ?>
								<?php if(!empty(request()->input('maxprice'))): ?>
									<input type="hidden" name="maxprice" value="<?php echo e(request()->input('maxprice')); ?>">
								<?php endif; ?>
								<input type="text" id="prod_name" name="search" placeholder="<?php echo e($langg->lang2); ?>" value="<?php echo e(request()->input('search')); ?>" autocomplete="off">
								<div class="autocomplete">
								  <div id="myInputautocomplete-list" class="autocomplete-items">
								  </div>
								</div>
								<button type="submit" style='background: #e2dede;'><i class="icofont-search-1"></i> <span class="d-none d-sm-inline-block">Search</span></button>
							</form>
						</div>
					</div>
				</div>
				<div class="mt-3 col-xl-4 col-md-5 col-12 mt-md-0 remove-padding">
				<div class="input-group cart-sm-item" id="d-cart">
					<span class="input-group-btn"style=" border-radius: 50px;border-top-right-radius: 0; border-bottom-right-radius: 0;background: #e2dede;">
						<button class="btn " type="button">
							<a href="<?php echo e(route('front.cart')); ?>"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
						</button>
						
					</span>
					<div class="cart-text" style="padding-top: 7px; width: 52%;text-align: center;border: 1px solid #d0d0d2;"><span><?php echo e(Session::has('cart') ? count(Session::get('cart')->items) : '0'); ?> items | </span> <?php echo e(Session::has('cart') ?Session::get('cart')->totalPrice:'0'); ?> BDT</div>
					<span class="input-group-btn"style="background: #e2dede;border-right: 1px solid #bebec3;">
						<button class="btn " type="button">
							<a href="<?php echo e(route('product.compare')); ?>"><i class="icofont-exchange" aria-hidden="true" style="font-size:20px;"></i>
							<?php echo e(Session::has('compare') ? count(Session::get('compare')->items) : '0'); ?>

							</a>
						</button>
						
					</span>
					<span class="input-group-btn" style=" border-radius: 50px;border-top-left-radius: 0; border-bottom-left-radius: 0;background: #e2dede;">
						<button class="btn" type="button">
						<?php if(Auth::guard('web')->check()): ?>
							<span><a href="<?php echo e(route('user-wishlists')); ?>"><i class="fa fa-heart " aria-hidden="true"></i><?php echo e(count(Auth::user()->wishlists)); ?></a></span>
						<?php else: ?>
							<span>
							<a href="javascript:;" data-toggle="modal" id="wish-btn" data-target="#comment-log-reg" class="wish">
							<i class="fa fa-heart " aria-hidden="true"></i>0</a>
							</span>
						<?php endif; ?>
						</button>
					</span>
				</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Logo Header Area End -->
	<!-- start brand area  --->
	 <div id="brand-area mb-2">
            <div class="container">
                <div class="mb-3 row">
					<div class="col-md-4">
                    <a href="<?php echo e(route('front.index')); ?>"><img src="<?php echo e(asset('assets/images/'.$gs->logo)); ?>"  alt="" width="90%" /></a>
                </div>
                <div class="col-md-4 d-none d-block-sm">
                    <img src="<?php echo e(asset('assets/images/brand/ad1.jpg')); ?>" alt="" width="100%" />
                </div>
                <div class="col-md-4 d-none d-block-sm">
                    <img src="<?php echo e(asset('assets/images/brand/ad2.jpg')); ?>" alt="" width="100%" />
                </div>
				</div>
            </div>
        </div>
        <!-- end brand area  --->

	<!--Main-Menu Area Start-->
	<div class="mainmenu-area mainmenu-bb">
		<div class="container">
			<div class="row align-items-center mainmenu-area-innner" style="">
				<div id="mg-menu" class="col-lg-3 col-md-6 categorimenu-wrapper remove-padding">
					<!--categorie menu start-->
					<div class="categories_menu">
						<div class="categories_title" style="background:#024c0b">
							<h2 class="categori_toggle" style="height:39px;"><i class="fa fa-bars"></i>  <?php echo e($langg->lang14); ?> <i class="fa fa-angle-down arrow-down"></i></h2>
						</div>
						<div class="categories_menu_inner stay_home">
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
											<i class="fa fa-angle-right" aria-hidden="true"></i>
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
									<ul class="<?php echo e($ck == 1 ? 'categories_mega_menu' : 'categories_mega_menu column_1'); ?>">
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
				<div class="col-lg-9 col-md-6 mainmenu-wrapper remove-padding" >
					<nav hidden>
						<div class="nav-header">
							<button class="toggle-bar"><span class="fa fa-bars"></span></button>
						</div>
						<ul class="menu" id="home-menu-item">
							<?php if($gs->is_home == 1): ?>
							<li><a href="<?php echo e(route('front.index')); ?>"><?php echo e($langg->lang17); ?></a></li>
							<?php endif; ?>
							

							<li><a href="<?php echo e(route('front.index')); ?>" class="active">Home</a></li>
							


							
							<?php $__currentLoopData = DB::table('pages')->where('header','=',1)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<li><a href="<?php echo e(route('front.page',$data->slug)); ?>"><?php echo e($data->title); ?></a></li>
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							<?php if($gs->is_contact == 1): ?>
							<li><a href="<?php echo e(route('front.contact')); ?>"><?php echo e($langg->lang20); ?></a></li>
							<?php endif; ?>

							<?php if($gs->is_faq == 1): ?>
							<li><a href="<?php echo e(route('front.faq')); ?>"><?php echo e($langg->lang19); ?></a></li>
							<?php endif; ?>
							
						</ul>

					</nav>
				</div>
			</div>
		</div>
	</div>
	<!--Main-Menu Area End-->

<?php echo $__env->yieldContent('content'); ?>

	<!-- Footer Area Start -->
	<footer class="footer" id="footer" style="background:#7F7F7F">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-4">
					
						<h3 class="text-light"><?php echo e($gs->title); ?></h3>
						<p class="text-light">Our Address | The Rules Of Order</p>
						<hr>
						<img src="<?php echo e($gs->footer_image ? asset('assets/images/'.$gs->footer_image):asset('assets/images/noimage.png')); ?>" alt="">
				</div>
				<div class="col-md-6 col-lg-4 ">
					<h3 class="text-light">Website Views</h3>
                    <hr>
                    <p class="text-light">Today : <?php echo e($todayCount); ?> Views <br> Previous Day : <?php echo e($previousDayCount); ?> Views <br> Total : <?php echo e($totalCount); ?> Views</p>
                    <hr>
                    <p class="text-light">Your IP : <?php echo e($ip); ?> </p>
				</div>
				<div class="col-md-6 col-lg-4">
					<h4 class="text-light">1000+ products are being added every day on our website.</h4>
                    <p class="text-light">Subscribe now to get information of all kinds of latest product. </p>
                    <form class="newsletter form-inline">
                        <input type="text" class="form-control" placeholder="Email">
                        <button class="btn btn-primary" type="button">
                        Subscribe
                    </button>
					</form>
					<div class="mt-2 fotter-social-links">
						<h5 class="text-light">Or, keep eye on</h5>
						<ul>

                               	     <?php if(App\Models\Socialsetting::find(1)->f_status == 1): ?>
                                      <li>
                                        <a href="<?php echo e(App\Models\Socialsetting::find(1)->facebook); ?>" class="facebook fb_social_icon" target="_blank">
                                            <i class="fab fa-facebook-square fa-3x" aria-hidden="true"></i>
                                        </a>
                                      </li>
                                      <?php endif; ?>



                                      <?php if(App\Models\Socialsetting::find(1)->t_status == 1): ?>
                                      <li>
                                        <a href="<?php echo e(App\Models\Socialsetting::find(1)->twitter); ?>" class="twitter tw_social_icon" target="_blank">
                                            <i class="fab fa-twitter-square fa-3x" aria-hidden="true"></i>
                                        </a>
                                      </li>
                                      <?php endif; ?>

                                      <?php if(App\Models\Socialsetting::find(1)->l_status == 1): ?>
                                      <li>
                                        <a href="<?php echo e(App\Models\Socialsetting::find(1)->linkedin); ?>" class="linkedin lk_social_icon" target="_blank">
                                            <i class="fab fa-linkedin fa-3x" aria-hidden="true"></i>
                                        </a>
                                      </li>
                                      <?php endif; ?>

                                      <?php if(App\Models\Socialsetting::find(1)->d_status == 1): ?>
                                      <li>
                                        <a href="<?php echo e(App\Models\Socialsetting::find(1)->dribble); ?>" class="youtube yt_social_icon" target="_blank">
                                           <i class="fab fa-youtube-square fa-3x" aria-hidden="true"></i>
                                        </a>
                                      </li>
                                      <?php endif; ?>

						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="copy-bg">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
							<div class="content">
								<div class="content">
									<p>&copy; All rights Reseverd | Design by <a href="https://www.takwasoft.com">takwasoft.com</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Area End -->

	<!-- Back to Top Start -->
	<div class="bottomtotop">
		<i class="fas fa-chevron-right"></i>
	</div>
	<!-- Back to Top End -->

	<!-- LOGIN MODAL -->
	<div class="modal fade" id="comment-log-reg" tabindex="-1" role="dialog" aria-labelledby="comment-log-reg-Title"
		aria-hidden="true"> 
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<nav class="comment-log-reg-tabmenu">
						<div class="nav nav-tabs" id="nav-tab" role="tablist">
							<a class="nav-item nav-link login active" id="nav-log-tab1" data-toggle="tab" href="#nav-log1"
								role="tab" aria-controls="nav-log" aria-selected="true">
								<?php echo e($langg->lang197); ?>

							</a>
							<a class="nav-item nav-link" id="nav-reg-tab1" data-toggle="tab" href="#nav-reg1" role="tab"
								aria-controls="nav-reg" aria-selected="false">
								<?php echo e($langg->lang198); ?>

							</a>
						</div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-log1" role="tabpanel"
							aria-labelledby="nav-log-tab1">
							<div class="login-area">
								<div class="header-area">
									<h4 class="title"><?php echo e($langg->lang172); ?></h4>
								</div>
								<div class="login-form signin-form">
									<?php echo $__env->make('includes.admin.form-login', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
									<form class="mloginform" action="<?php echo e(route('user.login.submit')); ?>" method="POST">
                  <?php echo e(csrf_field()); ?>

                  <div class="form-input">
                    <input type="text" name="phone" placeholder="Enter Your Phone Or Email" required="">
                    <i class="icofont-user-alt-5"></i>
                  </div>
                  <div class="form-input">
                    <input type="password" class="Password" name="password" placeholder="<?php echo e($langg->lang174); ?>"
                      required="">
                    <i class="icofont-ui-password"></i>
                  </div>
                  <div class="form-forgot-pass">
                    <div class="left">
                      <input type="checkbox" name="remember" id="mrp" <?php echo e(old('remember') ? 'checked' : ''); ?>>
                      <label for="mrp"><?php echo e($langg->lang175); ?></label>
                    </div>
                    <div class="right">
                      <a href="<?php echo e(route('user-forgot')); ?>">
                        <?php echo e($langg->lang176); ?>

                      </a>
                    </div>
                  </div>
                  <input type="hidden" name="modal" value="1">
                  <input class="mauthdata" type="hidden" value="<?php echo e($langg->lang177); ?>">
                  <button type="submit" class="submit-btn"><?php echo e($langg->lang178); ?></button>
                  <?php if(App\Models\Socialsetting::find(1)->f_check == 1 || App\Models\Socialsetting::find(1)->g_check ==
                  1): ?>
                  <div class="social-area">
                    <h3 class="title"><?php echo e($langg->lang179); ?></h3>
                    <p class="text"><?php echo e($langg->lang180); ?></p>
                    <ul class="social-links">
                      <?php if(App\Models\Socialsetting::find(1)->f_check == 1): ?>
                      <li>
                        <a href="<?php echo e(route('social-provider','facebook')); ?>">
                          <i class="fab fa-facebook-f"></i>
                        </a>
                      </li>
                      <?php endif; ?>
                      <?php if(App\Models\Socialsetting::find(1)->g_check == 1): ?>
                      <li>
                        <a href="<?php echo e(route('social-provider','google')); ?>">
                          <i class="fab fa-google-plus-g"></i>
                        </a>
                      </li>
                      <?php endif; ?>
                    </ul>
                  </div>
                  <?php endif; ?>
                </form>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="nav-reg1" role="tabpanel" aria-labelledby="nav-reg-tab1">
							<div class="login-area signup-area">
								<div class="header-area">
									<h4 class="title"><?php echo e($langg->lang181); ?></h4>
								</div>
								<div class="login-form signup-form">
									<?php echo $__env->make('includes.admin.form-login', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
								<form class="mregisterform" action="<?php echo e(route('user-register-submit')); ?>" method="POST">
                  <?php echo e(csrf_field()); ?>  

                  <div class="form-input r-field">
                    <input type="text" class="User Name" name="name" placeholder="<?php echo e($langg->lang182); ?>" required="">
                    <i class="icofont-user-alt-5"></i>
                  </div>

                  <div class="form-input r-field">
                    <input type="email" class="User Name" name="email" placeholder="<?php echo e($langg->lang183); ?>" >
                    <i class="icofont-email"></i>
                  </div>

                  <div class="form-input r-field">
                    <input type="text" class="User Name" name="phone" placeholder="<?php echo e($langg->lang184); ?>" required="">
                    <i class="icofont-phone"></i>
                  </div>

                  <div class="form-input r-field">
                    <input type="text" class="User Name" name="address" placeholder="<?php echo e($langg->lang185); ?>" >
                    <i class="icofont-location-pin"></i>
                  </div>

                  <div class="form-input r-field">
                    <input type="password" class="Password" name="password" placeholder="<?php echo e($langg->lang186); ?>"
                      required="">
                    <i class="icofont-ui-password"></i>
                  </div>

                  <div class="form-input r-field">
                    <input type="password" class="Password" name="password_confirmation"
                      placeholder="<?php echo e($langg->lang187); ?>" required="">
                    <i class="icofont-ui-password"></i>
                  </div>
                  <div class="form-input code-field" style="display:none">
                    <input type="number" class="User Name" name="code"
                      placeholder="Enter The Verification Code" >
                    <i class="icofont-ui-password"></i>
                  </div>
                  <?php if($gs->is_capcha == 1): ?>

                  <ul class="captcha-area">
                    <li>
                      <p><img class="codeimg1" src="<?php echo e(asset("assets/images/capcha_code.png")); ?>" alt=""> <i
                          class="fas fa-sync-alt pointer refresh_code "></i></p>
                    </li>
                  </ul>

                  <div class="form-input">
                    <input type="text" class="Password" name="codes" placeholder="<?php echo e($langg->lang51); ?>" required="">
                    <i class="icofont-refresh"></i>
                  </div>

                  <?php endif; ?>

                  <input class="mprocessdata" type="hidden" value="<?php echo e($langg->lang188); ?>">
                  <button type="submit" class="submit-btn"><?php echo e($langg->lang189); ?></button>

                </form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- LOGIN MODAL ENDS -->

	<!-- FORGOT MODAL -->
	<div class="modal fade" id="forgot-modal" tabindex="-1" role="dialog" aria-labelledby="comment-log-reg-Title"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<div class="login-area">
						<div class="header-area forgot-passwor-area">
							<h4 class="title"><?php echo e($langg->lang191); ?> </h4>
							<p class="text"><?php echo e($langg->lang192); ?> </p>
						</div>
						<div class="login-form">
							<?php echo $__env->make('includes.admin.form-login', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
							<form id="mforgotform" action="<?php echo e(route('user-forgot-submit')); ?>" method="POST">
								<?php echo e(csrf_field()); ?>

								<div class="form-input">
									<input type="email" name="email" class="User Name"
										placeholder="<?php echo e($langg->lang193); ?>" required="">
									<i class="icofont-user-alt-5"></i>
								</div>
								<div class="to-login-page">
									<a href="javascript:;" id="show-login">
										<?php echo e($langg->lang194); ?>

									</a>
								</div>
								<input class="fauthdata" type="hidden" value="<?php echo e($langg->lang195); ?>">
								<button type="submit" class="submit-btn"><?php echo e($langg->lang196); ?></button>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- FORGOT MODAL ENDS -->


<!-- VENDOR LOGIN MODAL -->
	<div class="modal fade" id="vendor-login" tabindex="-1" role="dialog" aria-labelledby="vendor-login-Title" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" style="transition: .5s;" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
				<nav class="comment-log-reg-tabmenu">
					<div class="nav nav-tabs" id="nav-tab1" role="tablist">
						<a class="nav-item nav-link login active" id="nav-log-tab11" data-toggle="tab" href="#nav-log11" role="tab" aria-controls="nav-log" aria-selected="true">
							<?php echo e($langg->lang234); ?>

						</a>
						<a class="nav-item nav-link" id="nav-reg-tab11" data-toggle="tab" href="#nav-reg11" role="tab" aria-controls="nav-reg" aria-selected="false">
							<?php echo e($langg->lang235); ?>

						</a>
					</div>
				</nav>
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-log11" role="tabpanel" aria-labelledby="nav-log-tab">
				        <div class="login-area">
				          <div class="login-form signin-form">
				                <?php echo $__env->make('includes.admin.form-login', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
				            <form class="mloginform" action="<?php echo e(route('user.login.submit')); ?>" method="POST">
				              <?php echo e(csrf_field()); ?>

				              <div class="form-input">
				                <input type="email" name="email" placeholder="<?php echo e($langg->lang173); ?>" required="">
				                <i class="icofont-user-alt-5"></i>
				              </div>
				              <div class="form-input">
				                <input type="password" class="Password" name="password" placeholder="<?php echo e($langg->lang174); ?>" required="">
				                <i class="icofont-ui-password"></i>
				              </div>
				              <div class="form-forgot-pass">
				                <div class="left">
				                  <input type="checkbox" name="remember"  id="mrp1" <?php echo e(old('remember') ? 'checked' : ''); ?>>
				                  <label for="mrp1"><?php echo e($langg->lang175); ?></label>
				                </div>
				                <div class="right">
				                  <a href="javascript:;" id="show-forgot1">
				                    <?php echo e($langg->lang176); ?>

				                  </a>
				                </div>
				              </div>
				              <input type="hidden" name="modal"  value="1">
				               <input type="hidden" name="vendor"  value="1">
				              <input class="mauthdata" type="hidden"  value="<?php echo e($langg->lang177); ?>">
				              <button type="submit" class="submit-btn"><?php echo e($langg->lang178); ?></button>
					              <?php if(App\Models\Socialsetting::find(1)->f_check == 1 || App\Models\Socialsetting::find(1)->g_check == 1): ?>
					              <div class="social-area">
					                  <h3 class="title"><?php echo e($langg->lang179); ?></h3>
					                  <p class="text"><?php echo e($langg->lang180); ?></p>
					                  <ul class="social-links">
					                    <?php if(App\Models\Socialsetting::find(1)->f_check == 1): ?>
					                    <li>
					                      <a href="<?php echo e(route('social-provider','facebook')); ?>">
					                        <i class="fab fa-facebook-f"></i>
					                      </a>
					                    </li>
					                    <?php endif; ?>
					                    <?php if(App\Models\Socialsetting::find(1)->g_check == 1): ?>
					                    <li>
					                      <a href="<?php echo e(route('social-provider','google')); ?>">
					                        <i class="fab fa-google-plus-g"></i>
					                      </a>
					                    </li>
					                    <?php endif; ?>
					                  </ul>
					              </div>
					              <?php endif; ?>
				            </form>
				          </div>
				        </div>
					</div>
					<div class="tab-pane fade" id="nav-reg11" role="tabpanel" aria-labelledby="nav-reg-tab">
                <div class="login-area signup-area">
                    <div class="login-form signup-form">
                       <?php echo $__env->make('includes.admin.form-login', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                        <form class="mregisterform" action="<?php echo e(route('user-register-submit')); ?>" method="POST">
                          <?php echo e(csrf_field()); ?>


                          <div class="row">

                          <div class="col-lg-6">
                            <div class="form-input">
                                <input type="text" class="User Name" name="name" placeholder="<?php echo e($langg->lang182); ?>" required="">
                                <i class="icofont-user-alt-5"></i>
                            	</div>
                           </div>

                           <div class="col-lg-6">
 <div class="form-input">
                                <input type="email" class="User Name" name="email" placeholder="<?php echo e($langg->lang183); ?>" required="">
                                <i class="icofont-email"></i>
                            </div>

                           	</div>
                           <div class="col-lg-6">
    <div class="form-input">
                                <input type="text" class="User Name" name="phone" placeholder="<?php echo e($langg->lang184); ?>" required="">
                                <i class="icofont-phone"></i>
                            </div>

                           	</div>
                           <div class="col-lg-6">

<div class="form-input">
                                <input type="text" class="User Name" name="address" placeholder="<?php echo e($langg->lang185); ?>" required="">
                                <i class="icofont-location-pin"></i>
                            </div>
                           	</div>

                           <div class="col-lg-6">
 <div class="form-input">
                                <input type="text" class="User Name" name="shop_name" placeholder="<?php echo e($langg->lang238); ?>" required="">
                                <i class="icofont-cart-alt"></i>
                            </div>

                           	</div>
                           <div class="col-lg-6">

 <div class="form-input">
                                <input type="text" class="User Name" name="owner_name" placeholder="<?php echo e($langg->lang239); ?>" required="">
                                <i class="icofont-cart"></i>
                            </div>
                           	</div>
                           <div class="col-lg-6">

<div class="form-input">
                                <input type="text" class="User Name" name="shop_number" placeholder="<?php echo e($langg->lang240); ?>" required="">
                                <i class="icofont-shopping-cart"></i>
                            </div>
                           	</div>
                           <div class="col-lg-6">

 <div class="form-input">
                                <input type="text" class="User Name" name="shop_address" placeholder="<?php echo e($langg->lang241); ?>" required="">
                                <i class="icofont-opencart"></i>
                            </div>
                           	</div>
                           <div class="col-lg-6">

<div class="form-input">
                                <input type="text" class="User Name" name="reg_number" placeholder="<?php echo e($langg->lang242); ?>" required="">
                                <i class="icofont-ui-cart"></i>
                            </div>
                           	</div>
                           <div class="col-lg-6">

 <div class="form-input">
                                <input type="text" class="User Name" name="shop_message" placeholder="<?php echo e($langg->lang243); ?>" required="">
                                <i class="icofont-envelope"></i>
                            </div>
                           	</div>

                           <div class="col-lg-6">
  <div class="form-input">
                                <input type="password" class="Password" name="password" placeholder="<?php echo e($langg->lang186); ?>" required="">
                                <i class="icofont-ui-password"></i>
                            </div>

                           	</div>
                           <div class="col-lg-6">
 								<div class="form-input">
                                <input type="password" class="Password" name="password_confirmation" placeholder="<?php echo e($langg->lang187); ?>" required="">
                                <i class="icofont-ui-password"></i>
                            	</div>
                           	</div>

                            <?php if($gs->is_capcha == 1): ?>

<div class="col-lg-6">


                            <ul class="captcha-area">
                                <li>
                                 	<p>
                                 		<img class="codeimg1" src="<?php echo e(asset("assets/images/capcha_code.png")); ?>" alt=""> <i class="fas fa-sync-alt pointer refresh_code "></i>
                                 	</p>

                                </li>
                            </ul>


</div>

<div class="col-lg-6">

 <div class="form-input">
                                <input type="text" class="Password" name="codes" placeholder="<?php echo e($langg->lang51); ?>" required="">
                                <i class="icofont-refresh"></i>

                            </div>



                          </div>

                          <?php endif; ?>

				            <input type="hidden" name="vendor"  value="1">
                            <input class="mprocessdata" type="hidden"  value="<?php echo e($langg->lang188); ?>">
                            <button type="submit" class="submit-btn"><?php echo e($langg->lang189); ?></button>

                           	</div>




                        </form>
                    </div>
                </div>
					</div>
				</div>
      </div>
    </div>
  </div>
</div>
<!-- VENDOR LOGIN MODAL ENDS -->

<!-- Product Quick View Modal -->

	  <div class="modal fade" id="quickview" tabindex="-1" role="dialog"  aria-hidden="true">
		<div class="modal-dialog quickview-modal modal-dialog-centered modal-lg" role="document">
		  <div class="modal-content">
			<div class="submit-loader">
				<img src="<?php echo e(asset('assets/images/'.$gs->loader)); ?>" alt="">
			</div>
			<div class="modal-header">
			  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			  </button>
			</div>
			<div class="modal-body">
				<div class="container quick-view-modal">

				</div>
			</div>
		  </div>
		</div>
	  </div>
<!-- Product Quick View Modal -->

<!-- Order Tracking modal Start-->
    <div class="modal fade" id="track-order-modal" tabindex="-1" role="dialog" aria-labelledby="order-tracking-modal" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title"> <b><?php echo e($langg->lang772); ?></b> </h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                        <div class="order-tracking-content">
                            <form id="track-form" class="track-form">
                                <?php echo e(csrf_field()); ?>

                                <input type="text" id="track-code" placeholder="<?php echo e($langg->lang773); ?>" required="">
                                <button type="submit" class="mybtn1"><?php echo e($langg->lang774); ?></button>
                                <a href="#"  data-toggle="modal" data-target="#order-tracking-modal"></a>
                            </form>
                        </div>

                        <div>
				            <div class="submit-loader d-none">
								<img src="<?php echo e(asset('assets/images/'.$gs->loader)); ?>" alt="">
							</div>
							<div id="track-order">

							</div>
                        </div>

            </div>
            </div>
        </div>
    </div>
<!-- Order Tracking modal End -->

<script type="text/javascript">
  var mainurl = "<?php echo e(url('/')); ?>";
  var gs      = <?php echo json_encode($gs); ?>;
  var langg    = <?php echo json_encode($langg); ?>;

</script>

	<!-- jquery -->
	<script src="<?php echo e(asset('assets/front/js/jquery.js')); ?>"></script>
	
	<script src="<?php echo e(asset('assets/front/jquery-ui/jquery-ui.min.js')); ?>"></script>
	<!-- popper -->
	<script src="<?php echo e(asset('assets/front/js/popper.min.js')); ?>"></script>
	<!-- bootstrap -->
	<script src="<?php echo e(asset('assets/front/js/bootstrap.min.js')); ?>"></script>
	<!-- plugin js-->
	<script src="<?php echo e(asset('assets/front/js/plugin.js')); ?>"></script>

	<script src="<?php echo e(asset('assets/front/js/xzoom.min.js')); ?>"></script>
	<script src="<?php echo e(asset('assets/front/js/jquery.hammer.min.js')); ?>"></script>
	<script src="<?php echo e(asset('assets/front/js/setup.js')); ?>"></script>

	<script src="<?php echo e(asset('assets/front/js/toastr.js')); ?>"></script>
	<!-- main -->
	<script src="<?php echo e(asset('assets/front/js/main.js')); ?>"></script>
	<!-- custom -->
	<script src="<?php echo e(asset('assets/front/js/custom.js')); ?>"></script>
	    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery.lazy/1.7.9/jquery.lazy.min.js"></script>
    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery.lazy/1.7.9/jquery.lazy.plugins.min.js"></script

    <?php echo $seo->google_analytics; ?>


  <?php if($gs->is_talkto == 1): ?>
    <!--Start of Tawk.to Script-->
      <?php echo $gs->talkto; ?>

    <!--End of Tawk.to Script-->
  <?php endif; ?>


</body>
	<?php echo $__env->yieldContent('scripts'); ?>
<script>
    $(function() {
        $('.lazy').Lazy();
    });
           
</script>
	<script>
	
            setInterval(function(){
				$.ajax({url: "<?php echo e(route('dynamic.cart')); ?>", success: function(result){
    $("#d-cart").html(result);
  }});
			},3000)

	</script>
</html>
