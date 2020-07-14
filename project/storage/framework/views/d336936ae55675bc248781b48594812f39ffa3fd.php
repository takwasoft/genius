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
                  <div class="info-meta-1">
                    <ul>

                      <?php if($productt->type == 'Physical'): ?>
                      <?php if($productt->emptyStock()): ?>
                      <li class="product-outstook">
                        <p>
                          <i class="icofont-close-circled"></i>
                          <?php echo e($langg->lang78); ?>

                        </p>
                      </li>
                      <?php else: ?>
                      <li class="product-isstook">
                        <p>
                          <i class="icofont-check-circled"></i>
                          <?php echo e($gs->show_stock == 0 ? '' : $productt->stock); ?> <?php echo e($langg->lang79); ?>

                        </p>
                      </li>
                      <?php endif; ?>
                      <?php endif; ?>
                      <li>
                        <div class="ratings">
                          <div class="empty-stars"></div>
                          <div class="full-stars" style="width:<?php echo e(App\Models\Rating::ratings($productt->id)); ?>%"></div>
                        </div>
                      </li>
                      <li class="review-count">
                        <p><?php echo e(count($productt->ratings)); ?> <?php echo e($langg->lang80); ?></p>
                      </li>
                  <?php if($productt->product_condition != 0): ?>
                     <li>
                       <div class="<?php echo e($productt->product_condition == 2 ? 'mybadge' : 'mybadge1'); ?>">
                        <?php echo e($productt->product_condition == 2 ? 'New' : 'Used'); ?>

                       </div>
                     </li>
                  <?php endif; ?>
                    </ul>
                  </div>



            <div class="product-price">
              <p class="title"><?php echo e($langg->lang87); ?> :</p>
                    <p class="price"><span id="sizeprice"><?php echo e($productt->showPrice()); ?></span>
                      <small><del><?php echo e($productt->showPreviousPrice()); ?></del></small></p>
                      <?php if($productt->youtube != null): ?>
                      <a href="<?php echo e($productt->youtube); ?>" class="video-play-btn mfp-iframe">
                        <i class="fas fa-play"></i>
                      </a>
                    <?php endif; ?>
                  </div>

                  <div class="info-meta-2">
                    <ul>

                      <?php if($productt->type == 'License'): ?>

                      <?php if($productt->platform != null): ?>
                      <li>
                        <p><?php echo e($langg->lang82); ?>: <b><?php echo e($productt->platform); ?></b></p>
                      </li>
                      <?php endif; ?>

                      <?php if($productt->region != null): ?>
                      <li>
                        <p><?php echo e($langg->lang83); ?>: <b><?php echo e($productt->region); ?></b></p>
                      </li>
                      <?php endif; ?>

                      <?php if($productt->licence_type != null): ?>
                      <li>
                        <p><?php echo e($langg->lang84); ?>: <b><?php echo e($productt->licence_type); ?></b></p>
                      </li>
                      <?php endif; ?>

                      <?php endif; ?>

                    </ul>
                  </div>


                  <?php if(!empty($productt->size)): ?>
                  <div class="product-size">
                    <p class="title"><?php echo e($langg->lang88); ?> :</p>
                    <ul class="siz-list">
                      <?php
                      $is_first = true;
                      ?>
                      <?php $__currentLoopData = $productt->size; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data1): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <li class="<?php echo e($is_first ? 'active' : ''); ?>">
                        <span class="box"><?php echo e($data1); ?>

                          <input type="hidden" class="size" value="<?php echo e($data1); ?>">
                          <input type="hidden" class="size_qty" value="<?php echo e($productt->size_qty[$key]); ?>">
                          <input type="hidden" class="size_key" value="<?php echo e($key); ?>">
                          <input type="hidden" class="size_price"
                            value="<?php echo e(round($productt->size_price[$key] * $curr->value,2)); ?>">
                        </span>
                      </li>
                      <?php
                      $is_first = false;
                      ?>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      <li>
                    </ul>
                  </div>
                  <?php endif; ?>

                  <?php if(!empty($productt->color)): ?>
                  <div class="product-color">
                    <p class="title"><?php echo e($langg->lang89); ?> :</p>
                    <ul class="color-list">
                      <?php
                      $is_first = true;
                      ?>
                      <?php $__currentLoopData = $productt->color; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data1): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <li class="<?php echo e($is_first ? 'active' : ''); ?>">
                        <span class="box" data-color="<?php echo e($productt->color[$key]); ?>" style="background-color: <?php echo e($productt->color[$key]); ?>"></span>
                      </li>
                      <?php
                      $is_first = false;
                      ?>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    </ul>
                  </div>
                  <?php endif; ?>

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
                      <?php if($productt->product_type != "affiliate"): ?>
                      <li class="d-block count <?php echo e($productt->type == 'Physical' ? '' : 'd-none'); ?>">
                        <div class="qty">
                          <ul>
                            <li>
                              <span class="qtminus">
                                <i class="icofont-minus"></i>
                              </span>
                            </li>
                            <li>
                              <span class="qttotal">1</span>
                            </li>
                            <li>
                              <span class="qtplus">
                                <i class="icofont-plus"></i>
                              </span>
                            </li>
                          </ul>
                        </div>
                      </li>
                      <?php endif; ?>

                      <?php if(!empty($productt->attributes)): ?>
                        <?php
                          $attrArr = json_decode($productt->attributes, true);
                        ?>
                      <?php endif; ?>
                      <?php if(!empty($attrArr)): ?>
                        <div class="my-4 product-attributes">
                          <div class="row">
                          <?php $__currentLoopData = $attrArr; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $attrKey => $attrVal): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php if(array_key_exists("details_status",$attrVal) && $attrVal['details_status'] == 1): ?>

                          <div class="col-lg-6">
                              <div class="mb-2 form-group">
                                <strong for="" class="text-capitalize"><?php echo e(str_replace("_", " ", $attrKey)); ?> :</strong>
                                <div class="">
                                <?php $__currentLoopData = $attrVal['values']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $optionKey => $optionVal): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                  <div class="custom-control custom-radio">
                                    <input type="hidden" class="keys" value="">
                                    <input type="hidden" class="values" value="">
                                    <input type="radio" id="<?php echo e($attrKey); ?><?php echo e($optionKey); ?>" name="<?php echo e($attrKey); ?>" class="custom-control-input product-attr"  data-key="<?php echo e($attrKey); ?>" data-price = "<?php echo e($attrVal['prices'][$optionKey] * $curr->value); ?>" value="<?php echo e($optionVal); ?>" <?php echo e($loop->first ? 'checked' : ''); ?>>
                                    <label class="custom-control-label" for="<?php echo e($attrKey); ?><?php echo e($optionKey); ?>"><?php echo e($optionVal); ?>


                                    <?php if(!empty($attrVal['prices'][$optionKey])): ?>
                                      +
                                      <?php echo e($curr->sign); ?> <?php echo e($attrVal['prices'][$optionKey] * $curr->value); ?>

                                    <?php endif; ?>
                                    </label>
                                  </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                              </div>
                          </div>
                            <?php endif; ?>
                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                          </div>
                        </div>
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


                   

                    <ul class="call_sms_btn">
                    <li class="callnow">
                        <a  href="tel:<?php echo e($productt->user->shop_number); ?>" id="call_now_btn"><i class="fas fa-phone-volume"></i> Call Now</a>
                      </li>
                      <li class="smsnow">
                        <a href="sms://<?php echo e($productt->user->shop_number); ?>" id="sms_now_btn"><i class="fas fa-comments"></i> sms</a>
                      </li>
                    </ul>

                    

                    
                  </div>
                  <div class="social-links social-sharing a2a_kit a2a_kit_size_32">
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


                 
                  <?php if( $productt->deal_code != null ): ?>
                  <br>
                  <p class="p-sku">
                    Deal Code: <span class="idno"><?php echo e($productt->deal_code); ?></span>
          
                  </p>
                  <?php endif; ?>
      <?php if($gs->is_report): ?>

      

                    <?php if(Auth::guard('web')->check()): ?>

                    <div class="report-area">
                        <a href="javascript:;" data-toggle="modal" data-target="#report-modal"><i class="fas fa-flag"></i> <?php echo e($langg->lang776); ?></a>
                    </div>

                    <?php else: ?>

                    <div class="report-area">
                        <a href="javascript:;" data-toggle="modal" data-target="#comment-log-reg"><i class="fas fa-flag"></i> <?php echo e($langg->lang776); ?></a>
                    </div>
                    <?php endif; ?>

      

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
                                      <?php echo e(Carbon\Carbon::createFromFormat('Y-m-d H:i:s',$review->review_date)->diffForHumans()); ?>

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
                                  class="mr-1 btn login-btn"><?php echo e($langg->lang101); ?></a> <?php echo e($langg->lang102); ?></h5>
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


				<?php $__currentLoopData = $productt->similarProducts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> 
					 	<?php echo $__env->make('includes.product.sell', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			</div>
		</div>
<!-- 
PRODUCT END -->


<!-- PRODUCT -->

<div class="mt-5">
			<div class="product-slide1">


				<!-- single product  --->
			
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


      <div class="mt-3 seller-info">
        
        <div class="card" >
			<div class="card-header">
				<h4>Seller information</h4>
			</div>
			<div class="card-body" style="padding:1.0rem">
				<div class="media seller-profile-media">
                     <div class="media-left">
                        <a href="<?php echo e(route('front.vendor',str_replace(' ', '-', $productt->user->shop_name))); ?>">
                           <img style="border-radius:50%" class="media-object" src="<?php echo e($productt->user->photo ? asset('assets/images/users/'.$productt->user->photo):asset('assets/images/'.$gs->user_image)); ?>" width="70" alt="">
                        </a>
                    </div>
                    <div class="media-body">
                        <a href="<?php echo e(route('front.vendor',str_replace(' ', '-', $productt->user->shop_name))); ?>"><h4 class="media-heading"><?php echo e($productt->user->shop_name); ?>

                        <?php if($productt->user->checkStatus()): ?>
                  <i style="color:green" class="fas fa-check-circle"></i>

              <?php endif; ?>
                        </h4>
                        
                        </a>
                        
                        <div class="total-product">

           <?php if( $productt->user_id  != 0): ?>
              <p><?php echo e(App\Models\Product::where('user_id','=',$productt->user_id)->get()->count()); ?>

                <span><?php echo e($langg->lang248); ?></span>
              </p>
          <?php else: ?>
              <p><?php echo e(App\Models\Product::where('user_id','=',0)->get()->count()); ?>

                <span><?php echo e($langg->lang248); ?></span>
              </p>
          <?php endif; ?>
           
          </div>
                    </div>
                </div>
				<div class="row seller-quick-opt" style="margin-top:6px;">
					<div class="text-center col-4">
						<a href="<?php echo e(route('front.vendor',str_replace(' ', '-', $productt->user->shop_name))); ?>"><i class="fa fa-gift fa-3x" style="font-size:1.8em" aria-hidden="true"></i>
							<p>Seller Shop</p> 
						</a>
					</div>
					<div class="text-center col-4">
          <?php if(Auth::guard('web')->check()): ?>
					

            <a   href="javascript:;" data-toggle="modal" data-target="#vendorform1"><i class="fa fa-comment fa-3x"style="font-size:1.8em" aria-hidden="true"></i>
							<p>Chat Seller</p>
						</a>
            <?php else: ?>
	<a    href="javascript:;" data-toggle="modal" data-target="#comment-log-reg"><i class="fa fa-comment fa-3x"style="font-size:1.8em" aria-hidden="true"></i>
							<p>Chat Seller</p>
						</a>
            <?php endif; ?>
					</div>
					<div class="text-center col-4">
           <?php if(Auth::guard('web')->check()): ?>
            <?php if(
                        Auth::guard('web')->user()->favorites()->where('vendor_id','=',$productt->user->id)->get()->count() >
                        0): ?>
  Followed
              <?php else: ?>
	<a href="<?php echo e(route('user-favorite',['data1' => Auth::guard('web')->user()->id, 'data2' => $productt->user->id])); ?>"
                          href="javascript:;"><i class="fa fa-user-plus fa-3x" style="font-size:2.5em" aria-hidden="true"></i>
							<p>follow</p>
						</a> 
              <?php endif; ?>          
					
            <?php else: ?>
        	<a  href="javascript:;" data-toggle="modal" data-target="#comment-log-reg"><i class="fa fa-user-plus fa-3x" style="font-size:1.8em" aria-hidden="true"></i>
							<p>follow</p>
						</a>
            <?php endif; ?>
					</div>
				</div>
				<hr>
				
				<div class="follow-profile-pic">
				<p>This seller has <span style="color:#2395FD"><?php echo e($productt->user->followers->count()); ?> followers</span></p>
        <?php $__currentLoopData = $productt->user->followers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $follower): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

					<img class="media-object" src="<?php echo e($follower->user->photo ? asset('assets/images/users/'.$follower->user->photo):asset('assets/images/'.$gs->user_image)); ?>" alt="">
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

				</div>
			</div>
		</div>
    <div class="my-4 card">
		
		</div>
    <div class="card">
			<div class="card-header">
				<h4>PRODUCTS</h4>
			</div>
			<div class="card-body">
      <?php $__currentLoopData = $vendors; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $vendor): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> 
				<div class="media products-media">
                     <div class="media-left">
                        <a href="<?php echo e(URL::to('/item/'.$vendor->slug)); ?>">
                           <img class="media-object" src="<?php echo e($vendor->photo ? asset('assets/images/thumbnails/'.$vendor->thumbnail):asset('assets/images/noimage.png')); ?>" width="70" alt="">
                        </a>
                    </div>
                    <div class="media-body">
                        <a href="<?php echo e(URL::to('/item/'.$vendor->slug)); ?>"><h5 class="media-heading"><?php echo e($vendor->name); ?></h5></a>
                        <h6><strong><?php echo e($vendor->showPrice()); ?></strong> <small>&nbsp; <del><?php echo e($vendor->showPreviousPrice()); ?></del></small></h6>
                    </div>
                </div>
				<hr>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
		</div>
    
      </div>


    </div>

    </div>
    
  </div>
  <!-- Trending Item Area Start -->
<div class="trending">
  <div class="">
    

	
	
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
          <div class="p-0 container-fluid">
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
          <div class="p-0 container-fluid">
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