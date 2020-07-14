<?php $__env->startSection('content'); ?>

<div class="breadcrumb-area">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <ul class="pages">

          <li><a href="<?php echo e(route('front.index')); ?>"><?php echo e($langg->lang17); ?></a></li>
          <li><a href="<?php echo e(route('front.category',$productt->category->slug)); ?>"><?php echo e($productt->category->name); ?></a></li>
          <?php if(!empty($productt->subcategory)): ?>
          <li><a
              href="<?php echo e(route('front.subcat',['slug1' => $productt->category->slug, 'slug2' => $productt->subcategory->slug])); ?>"><?php echo e($productt->subcategory->name); ?></a>
          </li>
          <?php endif; ?>
          <?php if(!empty($productt->childcategory)): ?>
          <li><a
              href="<?php echo e(route('front.childcat',['slug1' => $productt->category->slug, 'slug2' => $productt->subcategory->slug, 'slug3' => $productt->childcategory->slug])); ?>"><?php echo e($productt->childcategory->name); ?></a>
          </li>
          <?php endif; ?>
          <li><a href="<?php echo e(route('front.product', $productt->slug)); ?>"><?php echo e($productt->name); ?></a>

        </ul>
      </div>
    </div>
  </div>
</div>

<!-- Product Details Area Start -->
<section class="product-details-page">
  <div class="container">
    <div class="row">
    <div class="col-lg-9">
        <div class="row">

            <div class="col-lg-5 col-md-12">

          <div class="xzoom-container">
              <img class="xzoom5" id="xzoom-magnific" src="<?php echo e(filter_var($productt->photo, FILTER_VALIDATE_URL) ?$productt->photo:asset('assets/images/products/'.$productt->photo)); ?>" xoriginal="<?php echo e(filter_var($productt->photo, FILTER_VALIDATE_URL) ?$productt->photo:asset('assets/images/products/'.$productt->photo)); ?>" />
              <div class="xzoom-thumbs">

                <div class="all-slider">

                    <a href="<?php echo e(filter_var($productt->photo, FILTER_VALIDATE_URL) ?$productt->photo:asset('assets/images/products/'.$productt->photo)); ?>">
                  <img class="xzoom-gallery5" width="80" src="<?php echo e(filter_var($productt->photo, FILTER_VALIDATE_URL) ?$productt->photo:asset('assets/images/products/'.$productt->photo)); ?>" title="The description goes here">
                    </a>

                <?php $__currentLoopData = $productt->galleries; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $gal): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>


                    <a href="<?php echo e(asset('assets/images/galleries/'.$gal->photo)); ?>">
                  <img class="xzoom-gallery5" width="80" src="<?php echo e(asset('assets/images/galleries/'.$gal->photo)); ?>" title="The description goes here">
                    </a>

                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                </div>

              </div>
          </div>

            </div>

            <div class="col-lg-7">
              <div class="right-area">
                <div class="product-info">
                  <h4 class="product-name"><?php echo e($productt->name); ?></h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
                  



            <div class="product-price">
              <p class="title"><?php echo e($langg->lang87); ?> :</p>
                    <p class="price"><span id="sizeprice"><?php echo e($productt->showPrice()); ?></span>
                      <small><del><?php echo e($productt->showPreviousPrice()); ?></del></small></p>
                      <p>Deal Code :</p>

                      <div class="clearfix">
                      <hr class="float-left" style='border: 1px solid #0a5641; width: 334px;'>
                      </div>

                      <h5 style="font-weight:700;font-size:20px;color:black">Available Options :</h5>
                      <div>
                      <form class="form-inline">
					<div class="row">
						<div class="col-6">
						  <div class="form-group">
							<label for="color" style="font-weight:700;font-size:17px">Color : </label>
							<select class="form-control" id="color" width="60px" style="margin-left:8px;">
							  <option>Red</option>
							  <option>Green</option>
							  <option>Blue</option>
							  <option>White</option>
							</select>
						  </div>
						 </div>
						 
						 <div class="col-6">
						  <div class="form-group">
							<label for="size" style="font-weight:700;font-size:17px">Size : </label>
							<select class="form-control" id="size"style="margin-left:8px;">
							  <option>Large</option>
							  <option>Medium</option>
							  <option>Small</option>
							</select>
						  </div>
						 </div>
						 <div class="col-12 py-3">
						   <div class="form-group">
							<label for="quantity" style="font-weight:700;font-size:17px">Quantity : </label>
							<select class="form-control pl-1" id="quantity" style="margin-left:8px;">
							  <option>1</option>
							  <option>2</option>
							  <option>3</option>
							  <option>4</option>
							  <option>5</option>
							</select>
						  </div>
						 </div>
						
					</div>
				</form>
                      </div>
                      
                  </div>

                  


                  

                  

                  <?php if(!empty($productt->size)): ?>

                  <input type="hidden" id="stock" value="<?php echo e($productt->size_qty[0]); ?>">
                  <?php else: ?>
                  <?php
                  $stck = (string)$productt->stock;
                  ?>
                  <?php if($stck != null): ?>
                  <input type="hidden" id="stock" value="<?php echo e($stck); ?>">
                  <?php elseif($productt->type != 'Physical'): ?>
                  <input type="hidden" id="stock" value="0">
                  <?php else: ?>
                  <input type="hidden" id="stock" value="">
                  <?php endif; ?>

                  <?php endif; ?>
                  <input type="hidden" id="product_price" value="<?php echo e(round($productt->vendorPrice() * $curr->value,2)); ?>">

                  <input type="hidden" id="product_id" value="<?php echo e($productt->id); ?>">
                  <input type="hidden" id="curr_pos" value="<?php echo e($gs->currency_format); ?>">
                  <input type="hidden" id="curr_sign" value="<?php echo e($curr->sign); ?>">
                  <div class="info-meta-3">
                    <ul class="meta-list">
                      

                      <?php if(!empty($productt->attributes)): ?>
                        <?php
                          $attrArr = json_decode($productt->attributes, true);
                        ?>
                      <?php endif; ?>
                      

                      <?php if($productt->product_type == "affiliate"): ?>

                      <li class="addtocart">
                        <a href="<?php echo e(route('affiliate.product', $productt->slug)); ?>" target="_blank"><i
                            class="icofont-cart"></i> <?php echo e($langg->lang251); ?></a>
                      </li>
                      <?php else: ?>
                      <?php if($productt->emptyStock()): ?>
                      <li class="addtocart">
                        <a href="javascript:;" class="cart-out-of-stock">
                          <i class="icofont-close-circled"></i>
                          <?php echo e($langg->lang78); ?></a>
                      </li>
                      <?php else: ?>
                      <li class="addtocart">
                        <a href="javascript:;" id="addcrt"><i class="icofont-cart"></i><?php echo e($langg->lang90); ?></a>
                      </li>

                      <li class="addtocart">
                        <a href="<?php echo e(route('product.cart.quickadd',$productt->id)); ?>"><i
                            class="icofont-cart"></i><?php echo e($langg->lang251); ?></a>
                      </li>
                      <?php endif; ?>

                      <?php endif; ?>

                      <?php if(Auth::guard('web')->check()): ?>
                      <li class="favorite">
                        <a href="javascript:;" class="add-to-wish"
                          data-href="<?php echo e(route('user-wishlist-add',$productt->id)); ?>"><i class="icofont-heart-alt"></i></a>
                      </li>
                      <?php else: ?>
                      <li class="favorite">
                        <a href="javascript:;" data-toggle="modal" data-target="#comment-log-reg"><i
                            class="icofont-heart-alt"></i></a>
                      </li>
                      <?php endif; ?>
                      <li class="compare">
                        <a href="javascript:;" class="add-to-compare"
                          data-href="<?php echo e(route('product.compare.add',$productt->id)); ?>"><i class="icofont-exchange"></i></a>
                      </li>
                    </ul>
                  </div>
                  <div class="social-links social-sharing a2a_kit a2a_kit_size_32 mt-4">
                  <h5>Share Product : </h5>
                    <ul class="link-list social-links">
                      <li>
                        <a class="facebook a2a_button_facebook" href="">
                          <i class="fab fa-facebook-f"></i>
                        </a>
                      </li>
                      <li>
                        <a class="twitter a2a_button_twitter" href="">
                          <i class="fab fa-twitter"></i>
                        </a>
                      </li>
                      <li>
                        <a class="linkedin a2a_button_linkedin" href="">
                          <i class="fab fa-linkedin-in"></i>
                        </a>
                      </li>
                      <li>
                        <a class="pinterest a2a_button_pinterest" href="">
                          <i class="fab fa-pinterest-p"></i>
                        </a>
                      </li>
                    </ul>
                  </div>
                  <script async src="https://static.addtoany.com/menu/page.js"></script>


                  
      <?php if($gs->is_report): ?>

      

                    

      

      <?php endif; ?>



                </div>
              </div>
            </div>

          </div>
          <div class="row">
              <div class="col-lg-12">
                  <div id="product-details-tab">
                    <div class="top-menu-area">
                      <ul class="tab-menu">
                        <li><a href="#tabs-1"><?php echo e($langg->lang92); ?></a></li>
                        <li><a href="#tabs-2"><?php echo e($langg->lang93); ?></a></li>
                        <li><a href="#tabs-3"><?php echo e($langg->lang94); ?>(<?php echo e(count($productt->ratings)); ?>)</a></li>
                        <?php if($gs->is_comment == 1): ?>
                        <li><a href="#tabs-4"><?php echo e($langg->lang95); ?>(<span
                              id="comment_count"><?php echo e(count($productt->comments)); ?></span>)</a></li>
                        <?php endif; ?>
                      </ul>
                    </div>
                    <div class="tab-content-wrapper">
                      <div id="tabs-1" class="tab-content-area">
                        <p><?php echo $productt->details; ?></p>
                      </div>
                      <div id="tabs-2" class="tab-content-area">
                        <p><?php echo $productt->policy; ?></p>
                      </div>
                      <div id="tabs-3" class="tab-content-area">
                        <div class="heading-area">
                          <h4 class="title">
                            <?php echo e($langg->lang96); ?>

                          </h4>
                          <div class="reating-area">
                            <div class="stars"><span id="star-rating"><?php echo e(App\Models\Rating::rating($productt->id)); ?></span> <i
                                class="fas fa-star"></i></div>
                          </div>
                        </div>
                        <div id="replay-area">
                          <div id="reviews-section">
                            <?php if(count($productt->ratings) > 0): ?>
                            <ul class="all-replay">
                              <?php $__currentLoopData = $productt->ratings; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $review): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                              <li>
                                <div class="single-review">
                                  <div class="left-area">
                                    <img
                                      src="<?php echo e($review->user->photo ? asset('assets/images/users/'.$review->user->photo):asset('assets/images/noimage.png')); ?>"
                                      alt="">
                                    <h5 class="name"><?php echo e($review->user->name); ?></h5>
                                    <p class="date">
                                      <?php echo e(Carbon\Carbon::createFromFormat('Y-m-dH:i:s',$review->review_date)->diffForHumans()); ?>

                                    </p>
                                  </div>
                                  <div class="right-area">
                                    <div class="header-area">
                                      <div class="stars-area">
                                        <ul class="stars">
                                          <div class="ratings">
                                            <div class="empty-stars"></div>
                                            <div class="full-stars" style="width:<?php echo e($review->rating*20); ?>%"></div>
                                          </div>
                                        </ul>
                                      </div>
                                    </div>
                                    <div class="review-body">
                                      <p>
                                        <?php echo e($review->review); ?>

                                      </p>
                                    </div>
                                  </div>
                                </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                              </li>
                            </ul>
                            <?php else: ?>
                            <p><?php echo e($langg->lang97); ?></p>
                            <?php endif; ?>
                          </div>
                          <?php if(Auth::guard('web')->check()): ?>
                          <div class="review-area">
                            <h4 class="title"><?php echo e($langg->lang98); ?></h4>
                            <div class="star-area">
                              <ul class="star-list">
                                <li class="stars" data-val="1">
                                  <i class="fas fa-star"></i>
                                </li>
                                <li class="stars" data-val="2">
                                  <i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                </li>
                                <li class="stars" data-val="3">
                                  <i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                </li>
                                <li class="stars" data-val="4">
                                  <i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                </li>
                                <li class="stars active" data-val="5">
                                  <i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                </li>
                              </ul>
                            </div>
                          </div>
                          <div class="write-comment-area">
                            <div class="gocover"
                              style="background: url(<?php echo e(asset('assets/images/'.$gs->loader)); ?>) no-repeat scroll center center rgba(45, 45, 45, 0.5);">
                            </div>
                            <form id="reviewform" action="<?php echo e(route('front.review.submit')); ?>"
                              data-href="<?php echo e(route('front.reviews',$productt->id)); ?>" method="POST">
                              <?php echo $__env->make('includes.admin.form-both', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                              <?php echo e(csrf_field()); ?>

                              <input type="hidden" id="rating" name="rating" value="5">
                              <input type="hidden" name="user_id" value="<?php echo e(Auth::guard('web')->user()->id); ?>">
                              <input type="hidden" name="product_id" value="<?php echo e($productt->id); ?>">
                              <div class="row">
                                <div class="col-lg-12">
                                  <textarea name="review" placeholder="<?php echo e($langg->lang99); ?>" required=""></textarea>
                                </div>
                              </div>
                              <div class="row">
                                <div class="col-lg-12">
                                  <button class="submit-btn" type="submit"><?php echo e($langg->lang100); ?></button>
                                </div>
                              </div>
                            </form>
                          </div>
                          <?php else: ?>
                          <div class="row">
                            <div class="col-lg-12">
                              <br>
                              <h5 class="text-center"><a href="javascript:;" data-toggle="modal" data-target="#comment-log-reg"
                                  class="btn login-btn mr-1"><?php echo e($langg->lang101); ?></a> <?php echo e($langg->lang102); ?></h5>
                              <br>
                            </div>
                          </div>
                          <?php endif; ?>
                        </div>
                      </div>
                      <?php if($gs->is_comment == 1): ?>
                      <div id="tabs-4" class="tab-content-area">
                        <div id="comment-area">

                          <?php echo $__env->make('includes.comment-replies', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

                        </div>
                      </div>
                      <?php endif; ?>
                    </div>
                  </div>
                </div>
          </div>
          
<!-- PRODUCT -->

<div class="mt-5">
			<div class="product-slide1">


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
<!-- 
PRODUCT END -->


<!-- PRODUCT -->

<div class="mt-5">
			<div class="product-slide1">


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
<!-- 
PRODUCT END -->






    </div>
    <div>
    </div>
    <div class="col-lg-3">

      <?php if(!empty($productt->whole_sell_qty)): ?>
      <div class="table-area wholesell-details-page">
        <h3><?php echo e($langg->lang770); ?></h3>
        <table class="table">
          <tr>
            <th><?php echo e($langg->lang768); ?></th>
            <th><?php echo e($langg->lang769); ?></th>
          </tr>
          <?php $__currentLoopData = $productt->whole_sell_qty; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data1): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <tr>
            <td><?php echo e($productt->whole_sell_qty[$key]); ?>+</td>
            <td><?php echo e($productt->whole_sell_discount[$key]); ?>% <?php echo e($langg->lang771); ?></td>
          </tr>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </table>
      </div>
      <?php endif; ?>


      <div class="seller-info mt-3">
        
        <div class="card" >
			<div class="card-header">
				<h4>Seller information</h4>
			</div>
			<div class="card-body" style="padding:1.0rem">
				<div class="media seller-profile-media">
                     <div class="media-left">
                        <a href="#">
                           <img style="border-radius:50%" class="media-object" src="<?php echo e(asset('assets/images/brand/profile-pic.jpg')); ?>" width="70" alt="">
                        </a>
                    </div>
                    <div class="media-body">
                        <a href="#"><h4 class="media-heading">tanvir ismail</h4></a>
                        <p><i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fas fa-star-half-alt" aria-hidden="true"></i>
                           <i class="fas fa-star-half-alt" aria-hidden="true"></i>
                                &nbsp;(3.9)
						<small><strong>416 reviews</strong></small>
                        </p>
                    </div>
                </div>
				<div class="row seller-quick-opt">
					<div class="col-4 text-center">
						<a href="#"><i class="fa fa-gift fa-3x" style="font-size:2.5em" aria-hidden="true"></i>
							<p>Seller Shop</p>
						</a>
					</div>
					<div class="col-4 text-center">
						<a href="#"><i class="fa fa-comment fa-3x"style="font-size:2.5em" aria-hidden="true"></i>
							<p>Chat Seller</p>
						</a>
					</div>
					<div class="col-4 text-center">
						<a href="#"><i class="fa fa-user-plus fa-3x" style="font-size:2.5em" aria-hidden="true"></i>
							<p>follow</p>
						</a>
					</div>
				</div>
				<hr>
				
				<div class="follow-profile-pic">
				<p>This seller has <span style="color:#2395FD">83 followers</span></p>
					<img class="media-object" src="<?php echo e(asset('assets/images/brand/profile-pic.jpg')); ?>" alt="">
					<img class="media-object" src="<?php echo e(asset('assets/images/brand/profile-pic.jpg')); ?>" alt="">
					<img class="media-object" src="<?php echo e(asset('assets/images/brand/profile-pic.jpg')); ?>" alt="">
					<img class="media-object" src="<?php echo e(asset('assets/images/brand/profile-pic.jpg')); ?>" alt="">
					<img class="media-object" src="<?php echo e(asset('assets/images/brand/profile-pic.jpg')); ?>" alt="">
					<img class="media-object" src="<?php echo e(asset('assets/images/brand/profile-pic.jpg')); ?>" alt="">
					<img class="media-object" src="<?php echo e(asset('assets/images/brand/profile-pic.jpg')); ?>" alt="">
					<img class="media-object" src="<?php echo e(asset('assets/images/brand/profile-pic.jpg')); ?>" alt="">
				</div>
			</div>
		</div>
    <div class="card my-4">
			<div class="card-body">
				<h4> (35-60%) DISCOUNT</h4>
				<img src="<?php echo e(asset('assets/images/brand/new-pic4.jpg')); ?>" alt="" width="100%">
			</div>
		</div>
    <div class="card">
			<div class="card-header">
				<h4>PRODUCTS</h4>
			</div>
			<div class="card-body">
				<div class="media products-media">
                     <div class="media-left">
                        <a href="#">
                           <img class="media-object" src="<?php echo e(asset('assets/images/brand/profile-pic.jpg')); ?>" width="70" alt="">
                        </a>
                    </div>
                    <div class="media-body">
                        <a href="#"><h5 class="media-heading">samsung</h5></a>
                        <h6><strong>$ 685.00 </strong> <small>&nbsp; <del>$ 685.00</del></small></h6>
                    </div>
                </div>
				<hr>
				<div class="media products-media">
                     <div class="media-left">
                        <a href="#">
                           <img class="media-object" src="<?php echo e(asset('assets/images/brand/profile-pic.jpg')); ?>" width="70" alt="">
                        </a>
                    </div>
                    <div class="media-body">
                        <a href="#"><h5 class="media-heading">samsung</h5></a>
                        <h6><strong>$ 685.00 </strong> <small>&nbsp; <del>$ 685.00</del></small></h6>
                    </div>
                </div>
				<hr>
				<div class="media products-media">
                     <div class="media-left">
                        <a href="#">
                           <img class="media-object" src="<?php echo e(asset('assets/images/brand/profile-pic.jpg')); ?>" width="70" alt="">
                        </a>
                    </div>
                    <div class="media-body">
                        <a href="#"><h5 class="media-heading">samsung</h5></a>
                        <h6><strong>$ 685.00 </strong> <small>&nbsp; <del>$ 685.00</del></small></h6>
                    </div>
                </div>
				<hr>
				<div class="media products-media">
                     <div class="media-left">
                        <a href="#">
                           <img class="media-object" src="<?php echo e(asset('assets/images/brand/profile-pic.jpg')); ?>" width="70" alt="">
                        </a>
                    </div>
                    <div class="media-body">
                        <a href="#"><h5 class="media-heading">samsung</h5></a>
                        <h6><strong>$ 685.00 </strong> <small>&nbsp; <del>$ 685.00</del></small></h6>
                    </div>
                </div>
				
				
			</div>
		</div>
    <div class="card mt-5">
			<div class="card-header">
				<h4>NEWSLETTERS </h4>
			</div>
			<div class="card-body">
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
				</p>
				<div class="form-group ">
				<input type="email" class="form-control" placeholder="Email"><br>
				<button type="button" class="btn btn-success text-left">Sign up</button>
				</div>
			</div>
		</div>
      </div>








      




    </div>

    </div>
    
  </div>
  <!-- Trending Item Area Start -->
<div class="trending">
  <div class="">
    

	
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
  </div>
</div>
<!-- Tranding Item Area End -->
</section>
<!-- Product Details Area End -->




<div class="message-modal">
  <div class="modal" id="vendorform" tabindex="-1" role="dialog" aria-labelledby="vendorformLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="vendorformLabel"><?php echo e($langg->lang118); ?></h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="container-fluid p-0">
            <div class="row">
              <div class="col-md-12">
                <div class="contact-form">
                  <form id="emailreply1">
                    <?php echo e(csrf_field()); ?>

                    <ul>
                      <li>
                        <input type="text" class="input-field" id="subj1" name="subject"
                          placeholder="<?php echo e($langg->lang119); ?>" required="">
                      </li>
                      <li>
                        <textarea class="input-field textarea" name="message" id="msg1"
                          placeholder="<?php echo e($langg->lang120); ?>" required=""></textarea>
                      </li>
                      <input type="hidden"  name="type" value="Ticket">
                    </ul>
                    <button class="submit-btn" id="emlsub" type="submit"><?php echo e($langg->lang118); ?></button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  


  <?php if(Auth::guard('web')->check()): ?>

  <?php if($productt->user_id != 0): ?>

  


  <div class="modal" id="vendorform1" tabindex="-1" role="dialog" aria-labelledby="vendorformLabel1" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="vendorformLabel1"><?php echo e($langg->lang118); ?></h5>
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
                    <?php echo e(csrf_field()); ?>

                    <ul>

                      <li>
                        <input type="text" class="input-field" readonly=""
                          placeholder="Send To <?php echo e($productt->user->shop_name); ?>" readonly="">
                      </li>

                      <li>
                        <input type="text" class="input-field" id="subj" name="subject"
                          placeholder="<?php echo e($langg->lang119); ?>" required="">
                      </li>

                      <li>
                        <textarea class="input-field textarea" name="message" id="msg"
                          placeholder="<?php echo e($langg->lang120); ?>" required=""></textarea>
                      </li>

                      <input type="hidden" name="email" value="<?php echo e(Auth::guard('web')->user()->email); ?>">
                      <input type="hidden" name="name" value="<?php echo e(Auth::guard('web')->user()->name); ?>">
                      <input type="hidden" name="user_id" value="<?php echo e(Auth::guard('web')->user()->id); ?>">
                      <input type="hidden" name="vendor_id" value="<?php echo e($productt->user->id); ?>">

                    </ul>
                    <button class="submit-btn" id="emlsub1" type="submit"><?php echo e($langg->lang118); ?></button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


  


  <?php endif; ?>

  <?php endif; ?>

</div>


<?php if($gs->is_report): ?>

<?php if(Auth::check()): ?>



<div class="modal fade" id="report-modal" tabindex="-1" role="dialog" aria-labelledby="report-modal-Title" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

 <div class="gocover" style="background: url(<?php echo e(asset('assets/images/'.$gs->loader)); ?>) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>

                    <div class="login-area">
                        <div class="header-area forgot-passwor-area">
                            <h4 class="title"><?php echo e($langg->lang777); ?></h4>
                            <p class="text"><?php echo e($langg->lang778); ?></p>
                        </div>
                        <div class="login-form">

                            <form id="reportform" action="<?php echo e(route('product.report')); ?>" method="POST">

                              <?php echo $__env->make('includes.admin.form-login', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

                                <?php echo e(csrf_field()); ?>

                                <input type="hidden" name="user_id" value="<?php echo e(Auth::user()->id); ?>">
                                <input type="hidden" name="product_id" value="<?php echo e($productt->id); ?>">
                                <div class="form-input">
                                    <input type="text" name="title" class="User Name" placeholder="<?php echo e($langg->lang779); ?>" required="">
                                    <i class="icofont-notepad"></i>
                                </div>

                                <div class="form-input">
                                  <textarea name="note" class="User Name" placeholder="<?php echo e($langg->lang780); ?>" required=""></textarea>
                                </div>

                                <button type="submit" class="submit-btn"><?php echo e($langg->lang196); ?></button>
                            </form>
                        </div>
                    </div>
      </div>
    </div>
  </div>
</div>



<?php endif; ?>

<?php endif; ?>

<?php $__env->stopSection(); ?>


<?php $__env->startSection('scripts'); ?>

<script type="text/javascript">

  $(document).on("submit", "#emailreply1", function () {
    var token = $(this).find('input[name=_token]').val();
    var subject = $(this).find('input[name=subject]').val();
    var message = $(this).find('textarea[name=message]').val();
    var $type  = $(this).find('input[name=type]').val();
    $('#subj1').prop('disabled', true);
    $('#msg1').prop('disabled', true);
    $('#emlsub').prop('disabled', true);
    $.ajax({
      type: 'post',
      url: "<?php echo e(URL::to('/user/admin/user/send/message')); ?>",
      data: {
        '_token': token,
        'subject': subject,
        'message': message,
        'type'   : $type
      },
      success: function (data) {
        $('#subj1').prop('disabled', false);
        $('#msg1').prop('disabled', false);
        $('#subj1').val('');
        $('#msg1').val('');
        $('#emlsub').prop('disabled', false);
        if(data == 0)
          toastr.error("Oops Something Goes Wrong !!");
        else
          toastr.success("Message Sent !!");
        $('.close').click();
      }

    });
    return false;
  });

</script>


<script type="text/javascript">

  $(document).on("submit", "#emailreply", function () {
    var token = $(this).find('input[name=_token]').val();
    var subject = $(this).find('input[name=subject]').val();
    var message = $(this).find('textarea[name=message]').val();
    var email = $(this).find('input[name=email]').val();
    var name = $(this).find('input[name=name]').val();
    var user_id = $(this).find('input[name=user_id]').val();
    var vendor_id = $(this).find('input[name=vendor_id]').val();
    $('#subj').prop('disabled', true);
    $('#msg').prop('disabled', true);
    $('#emlsub').prop('disabled', true);
    $.ajax({
      type: 'post',
      url: "<?php echo e(URL::to('/vendor/contact')); ?>",
      data: {
        '_token': token,
        'subject': subject,
        'message': message,
        'email': email,
        'name': name,
        'user_id': user_id,
        'vendor_id': vendor_id
      },
      success: function () {
        $('#subj').prop('disabled', false);
        $('#msg').prop('disabled', false);
        $('#subj').val('');
        $('#msg').val('');
        $('#emlsub').prop('disabled', false);
        toastr.success("<?php echo e($langg->message_sent); ?>");
        $('.ti-close').click();
      }
    });
    return false;
  });

</script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.front', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>