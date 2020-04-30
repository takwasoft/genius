@extends('layouts.vendor')
@section('styles')

<link href="{{asset('assets/vendor/css/product.css')}}" rel="stylesheet"/>
<link href="{{asset('assets/admin/css/jquery.Jcrop.css')}}" rel="stylesheet"/>
<link href="{{asset('assets/admin/css/Jcrop-style.css')}}" rel="stylesheet"/>
<style>
	.sub-cate-item{
    top: 0%; 
    position: absolute;
    left: 100%;  
    width: 90%; 
    margin-left: 5px;
    display: none;
}
.close span {
    font-size: 27px!important;
}
.main-cate-item li:hover .sub-cate-item{
    display: block;
}

.categories-list-division li:hover .sub-cate-item-division{
    display: block;
}
.model-item li {
    border-top: 1px solid rgba(0, 0, 0, .125);
    padding: .7rem 0 .7rem .80rem;
}
.model-item li li {
    border-top: 1px solid rgba(0, 0, 0, .125);
    padding: .6rem .5rem;
}
.model-item li:last-child {
    border-bottom: 1px solid rgba(0, 0, 0, .125);
}
.model-item li:first-child {
    border-top: none;
}
.model-item1 li:first-child {
    border-top: 1px solid rgba(0, 0, 0, .125);
}
.model-item ul {
    margin-top: 0;
    margin-bottom: 10px;
	padding: 0;
    list-style: none;
}
.model-item li a {
    color: #0074ba;
}
.model-item li ul li a {
    color: #0074ba!important;
}
</style>
@endsection
@section('content')

						<div class="content-area">
							<div class="mr-breadcrumb">
								<div class="row">
									<div class="col-lg-12">
											<h4 class="heading">{{ $langg->lang629 }} <a class="add-btn" href="{{ route('select-area') }}"><i class="fas fa-arrow-left"></i> {{ $langg->lang550 }}</a></h4>
											<ul class="links">
                      <li>
                        <a href="{{ route('vendor-dashboard') }}">{{ $langg->lang441 }}</a>
                      </li>
                      <li>
                        <a href="javascript:;">{{ $langg->lang444 }} </a>
                      </li>
                      <li>
                        <a href="{{ route('vendor-prod-index') }}">{{ $langg->lang446 }}</a>
                      </li>
                      <li>
                        <a href="{{ route('select-area') }}">{{ $langg->lang445 }}</a>
                      </li>
												<li>
													<a href="{{ route('vendor-prod-physical-create') }}">{{ $langg->lang629 }}</a>
												</li>
											</ul>
									</div>
								</div>
							</div>
							<div class="add-product-content">
								<div class="row">
									<div class="col-lg-12">
										<div class="product-description">
											<div class="body-area">

	                      <div class="gocover" style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
	                      <form id="geniusform" action="{{route('vendor-prod-store')}}" method="POST" enctype="multipart/form-data">
	                        {{csrf_field()}}
							@if(request()->area)
								<input type="hidden" name="area_id" value="{{request()->area}}">
							@endif
                        @include('includes.vendor.form-both')


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ $langg->lang632 }}* </h4>
																<p class="sub-heading">{{ $langg->lang517 }}</p>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" placeholder="{{ $langg->lang632 }}" name="name" required="">
													</div>
												</div>


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ $langg->lang793 }}* </h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" placeholder="{{ $langg->lang794 }}" name="sku" required="" value="{{ str_random(3).substr(time(), 6,8).str_random(3) }}">

                            <div class="checkbox-wrapper">
                              <input type="checkbox" name="product_condition_check" class="checkclick" id="conditionCheck" value="1">
                              <label for="conditionCheck">{{ $langg->lang633 }}</label>
                            </div>

													</div>
												</div>

						                        <div class="showbox">

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ $langg->lang634 }}*</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<select name="product_condition">
				                                                  <option value="2">{{ $langg->lang635 }}</option>
				                                                  <option value="1">{{ $langg->lang636 }}</option>
															</select>
													</div>

												</div>


												</div>
											
												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">Brand</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<select  name="brand_id" >
																	<option value="">Select Brand</option>
                                  @foreach($brands as $brand)
                                  <option  value="{{ $brand->id }}">{{$brand->name}}</option>
                                  @endforeach
                             </select>
													</div>
												</div>
												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">Area</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<div data-target="#my-modal" data-toggle="modal">Dhaka/Gazipur</div>
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">Category</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<div data-target="#my-modal2" data-toggle="modal">Electronics/LED TV</div>
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ $langg->lang637 }}*</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<select id="cat" name="category_id" required="">
																	<option value="">{{ $langg->lang691 }}</option>
                                  @foreach($cats as $cat)
                                  <option data-href="{{ route('vendor-subcat-load',$cat->id) }}" value="{{ $cat->id }}">{{$cat->name}}</option>
                                  @endforeach
                             </select>
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ $langg->lang638 }}*</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<select id="subcat" name="subcategory_id" disabled="">
                                  <option value="">{{ $langg->lang639 }}</option>
															</select>
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ $langg->lang640 }}*</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<select id="childcat" name="childcategory_id" disabled="">
                                                  				<option value="">{{ $langg->lang641 }}</option>
															</select>
													</div>
												</div>


												<div id="catAttributes"></div>
												<div id="subcatAttributes"></div>
												<div id="childcatAttributes"></div>

							                     <div class="row">
							                        <div class="col-lg-4">
							                          <div class="left-area">
							                              <h4 class="heading">{{ $langg->lang642 }} *</h4>
							                          </div>
							                        </div>
							                        <div class="col-lg-7">
	<div class="row">
	<div class="panel panel-body">
		<div class="span4 cropme text-center" id="landscape" style="width: 400px; height: 400px; border: 1px dashed black;">
		</div>
		</div>
	</div>

			<a href="javascript:;" id="crop-image" class="d-inline-block mybtn1">
				<i class="icofont-upload-alt"></i> {{ $langg->lang643 }}
			</a>


							                        </div>
							                      </div>

							                      <input type="hidden" id="feature_photo" name="photo" value="">



						                        <input type="file" name="gallery[]" class="hidden" id="uploadgallery" accept="image/*" multiple>
												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">
																		{{ $langg->lang644 }} *
																</h4>
														</div>
													</div>
													<div class="col-lg-7">
														<a href="#" class="set-gallery"  data-toggle="modal" data-target="#setgallery">
																<i class="icofont-plus"></i> {{ $langg->lang645 }}
														</a>
													</div>
												</div>


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">

														</div>
													</div>
													<div class="col-lg-7">
														<ul class="list">
															<li>
																<input class="checkclick1" name="shipping_time_check" type="checkbox" id="check1" value="1">
																<label for="check1">{{ $langg->lang646 }}</label>
															</li>
														</ul>
													</div>
												</div>



						                        <div class="showbox">

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ $langg->lang647 }}* </h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" placeholder="{{ $langg->lang647 }}" name="ship">
													</div>
												</div>


						                        </div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">

														</div>
													</div>
													<div class="col-lg-7">
														<ul class="list">
															<li>
																<input name="size_check" type="checkbox" id="size-check" value="1">
																<label for="size-check">{{ $langg->lang648 }}</label>
															</li>
														</ul>
													</div>
												</div>
													<div class="showbox" id="size-display">
													<div class="row">
															<div  class="col-lg-4">
															</div>
															<div  class="col-lg-7">
																<div class="product-size-details" id="size-section">
																		<div class="size-area">
																		<span class="remove size-remove"><i class="fas fa-times"></i></span>
																		<div  class="row">
																				<div class="col-md-4 col-sm-6">
																					<label>
																						{{ $langg->lang649 }} :
																						<span>
																							{{ $langg->lang650 }}
																						</span>
																					</label>
																					<input type="text" name="size[]" class="input-field" placeholder="{{ $langg->lang649 }}">
																				</div>
																				<div class="col-md-4 col-sm-6">
																						<label>
																							{{ $langg->lang651 }} :
																							<span>
																								{{ $langg->lang652 }}
																							</span>
																						</label>
																					<input type="number" name="size_qty[]" class="input-field" placeholder="Size Qty" value="1" min="1">
																				</div>
																				<div class="col-md-4 col-sm-6">
																						<label>
																							{{ $langg->lang653 }} :
																							<span>
																								{{ $langg->lang654 }}
																							</span>
																						</label>
																					<input type="number" name="size_price[]" class="input-field" placeholder="Size Price" value="0" min="0">
																				</div>
																			</div>
																		</div>
																</div>

																<a href="javascript:;" id="size-btn" class="add-more"><i class="fas fa-plus"></i>{{ $langg->lang655 }} </a>
															</div>
													</div>
													</div>
												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">

														</div>
													</div>
													<div class="col-lg-7">
														<ul class="list">
															<li>
																<input class="checkclick1" name="color_check" type="checkbox" id="check3" value="1">
																<label for="check3">{{ $langg->lang656 }}</label>
															</li>
														</ul>
													</div>
												</div>



						                        <div class="showbox">

													<div class="row">
															<div  class="col-lg-4">
																<div class="left-area">
																	<h4 class="heading">
																		{{ $langg->lang657 }}*
																	</h4>
																	<p class="sub-heading">
																		{{ $langg->lang658 }}
																	</p>
																</div>
															</div>
															<div  class="col-lg-7">
																	<div class="select-input-color" id="color-section">
																		<div class="color-area">
																			<span class="remove color-remove"><i class="fas fa-times"></i></span>
											                                <div class="input-group colorpicker-component cp">
											                                  <input type="text" name="color[]" value="#000000"  class="input-field cp"/>
											                                  <span class="input-group-addon"><i></i></span>
											                                </div>
											                         	</div>
											                         </div>
																	<a href="javascript:;" id="color-btn" class="add-more mt-4 mb-3"><i class="fas fa-plus"></i>{{ $langg->lang659 }} </a>
															</div>
														</div>

						                        </div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">

														</div>
													</div>
													<div class="col-lg-7">
														<ul class="list">
															<li>
																<input class="checkclick1" name="whole_check" type="checkbox" id="whole_check" value="1">
																<label for="whole_check">{{ $langg->lang660 }}</label>
															</li>
														</ul>
													</div>
												</div>

						                    <div class="showbox">
												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">

														</div>
													</div>
													<div class="col-lg-7">
														<div class="featured-keyword-area">
															<div class="feature-tag-top-filds" id="whole-section">
																<div class="feature-area">
																	<span class="remove whole-remove"><i class="fas fa-times"></i></span>
																	<div class="row">
																		<div class="col-lg-6">
																		<input type="number" name="whole_sell_qty[]" class="input-field" placeholder="{{ $langg->lang661 }}" min="0">
																		</div>

																		<div class="col-lg-6">
											                            <input type="number" name="whole_sell_discount[]" class="input-field" placeholder="{{ $langg->lang662 }}" min="0" />
																		</div>
																	</div>
																</div>
															</div>

															<a href="javascript:;" id="whole-btn" class="add-fild-btn"><i class="icofont-plus"></i> {{ $langg->lang663 }}</a>
														</div>
													</div>
												</div>
											</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
															<h4 class="heading">
																{{ $langg->lang664 }}*
															</h4>
															<p class="sub-heading">
															
																({{ $langg->lang665 }} {{$sign->name}})
																@if($maxPrice!=-1)
																<br>
																<span class="text text-danger">
																You can set the price maximum {{$maxPrice}} {{$sign->name}} in your current package
																</span>
															@endif 
															</p>
														</div>
													</div>
													<div class="col-lg-7">
														<input max="{{$maxPrice}}" name="price" step="0.1" type="number" class="input-field" placeholder="{{ $langg->lang666 }}" required="" min="0">
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ $langg->lang667 }}*</h4>
																<p class="sub-heading">{{ $langg->lang668 }}</p>
														</div>
													</div>
													<div class="col-lg-7">
														<input name="previous_price" step="0.1" type="number" class="input-field" placeholder="{{ $langg->lang666 }}" min="0">
													</div>
												</div>

												<div class="row" id="stckprod">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ $langg->lang669 }}*</h4>
																<p class="sub-heading">{{ $langg->lang670 }}</p>
														</div>
													</div>
													<div class="col-lg-7">
														<input name="stock" type="text" class="input-field" placeholder="{{ $langg->lang666 }}">
														<div class="checkbox-wrapper">
															<input type="checkbox" name="measure_check" class="checkclick" id="allowProductMeasurement" value="1">
															<label for="allowProductMeasurement">{{ $langg->lang671 }}</label>
														</div>
													</div>
												</div>



											<div class="showbox">

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ $langg->lang672 }}*</h4>
														</div>
													</div>
													<div class="col-lg-3">
															<select id="product_measure">
			                                                  <option value="">{{ $langg->lang673 }}</option>
			                                                  <option value="Gram">{{ $langg->lang674 }}</option>
			                                                  <option value="Kilogram">{{ $langg->lang675 }}</option>
			                                                  <option value="Litre">{{ $langg->lang676 }}</option>
			                                                  <option value="Pound">{{ $langg->lang677 }}</option>
			                                                  <option value="Custom">{{ $langg->lang678 }}</option>
						                                     </select>
													</div>
													<div class="col-lg-1"></div>
													<div class="col-lg-3 hidden" id="measure">
														<input name="measure" type="text" id="measurement" class="input-field" placeholder="{{ $langg->lang679 }}">
													</div>
												</div>

											</div>


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
															<h4 class="heading">
																	{{ $langg->lang680 }}*
															</h4>
														</div>
													</div>
													<div class="col-lg-7">
														<div class="text-editor">
															<textarea class="nic-edit-p" name="details"></textarea>
														</div>
													</div>
												</div>



												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
															<h4 class="heading">
																	{{ $langg->lang681 }}*
															</h4>
														</div>
													</div>
													<div class="col-lg-7">
														<div class="text-editor">
															<textarea class="nic-edit-p" name="policy"></textarea>
														</div>
													</div>
												</div>


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ $langg->lang682 }}*</h4>
																<p class="sub-heading">{{ $langg->lang668 }}</p>
														</div>
													</div>
													<div class="col-lg-7">
														<input  name="youtube" type="text" class="input-field" placeholder="{{ $langg->lang682 }}">
							                            <div class="checkbox-wrapper">
							                              <input type="checkbox" name="seo_check" value="1" class="checkclick" id="allowProductSEO" value="1">
							                              <label for="allowProductSEO">{{ $langg->lang683 }}</label>
							                            </div>
													</div>
												</div>



						                        <div class="showbox">
						                          <div class="row">
						                            <div class="col-lg-4">
						                              <div class="left-area">
						                                  <h4 class="heading">{{ $langg->lang684 }} *</h4>
						                              </div>
						                            </div>
						                            <div class="col-lg-7">
						                              <ul id="metatags" class="myTags">
						                              </ul>
						                            </div>
						                          </div>

						                          <div class="row">
						                            <div class="col-lg-4">
						                              <div class="left-area">
						                                <h4 class="heading">
						                                    {{ $langg->lang685 }} *
						                                </h4>
						                              </div>
						                            </div>
						                            <div class="col-lg-7">
						                              <div class="text-editor">
						                                <textarea name="meta_description" class="input-field" placeholder="{{ $langg->lang685 }}"></textarea>
						                              </div>
						                            </div>
						                          </div>
						                        </div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">

														</div>
													</div>
													<div class="col-lg-7">
														<div class="featured-keyword-area">
															<div class="heading-area">
																<h4 class="title">{{ $langg->lang686 }}</h4>
															</div>

															<div class="feature-tag-top-filds" id="feature-section">
																<div class="feature-area">
																	<span class="remove feature-remove"><i class="fas fa-times"></i></span>
																	<div class="row">
																		<div class="col-lg-6">
																		<input type="text" name="features[]" class="input-field" placeholder="{{ $langg->lang687 }}">
																		</div>

																		<div class="col-lg-6">
											                                <div class="input-group colorpicker-component cp">
											                                  <input type="text" name="colors[]" value="#000000" class="input-field cp"/>
											                                  <span class="input-group-addon"><i></i></span>
											                                </div>
																		</div>
																	</div>
																</div>
															</div>

															<a href="javascript:;" id="feature-btn" class="add-fild-btn"><i class="icofont-plus"></i> {{ $langg->lang688 }}</a>
														</div>
													</div>
												</div>


						                        <div class="row">
						                          <div class="col-lg-4">
						                            <div class="left-area">
						                                <h4 class="heading">{{ $langg->lang689 }} *</h4>
						                            </div>
						                          </div>
						                          <div class="col-lg-7">
						                            <ul id="tags" class="myTags">
						                            </ul>
						                          </div>
						                        </div>
						                        <input type="hidden" name="type" value="Physical">
												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">

														</div>
													</div>
													<div class="col-lg-7 text-center">
														<button class="addProductSubmit-btn" type="submit">{{ $langg->lang690 }}</button>
													</div>
												</div>
											</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						{{-- Start Area modal  --}}
{{-- <div class="modal fade" id="my-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content" style="overflow: scroll;height:90vh">

            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                <div class="row">
                    <div class="col-md-6">
                        <h6 class="mb-3">শহর বা বিভাগ নির্বাচন করুন</h6>
                        <a href="" style="color: #0074ba;">বাংলাদেশ-এর সবগুলো</a>
                        <h6 class="text-muted" style="margin-top: 19px;border-top: 1px solid rgba(0, 0, 0, .125);; padding-top: 10px;">শহর</h6>
                    </div>
                    <div class="col-md-6">
                        <h6>খুলনা-এর মধ্যে একটি স্থানীয় এলাকা নির্বাচন করুন</h6>
                        <h6 class="mt-3 text-muted">জনপ্রিয় এলাকাসমূহ</h6>
                        <h6 class="mt-4" style="color: #0074ba">খুলনা-এর সবগুলো</h6>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="categories-list model-item main-cate-item">
                            <ul>

                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Chittagong</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>

                                         <div class="categories-list sub-cate-item" style="">
                                        <ul class="sub-menu1 text-muted">
                                            <li><a class="text-muted" href="http://google.com">Chittagong 1</a></li>
                                            <li><a href="#" class="text-muted">Chittagong 2</a>
                                            </li>
                                            <li><a href="#" class="text-muted">Chittagong 3</a></li>
                                            <li><a href="#" class=" text-muted">Chittagong 4</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Barisal</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>

                                       <div class="categories-list sub-cate-item" style="">
                                        <ul class="sub-menu1 text-muted">
                                            <li><a class="text-muted" href="http://google.com">Barisal 1</a></li>
                                            <li><a href="#" class="text-muted">Barisal 2</a>
                                            </li>
                                            <li><a href="#" class="text-muted">Barisal 3</a></li>
                                            <li><a href="#" class=" text-muted">Barisal 4</a></li>
                                        </ul>
                                    </div>


                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Khulna</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Mymensingh</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Sylhet</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Rajshahi</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                            </ul>
                        </div>

                        <div class="btn text-muted mt-3">বিভাগ</div>
                        <div class=" categories-list model-item categories-list-division">
                            <ul>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Dhaka</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>

                                     <div class="categories-list sub-cate-item sub-cate-item-division" >
                                        <ul class="sub-menu1 text-muted">
                                            <li><a class="text-muted" href="http://google.com">Dhaka 5</a></li>
                                            <li><a href="#" class="text-muted">Ghazipur 5</a>
                                            </li>
                                            <li><a href="#" class="text-muted">Kishoreganj 5</a></li>
                                            <li><a href="#" class=" text-muted">Manikganj 5</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Chittagong</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>

                                    <div class="categories-list sub-cate-item sub-cate-item-division" style="">
                                        <ul class="sub-menu1 text-muted">
                                            <li><a class="text-muted" href="http://google.com">Chittagong 100</a></li>
                                            <li><a href="#" class="text-muted">Chittagong 100</a>
                                            </li>
                                            <li><a href="#" class="text-muted">Chittagong 100</a></li>
                                            <li><a href="#" class=" text-muted">Chittagong 100</a></li>
                                        </ul>
                                    </div>

                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Barisal</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>

                                        <div class="categories-list sub-cate-item sub-cate-item-division" style="">
                                        <ul class="sub-menu1 text-muted">
                                            <li><a class="text-muted" href="http://google.com">Barisal 420</a></li>
                                            <li><a href="#" class="text-muted">Barisal 420</a>
                                            </li>
                                            <li><a href="#" class="text-muted">Barisal 420</a></li>
                                            <li><a href="#" class=" text-muted">Barisal 420</a></li>
                                        </ul>
                                    </div>

                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Khulna</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Mymensingh</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Sylhet</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">Rajshahi</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div> --}}

<div class="modal fade" id="my-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content" style="overflow: scroll;height:90vh">

            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                <div class="row">
                    <div class="col-md-6">
                        <h6 class="mb-3">শহর বা বিভাগ নির্বাচন করুন</h6>
                        <a href="" style="color: #0074ba;">বাংলাদেশ-এর সবগুলো</a>
                        <h6 class="text-muted" style="margin-top: 19px;border-top: 1px solid rgba(0, 0, 0, .125);; padding-top: 10px;">শহর</h6>
                    </div>
                    <div class="col-md-6">
                        <h6>খুলনা-এর মধ্যে একটি স্থানীয় এলাকা নির্বাচন করুন</h6>
                        <h6 class="mt-3 text-muted">জনপ্রিয় এলাকাসমূহ</h6>
                        
                    </div>

					
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="categories-list model-item main-cate-item ">
                            <ul>
                                @foreach($districts as $district)

                                    <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">{{$district->name}}</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                    <div class="categories-list sub-cate-item" style="">
                                        <ul class="sub-menu1 text-muted">
                                         <li><a class="text-muted" href="http://google.com">{{$district->name}} এর সবগুলো</a></li>
                                            @foreach($district->subdistricts as $subdistrict)
                                                <li><a class="text-muted" href="http://google.com">{{$subdistrict->name}}</a></li>
                                            @endforeach
                                            
                                        </ul>
                                    </div>

                                </li>
                                @endforeach
                              
                            </ul>
                        </div>

                        <div class="btn text-muted mt-3">বিভাগ</div>
                        <div class=" categories-list model-item categories-list-division">
                            <ul>
                               @foreach($divisions as $division)
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">{{$division->name}}</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                        <div class="categories-list sub-cate-item sub-cate-item-division" style="">
                                        <ul class="sub-menu1 text-muted">
                                         <li><a class="text-muted" href="http://google.com">{{$division->name}} বিভাগ এর সবগুলো</a></li>
                                            @foreach($division->districts as $district)
                                                <li><a class="text-muted" href="http://google.com">{{$district->name}}</a></li>
                                            @endforeach
                                            
                                        </ul>
                                    </div>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>
						{{-- End Area model --}}

							{{-- Start category modal  --}}
<div class="modal fade" id="my-modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content" style="overflow: scroll;height:90vh">

            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                <div class="row">
                    <div class="col-md-6">
                        <h6 class="mb-2">একটি শ্রেণী নির্বাচন করুন:</h6>
                        <a href="" class="mb-3" style="color: #0074ba;display:inline-block">সকল শ্রেণী</a>
                        
                    </div>
                    <div class="col-md-6">
                        <h6>একটি উপ-শ্রেণী নির্বাচন করুন:</h6>
                        <a href="#" class="mt-4" style="color: #0074ba">সকল ইলেকট্রনিক্স</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="categories-list model-item main-cate-item model-item1">
                            <ul> 
							@foreach($cats as $cat)
                                <li>
                                    <a href="#" class="clearfix">
                                        <span class="float-left">{{$cat->name}}</span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                    <div class="categories-list sub-cate-item" style="">
                                        <ul class="sub-menu1 text-muted">
										@foreach($cat->subs as $sub)
                                            <li><a class="text-muted" href="http://google.com">{{$sub->name}}</a></li>
											@foreach($sub->childs as $child)
                                            <li><a class="text-muted" href="http://google.com">{{$child->name}}</a></li>
											//same vabe divisions->district->subdistrict->area na dst ha koise duita 2 ta dekhabe
											//divison->district? hmm are category r subcategory_id
											//tahole district dhakar vitore uttara/mirpur esob thakbe na?
											//ami jani na sa balse system  4 thakbe but sa 2 ta dekhabe bikroy.com r moto
										@endforeach
										@endforeach
                                        </ul>
                                    </div>
                                </li>
								@endforeach
                            </ul>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>
						{{-- End Category model --}}

		<div class="modal fade" id="setgallery" tabindex="-1" role="dialog" aria-labelledby="setgallery" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered  modal-lg" role="document">
				<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">{{ $langg->lang619 }}</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="top-area">
						<div class="row">
							<div class="col-sm-6 text-right">
								<div class="upload-img-btn">
											<label for="image-upload" id="prod_gallery"><i class="icofont-upload-alt"></i>{{ $langg->lang620 }}</label>
								</div>
							</div>
							<div class="col-sm-6">
								<a href="javascript:;" class="upload-done" data-dismiss="modal"> <i class="fas fa-check"></i> {{ $langg->lang621 }}</a>
							</div>
							<div class="col-sm-12 text-center">( <small>{{ $langg->lang622 }}</small> )</div>
						</div>
					</div>
					<div class="gallery-images">
						<div class="selected-image">
							<div class="row">


							</div>
						</div>
					</div>
				</div>
				</div>
			</div>
		</div>

@endsection

@section('scripts')

		<script src="{{asset('assets/admin/js/jquery.Jcrop.js')}}"></script>
		<script src="{{asset('assets/admin/js/jquery.SimpleCropper.js')}}"></script>

<script type="text/javascript">

// Gallery Section Insert

  $(document).on('click', '.remove-img' ,function() {
    var id = $(this).find('input[type=hidden]').val();
    $('#galval'+id).remove();
    $(this).parent().parent().remove();
  });

  $(document).on('click', '#prod_gallery' ,function() {
    $('#uploadgallery').click();
     $('.selected-image .row').html('');
    $('#geniusform').find('.removegal').val(0);
  });


  $("#uploadgallery").change(function(){
     var total_file=document.getElementById("uploadgallery").files.length;
     for(var i=0;i<total_file;i++)
     {
      $('.selected-image .row').append('<div class="col-sm-6">'+
                                        '<div class="img gallery-img">'+
                                            '<span class="remove-img"><i class="fas fa-times"></i>'+
                                            '<input type="hidden" value="'+i+'">'+
                                            '</span>'+
                                            '<a href="'+URL.createObjectURL(event.target.files[i])+'" target="_blank">'+
                                            '<img src="'+URL.createObjectURL(event.target.files[i])+'" alt="gallery image">'+
                                            '</a>'+
                                        '</div>'+
                                  '</div> '
                                      );
      $('#geniusform').append('<input type="hidden" name="galval[]" id="galval'+i+'" class="removegal" value="'+i+'">')
     }

  });

// Gallery Section Insert Ends

</script>

<script type="text/javascript">

$('.cropme').simpleCropper();
$('#crop-image').on('click',function(){
$('.cropme').click();
});

</script>


<script src="{{asset('assets/admin/js/product.js')}}"></script>
@endsection
