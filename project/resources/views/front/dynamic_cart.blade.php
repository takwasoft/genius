
					<span class="input-group-btn"style=" border-radius: 50px;border-top-right-radius: 0; border-bottom-right-radius: 0;background: #e2dede;">
						<button class="btn " type="button">
							<a href="{{route('front.cart')}}"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
						</button>
						
					</span>
					<div class="cart-text" style="padding-top: 7px; width: 72%;text-align: center;border: 1px solid #d0d0d2;"><span>{{ Session::has('cart') ? count(Session::get('cart')->items) : '0' }} items | </span> {{Session::has('cart') ?Session::get('cart')->totalPrice:'0'}} BDT</div>
					<span class="input-group-btn" style=" border-radius: 50px;border-top-left-radius: 0; border-bottom-left-radius: 0;background: #e2dede;">
						<button class="btn" type="button">
						@if(Auth::guard('web')->check())
							<span><a href="{{ route('user-wishlists') }}"><i class="fa fa-heart " aria-hidden="true"></i>{{ count(Auth::user()->wishlists) }}</a></span>
						@else
							<span>
							<a href="javascript:;" data-toggle="modal" id="wish-btn" data-target="#comment-log-reg" class="wish">
							<i class="fa fa-heart " aria-hidden="true"></i>0</a>
							</span>
						@endif
						</button>
					</span>
				