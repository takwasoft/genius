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