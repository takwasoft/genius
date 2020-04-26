			@if (count($prods) > 0)
				<div class="row">
						@foreach ($prods as $key => $prod)
									<div class="col-lg-4 col-md-4 col-6" style="padding-left:10px;padding-right:10px;">

										<div class="product-item">
											<div class="thumbnail">
											<div class="extra-list top-icon-bar">
												<ul>	
													<li>
														<span class="quick-view" rel-toggle="tooltip" title="" href="javascript:;" data-href="http://shotovag.com/shop/item/quick/view/124" data-toggle="modal" data-target="#comment-log-reg" data-placement="right" data-original-title="Add To Cart"> <i class="icofont-cart"></i>
														</span>
													</li>
													<li>
														<span href="javascript:;" class="add-to-compare" data-href="http://shotovag.com/shop/item/compare/add/124" data-toggle="tooltip" data-placement="right" title="" data-original-title="Compare">
															<i class="icofont-exchange"></i>
														</span>
													</li>
													<li>
														<span href="javascript:;" rel-toggle="tooltip" title="" data-toggle="modal" id="wish-btn" data-target="#comment-log-reg" data-placement="right" data-original-title="Add To Wishlist">
															<i class="icofont-heart-alt"></i>
														</span> 
													</li>
												</ul>
    										 </div>
												<a href="{{ route('front.product', $prod->slug) }}">
													<div class="product-thum-img">
														<a href="{{ route('front.product', $prod->slug) }}"><img  src="{{ $prod->photo ? asset('assets/images/thumbnails/'.$prod->thumbnail):asset('assets/images/noimage.png') }}" alt=""></a>
													</div>
												</a>
												<h5 class="mt-2">{{$prod->name}} </h5>
												<div class="local-info d-flex flex-row flex-wrap">
												<div class="d-flex" style="margin-top:5px;"><div class="local-main"><i class="fas fa-star local-star"></i></div><div class="local-content">সদস্য</div></div>
												<div><span style="margin-left:5px;font-size:14px;">Dhaka,</span></div>
												<div><span style="margin-left:5px;font-size:14px;">Electronics</span></div>
												</div>
												<div class="price-details clearfix mt-3">
													<div class="price-number float-left">
														<p class="text-left" style="font-size:20px"><strong class="rupees">{{$prod->price}} BDT</strong></p>
													</div>
													<div class="add-cart float-right">
															<span style="background: red;" class="add-to-cart add-to-cart-btn" data-href="{{ route('product.cart.add',$prod->id) }}">
																	{{ $langg->lang56 }}
																</span>
																<!-- <span class="add-to-cart-quick add-to-cart-btn"
																	data-href="{{ route('product.cart.quickadd',$prod->id) }}">
																	<i class="icofont-cart"></i> {{ $langg->lang251 }}
																</span> -->
													</div>
													<div class="clear"></div>
												</div>
											</div>
										</div>
										<!-- <a href="{{ route('front.product', $prod->slug) }}" class="item">
											<div class="item-img">
												@if(!empty($prod->features))
													<div class="sell-area">
													  @foreach($prod->features as $key => $data1)
														<span class="sale" style="background-color:{{ $prod->colors[$key] }}">{{ $prod->features[$key] }}</span>
														@endforeach
													</div>
												@endif
													<div class="extra-list">
														<ul>
															<li>
																@if(Auth::guard('web')->check())

																<span class="add-to-wish" data-href="{{ route('user-wishlist-add',$prod->id) }}" data-toggle="tooltip" data-placement="right" title="{{ $langg->lang54 }}" data-placement="right"><i class="icofont-heart-alt" ></i>
																</span>

																@else

																<span rel-toggle="tooltip" title="{{ $langg->lang54 }}" data-toggle="modal" id="wish-btn" data-target="#comment-log-reg" data-placement="right">
																	<i class="icofont-heart-alt"></i>
																</span>

																@endif
															</li>
															<li>
															<span class="quick-view" rel-toggle="tooltip" title="{{ $langg->lang55 }}" href="javascript:;" data-href="{{ route('product.quick',$prod->id) }}" data-toggle="modal" data-target="#quickview" data-placement="right"> <i class="icofont-eye"></i>
															</span>
															</li>
															<li>
																<span class="add-to-compare" data-href="{{ route('product.compare.add',$prod->id) }}"  data-toggle="tooltip" data-placement="right" title="{{ $langg->lang57 }}" data-placement="right">
																	<i class="icofont-exchange"></i>
																</span>
															</li>
														</ul>
													</div>
												<img class="img-fluid" src="{{ $prod->photo ? asset('assets/images/thumbnails/'.$prod->thumbnail):asset('assets/images/noimage.png') }}" alt="">
											</div>
											<div class="info">
												<div class="stars">
                            <div class="ratings">
                                <div class="empty-stars"></div>
                                <div class="full-stars" style="width:{{App\Models\Rating::ratings($prod->id)}}%"></div>
                            </div>
												</div>
												<h4 class="price">{{ $prod->setCurrency() }} <del><small>{{ $prod->showPreviousPrice() }}</small></del></h4>
														<h5 class="name">{{ $prod->showName() }}</h5>
														<div class="item-cart-area">
															@if($prod->product_type == "affiliate")
																<span class="add-to-cart-btn affilate-btn"
																	data-href="{{ route('affiliate.product', $prod->slug) }}"><i class="icofont-cart"></i>
																	{{ $langg->lang251 }}
																</span>
															@else
																@if($prod->emptyStock())
																<span class="add-to-cart-btn cart-out-of-stock">
																	<i class="icofont-close-circled"></i> {{ $langg->lang78 }}
																</span>
																@else
																<span class="add-to-cart add-to-cart-btn" data-href="{{ route('product.cart.add',$prod->id) }}">
																	<i class="icofont-cart"></i> {{ $langg->lang56 }}
																</span>
																<span class="add-to-cart-quick add-to-cart-btn"
																	data-href="{{ route('product.cart.quickadd',$prod->id) }}">
																	<i class="icofont-cart"></i> {{ $langg->lang251 }}
																</span>
																@endif
															@endif
														</div>
											</div>
										</a> -->

									</div>
				
				@endforeach
				</div>
				<div class="bottom-add mt-3">
					<div class="container">
						<center><img src="{{ asset('assets/images/brand/gp.gif')}}"></center>
					</div>
				</div>
				<div class="col-lg-12 pb-4">
					<div class="page-center mt-5">
						{!! $prods->appends(['search' => request()->input('search')])->links() !!}
					</div>
				</div>
			@else
				<div class="col-lg-12 pb-4">
					<div class="page-center">
						 <h4 class="text-center">{{ $langg->lang60 }}</h4>
					</div>
				</div>
			@endif


@if(isset($ajax_check))


<script type="text/javascript">


// Tooltip Section


    $('[data-toggle="tooltip"]').tooltip({
      });
      $('[data-toggle="tooltip"]').on('click',function(){
          $(this).tooltip('hide');
      });




      $('[rel-toggle="tooltip"]').tooltip();

      $('[rel-toggle="tooltip"]').on('click',function(){
          $(this).tooltip('hide');
      });


// Tooltip Section Ends

</script>

@endif