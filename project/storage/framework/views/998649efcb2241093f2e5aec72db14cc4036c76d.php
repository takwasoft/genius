<div class="col-lg-4 col-md-4 col-6" style="padding-left:10px;padding-right:10px;">

    <div class="product-item">
        <div class="thumbnail">
            <div class="extra-list top-icon-bar">
                <ul>
                    <li>

                        <span class="quick-view add-new-cart  " rel-toggle="tooltip" title="" href="javascript:;" data-href="<?php echo e(route('product.cart.add',$prod->id)); ?>" data-original-title="Add To Cart"> <i class="icofont-cart"></i>
													</span>

                    </li> 
                    <li>
                        <span href="javascript:;" class="add-to-compare" data-href="<?php echo e(route('product.compare.add',$prod->id)); ?>" data-toggle="tooltip" data-placement="right" title="" data-original-title="Compare">
														<i class="icofont-exchange"></i>
													</span>
                    </li>
                    <li>
                        <?php if(Auth::guard('web')->check()): ?>
                        <span class="wishlist-new" href="javascript:;" data-href="<?php echo e(route('user-wishlist-add',$prod->id)); ?>" rel-toggle="tooltip" title="" id="wish-btn" data-placement="right" data-original-title="Add To Wishlist">
														<i class="icofont-heart-alt"></i>
													</span> <?php else: ?>
                        <span href="javascript:;" rel-toggle="tooltip" title="" data-toggle="modal" id="wish-btn" data-target="#comment-log-reg" data-placement="right" data-original-title="Add To Wishlist">
														<i class="icofont-heart-alt"></i>
													</span> <?php endif; ?>
                    </li>
                </ul>
            </div>
            <a href="product-details.html">
                <div class="product-thum-img">
                    <a href="<?php echo e(URL::to('/item/'.$prod->slug)); ?>"><img src="<?php echo e($prod->photo ? asset('assets/images/thumbnails/'.$prod->thumbnail):asset('assets/images/noimage.png')); ?>" alt="" /></a>
                </div>
            </a>
            <h5 class="mt-2"><?php echo e($prod->name); ?></h5>
            <div class="local-info d-flex flex-row flex-wrap">
                <div class="d-flex" style="margin-top:5px;">
                    <div class="local-main"><i class="fas fa-star local-star"></i></div>
                    <div class="local-content">Member</div>
                </div>  
                <div><span style="margin-left:5px;font-size:14px;"><?php echo e($prod->getAddress?$prod->getAddress->name:""); ?></span></div>
                <div><span style="margin-left:5px;font-size:14px;"><?php echo e($prod->category->name); ?></span></div>
                <div class="ml-auto mt-2" style="font-size:14px">
                    <?php echo e($prod->created_at->diffForHumans()); ?>

                </div>
            </div>
            <div class="price-details clearfix mt-3">
                <div class="price-number float-left">
                    <p class="text-left" style="font-size:20px"><strong class="rupees"><?php echo e($prod->price); ?> BDT</strong></p>
                </div>
                <div class="add-cart float-right">
                    <a style="background: red;" class="add-to-cart-a " href="<?php echo e(route('product.cart.quickadd',$prod->id)); ?>">
																						Buy Now
																					</a>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <!-- <a href="<?php echo e(route('front.product', $prod->slug)); ?>" class="item">
											<div class="item-img">
												<?php if(!empty($prod->features)): ?>
													<div class="sell-area">
													  <?php $__currentLoopData = $prod->features; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data1): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
														<span class="sale" style="background-color:<?php echo e($prod->colors[$key]); ?>"><?php echo e($prod->features[$key]); ?></span>
														<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
													</div>
												<?php endif; ?>
													<div class="extra-list">
														<ul>
															<li>
																<?php if(Auth::guard('web')->check()): ?>

																<span class="add-to-wish" data-href="<?php echo e(route('user-wishlist-add',$prod->id)); ?>" data-toggle="tooltip" data-placement="right" title="<?php echo e($langg->lang54); ?>" data-placement="right"><i class="icofont-heart-alt" ></i>
																</span>

																<?php else: ?>

																<span rel-toggle="tooltip" title="<?php echo e($langg->lang54); ?>" data-toggle="modal" id="wish-btn" data-target="#comment-log-reg" data-placement="right">
																	<i class="icofont-heart-alt"></i>
																</span>

																<?php endif; ?>
															</li>
															<li>
															<span class="quick-view" rel-toggle="tooltip" title="<?php echo e($langg->lang55); ?>" href="javascript:;" data-href="<?php echo e(route('product.quick',$prod->id)); ?>" data-toggle="modal" data-target="#quickview" data-placement="right"> <i class="icofont-eye"></i>
															</span>
															</li>
															<li>
																<span class="add-to-compare" data-href="<?php echo e(route('product.compare.add',$prod->id)); ?>"  data-toggle="tooltip" data-placement="right" title="<?php echo e($langg->lang57); ?>" data-placement="right">
																	<i class="icofont-exchange"></i>
																</span>
															</li>
														</ul>
													</div>
												<img class="img-fluid" src="<?php echo e($prod->photo ? asset('assets/images/thumbnails/'.$prod->thumbnail):asset('assets/images/noimage.png')); ?>" alt="">
											</div>
											<div class="info">
												<div class="stars">
                            <div class="ratings">
                                <div class="empty-stars"></div>
                                <div class="full-stars" style="width:<?php echo e(App\Models\Rating::ratings($prod->id)); ?>%"></div>
                            </div>
												</div>
												<h4 class="price"><?php echo e($prod->setCurrency()); ?> <del><small><?php echo e($prod->showPreviousPrice()); ?></small></del></h4>
														<h5 class="name"><?php echo e($prod->showName()); ?></h5>
														<div class="item-cart-area">
															<?php if($prod->product_type == "affiliate"): ?>
																<span class="add-to-cart-btn affilate-btn"
																	data-href="<?php echo e(route('affiliate.product', $prod->slug)); ?>"><i class="icofont-cart"></i>
																	<?php echo e($langg->lang251); ?>

																</span>
															<?php else: ?>
																<?php if($prod->emptyStock()): ?>
																<span class="add-to-cart-btn cart-out-of-stock">
																	<i class="icofont-close-circled"></i> <?php echo e($langg->lang78); ?>

																</span>
																<?php else: ?>
																<span class="add-to-cart add-to-cart-btn" data-href="<?php echo e(route('product.cart.add',$prod->id)); ?>">
																	<i class="icofont-cart"></i> <?php echo e($langg->lang56); ?>

																</span>
																<span class="add-to-cart-quick add-to-cart-btn"
																	data-href="<?php echo e(route('product.cart.quickadd',$prod->id)); ?>">
																	<i class="icofont-cart"></i> <?php echo e($langg->lang251); ?>

																</span>
																<?php endif; ?>
															<?php endif; ?>
														</div>
											</div>
										</a> -->

</div>