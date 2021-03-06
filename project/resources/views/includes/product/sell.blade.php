<div class="product-item">
					<div class="thumbnail">
					 <div class="extra-list top-icon-bar">
						<ul>	
							<li> 
							
								<span class="quick-view add-new-cart  " rel-toggle="tooltip" title="" href="javascript:;" data-href="{{route('product.cart.add',$product->id)}}"   data-original-title="Add To Cart"> <i class="icofont-cart"></i>
								</span>
								
							</li> 
							<li>
								<span href="javascript:;" class="add-to-compare" data-href="{{route('product.compare.add',$product->id)}}" data-toggle="tooltip" data-placement="right" title="" data-original-title="Compare">
									<i class="icofont-exchange"></i>
								</span>
							</li>
							<li> 
							@if(Auth::guard('web')->check())
							<span class="wishlist-new" href="javascript:;" data-href="{{ route('user-wishlist-add',$product->id) }}" rel-toggle="tooltip" title=""  id="wish-btn"  data-placement="right" data-original-title="Add To Wishlist">
									<i class="icofont-heart-alt"></i>
								</span> 
							@else
								<span href="javascript:;" rel-toggle="tooltip" title="" data-toggle="modal" id="wish-btn" data-target="#comment-log-reg" data-placement="right" data-original-title="Add To Wishlist">
									<i class="icofont-heart-alt"></i>
								</span> 
								@endif
							</li> 
						</ul>
    				 </div>
						<a href="product-details.html">
							<div class="product-thum-img">
								<a href="{{URL::to('/item/'.$product->slug)}}"><img class="lazy" src="{{ $product->photo ? asset('assets/images/thumbnails/'.$product->thumbnail):asset('assets/images/noimage.png') }}" alt="" /></a>
							</div>
						</a>
						<h5 class="mt-2">{{$product->name}}</h5>
						<div class="local-info d-flex flex-row flex-wrap">
							<div class="d-flex" style="margin-top:5px;"><div class="local-main"><i class="fas fa-star local-star"></i></div><div class="local-content">Member</div></div> 
							<div><span style="margin-left:5px;font-size:14px;">{{$product->getAddress?$product->getAddress->name:""}} </span></div> 
							<div><span style="margin-left:5px;font-size:14px;">{{$product->category->name}}</span></div>
							<div class="ml-auto mt-2" style="font-size:14px">
								{{$product->created_at->diffForHumans()}} 
							</div>
						</div> 
						<div class="price-details clearfix mt-3">
							<div class="price-number float-left">
								<p class="text-left" style="font-size:20px"><strong class="rupees">{{$product->price}} BDT</strong></p>
							</div>
							<div class="add-cart float-right">
								@if(!$product->emptyStock())
								<a style="background: red;" class="add-to-cart-a " href="{{ route('product.cart.quickadd',$product->id) }}">
																	Buy Now
																</a>
								@else
								<a style="background: red;" class="add-to-cart-a " href="javascript::void(0)">
																	Out Of Stock
																</a>
								@endif
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>