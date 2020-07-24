@extends('layouts.vendor')
@section('styles')

<link href="{{asset('assets/vendor/css/product.css')}}" rel="stylesheet"/>
<link href="{{asset('assets/admin/css/jquery.Jcrop.css')}}" rel="stylesheet"/>
<link href="{{asset('assets/admin/css/Jcrop-style.css')}}" rel="stylesheet"/> 
<style> 
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #3e8e41;
}

#myInput {
    box-sizing: border-box;
	background-image: url('../assets/images/searchicon.png');
	background-position: 14px 9px;
	background-repeat: no-repeat;
	font-size: 16px;
	padding: 7px 20px 5px 45px;
	border: 1px solid #ddd;
	border-radius: 4px;
	margin-bottom: 0px;
}
#all_sub_category i{
     padding-left: 2px;
    padding-right: 2px;
    padding-top: 6px;
    padding-bottom: 4px;
    margin-top: -2px;
}

.all_sub_category_btn{
    border: 1px solid #ddd;
    margin-top: -4px;
    margin-left: -5px;
}
#myInput:focus {outline: 0;
box-shadow: 0 0 0 .2rem rgba(0,123,255,.25);}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  min-width: 100%;
  overflow: auto;
  border: 1px solid #ddd;
  z-index: 1;

}

.dropdown-content a {
  color: black;
  padding: 9px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {    background: rgba(0,152,119,.05);
    color: #149777!important;}

.show {display: block;}

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
{{-- .main-cate-item li:hover .sub-cate-item{
    display: block;
}

.categories-list-division li:hover .sub-cate-item-division{
    display: block;
} --}}
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
.btn-back {
    display: block;
    width: auto;
    line-height: 26px;
    font-size: 12px;
    font-weight: 900;
    font-family: helvetica, sans-serif;
    color: #fff;
    text-decoration: none;
    text-align: center;
    -moz-border-radius: 4px;
    -webkit-border-radius: 4px;
    border-radius: 4px;
    background-color: #efefef;
    background-size: 100%;
    background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #ffffff), color-stop(60%, #efefef), color-stop(100%, #e1dfe2));
    background-image: -moz-linear-gradient(top, #ffffff 0%, #efefef 60%, #e1dfe2 100%);
    background-image: -webkit-linear-gradient(top, #ffffff 0%, #efefef 60%, #e1dfe2 100%);
    background-image: linear-gradient(to bottom, #ffffff 0%, #efefef 60%, #e1dfe2 100%);
    -moz-box-shadow: 0 1px 3px #cfcfcf;
    -webkit-box-shadow: 0 1px 3px #cfcfcf;
    box-shadow: 0 1px 3px #cfcfcf;
    border: 1px solid #bcbcbc;
        border-left-color: rgb(188, 188, 188);
        border-left-style: solid;
        border-left-width: 1px;
    border-left-color: rgb(188, 188, 188);
    border-left-style: solid;
    border-left-width: 1px;
    border-left: 0;
    color: #888;
    text-shadow: 0 1px 0 rgba(255, 255, 255, 0.8);
    -moz-transition: color 0.1s 0;
    -o-transition: color 0.1s 0;
    -webkit-transition: color 0.1s 0;
    transition: color 0.1s 0;
    margin: 10px 5px;
}

.btn-back:hover {
    color: rgb(0, 152, 119);
}
@media(max-width:475px){
	#landscape{
		width: 350px!important;
		height: 350px!important;
	}
}

@media(max-width:430px){
	#landscape{
		width: 300px!important;
		height: 300px!important;
	}
}
@media(max-width:375px){
	#landscape{
		width: 250px!important;
		height: 250px!important;
	}
}
@media(max-width:330px){
	#landscape{
		width: 200px!important;
		height: 200px!important;
	}
}
</style>
@endsection
@section('content')

						<div class="content-area">
							<div class="mr-breadcrumb">
								<div class="row">
									<div class="col-lg-12">
											<h4 class="heading">{{ $langg->lang629 }} <a class="add-btn" href="{{ route('vendor-dashboard') }}"><i class="fas fa-arrow-left"></i> {{ $langg->lang550 }}</a></h4>
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
																<h4 style="display:none" class="heading">{{ $langg->lang793 }}* </h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input style="display:none" type="text" class="input-field" placeholder="{{ $langg->lang794 }}" name="sku" required="" value="{{ str_random(3).substr(time(), 6,8).str_random(3) }}">

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
															<div onclick="dModal()" data-target="#my-modal" data-toggle="modal">
															<span id="area_name">Choose Area</span>								
															</div>
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">Category</h4>
														</div>
													</div> 
													<div class="col-lg-7">
															<div data-target="#my-modal2" data-toggle="modal">
															<span id="cat_name">Choose Category</span>
															</div>
													</div>
												</div>
												<input id="category_id" name="category_id" type="hidden">
												<input id="subcategory_id" name="subcategory_id" type="hidden">
												<input id="division_id" name="division_id" type="hidden">
												<input id="district_id" name="district_id" type="hidden">
												<input id="subdistrict_id" name="subdistrict_id" type="hidden">
												
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
		  {{--  <div class="span4 cropme text-center" id="landscape" style="width: 400px; height: 400px; border: 1px dashed black;"> 
		</div>   --}}
			<input required class="form-control-file upload" type="file" id="feature_photo" name="pht" value="">
 
		</div>
	</div>



							                        </div>
							                      </div>

							                      



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
                        
                        <h6 class="mt-3 text-muted">জনপ্রিয় এলাকাসমূহ</h6>
                        
                    </div>

					
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="categories-list model-item main-cate-item ">
                            <ul>
                                @foreach($districts as $district)
 
                                    <li class="brn">
                                    <a onclick="showItem('sub-dis',{{$district->id}},'.dis','district_id',{{$district->id}},['division_id','subdistrict_id'],'area_name','{{$district->name}}')" href="#" class="clearfix">
                                        <span class="dnn float-left">{{$district->name}}</span><span class="dnn float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                    <div id="sub-dis{{$district->id}}" class="lft sub-dis categories-list sub-cate-item" >
                                        <button class="d-sm-none btn-back" onclick="dModal()"><i class="fas fa-chevron-left"></i>Back</button>
                                        <ul class="sub-menu1 text-muted">

                                         <li><a onclick="closeModal()" class="text-muted" href="javascript:void(0)">{{$district->name}} এর সবগুলো</a></li>
                                         @php($i=1)
                                            @foreach($district->subdistricts as $subdistrict)
                                                @if($i<6)
                                                <li><a class="text-muted" href="javascript:void(0)" onclick="showItem('sub-dis','','.dis','subdistrict_id',{{$subdistrict->id}},[],'area_name','{{$subdistrict->name}}','#my-modal')">{{$subdistrict->name}}</a></li>
                                                @elseif($i==6)
                                                    <div class="dropdown mt-4" id="all_sub_category">
  
    <input onclick="myFunction(this)" type="text" placeholder="অন্যান্য এলাকা (A-Z)" id="myInput" onkeyup="filterFunction(this)" >
    <button class="btn all_sub_category_btn" onclick="myFunction(this)"><i class="dist fas  fa-angle-down">
    </i></button>
  <div id="myDropdown" class="dropdown-content ">
                                                    <a class="text-muted" href="javascript:void(0)" onclick="showItem('sub-dis','','.dis','subdistrict_id',{{$subdistrict->id}},[],'area_name','{{$subdistrict->name}}','#my-modal')">{{$subdistrict->name}}</a>
                                                
                                                @else
                                                    <a class="text-muted" href="javascript:void(0)" onclick="showItem('sub-dis','','.dis','subdistrict_id',{{$subdistrict->id}},[],'area_name','{{$subdistrict->name}}','#my-modal')">{{$subdistrict->name}}</a>
                                                @endif
                                                @if($i>=6&&$i==$district->subdistricts->count())
                                                   
                                                    </div>
                                                    </div>
                                                    @endif
                                                   @php($i++) 
                                            @endforeach
                                            
                                        </ul>
                                    </div>

                                </li>
                                @endforeach
                              
                            </ul>
                        </div>
                        <input type="hidden" id="area_key" >
                        <input type="hidden" id="area_value" >
                        <div class="dnn btn text-muted mt-3">বিভাগ</div>
                        <div class=" categories-list model-item categories-list-division">
                            <ul>
                            
                               @foreach($divisions as $division)
                                <li class="brn">
                                    <a
									 onclick="showItem('dis',{{$division->id}},'.sub-dis','division_id',{{$division->id}},['district_id','subdistrict_id'],'area_name','{{$division->name}}')"
									
									 href="#" class="clearfix">
                                        <span class="dnn float-left">{{$division->name}}</span><span class="dnn float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                        <div id="dis{{$division->id}}" class="lft dis categories-list sub-cate-item sub-cate-item-division" style="">
                                        <button class="d-sm-none btn-back" onclick="dModal()"><i class="fas fa-chevron-left"></i>Back</button>

                                        <ul class="sub-menu1 text-muted">
                                         <li><a onclick="closeModal()" class="text-muted" href="#">{{$division->name}} বিভাগ এর সবগুলো</a></li>
                                         @php($i=1)
                                            @foreach($division->districts as $district)
                                                @if($i<6)

                                                <li><a class="text-muted" href="#"
												onclick="showItem('','','','district_id',{{$district->id}},[],'area_name','{{$district->name}}','#my-modal')"
												>{{$district->name}}</a></li>
@elseif($i==6)
                                                    <div class="dropdown mt-4" id="all_sub_category">
  
    <input onclick="myFunctionDiv(this)" type="text" placeholder="অন্যান্য এলাকা (A-Z)" id="myInput" onkeyup="filterFunctionDiv(this)" >
    <button class="btn all_sub_category_btn" onclick="myFunctionDiv(this)"><i class="div fas fa-angle-down ">
    </i></button>
  <div id="myDropdownDiv" class="dropdown-content ">
                                                    <a class="text-muted" href="#"
												onclick="showItem('','','','district_id',{{$district->id}},[],'area_name','{{$district->name}}','#my-modal')"
												>{{$district->name}}</a>
                                                
                                                @else
                                                    <a class="text-muted" href="#"
												onclick="showItem('','','','district_id',{{$district->id}},[],'area_name','{{$district->name}}','#my-modal')"
												>{{$district->name}}</a>
                                                @endif
                                                @if($i>=6&&$i==$district->subdistricts->count())
                                                   
                                                    </div>
                                                    </div>
                                                    @endif
                                                   @php($i++) 

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

<script>
function myFunction(el) {
    el.parentElement.children[2].classList.toggle("show")
  //document.getElementById("myDropdown").classList.toggle("show");
  if($(".dist.fa-angle-up").length>0)
  {
    $(".dist.fa-angle-up").attr("class","dist fas fa-angle-down")
  }
  else{
    $(".fa-angle-down.dist").attr("class","dist fas fa-angle-up")
  }
}

function filterFunction(el) {
  if(el.parentElement.children[2].classList.length==1){
    el.parentElement.children[2].classList.add("show")
  }
  var input, filter, ul, li, a, i;
  input = el;
  filter = input.value.toUpperCase();
  div = el.parentElement.children[2];
  a = div.getElementsByTagName("a");
  for (i = 0; i < a.length; i++) {
    txtValue = a[i].textContent || a[i].innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = "";
    } else {
      a[i].style.display = "none";
    }
  }
}
function myFunctionDiv(el) {
    el.parentElement.children[2].classList.toggle("show")
  //document.getElementById("myDropdownDiv").classList.toggle("show");
  if($(".fa-angle-up.div").length>0)
  {
    $(".fa-angle-up.div").attr("class","fas div fa-angle-down")
  }
  else{
    $(".fa-angle-down.div").attr("class","fas div fa-angle-up")
  }
}
function filterFunctionDiv(el) {
  if(el.parentElement.children[2].classList.length==1){
    el.parentElement.children[2].classList.add("show")
  }
  var input, filter, ul, li, a, i;
  input = el;
  filter = input.value.toUpperCase();
  div = el.parentElement.children[2];
  a = div.getElementsByTagName("a");
  for (i = 0; i < a.length; i++) {
    txtValue = a[i].textContent || a[i].innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = "";
    } else {
      a[i].style.display = "none";
    }
  }
}
dModal=()=>{
  if(screen.width<576){
        
        $(".dnn").css("display","inline-block");
        $(".lft").css("left","100%");

         $(".brn").css("border-top","1px solid rgba(0, 0, 0, .125)");
        $(".brn:first-child").css("border","none");
		$(".brn1").css("border-top","1px solid rgba(0, 0, 0, .125)");
        $(".brn1:first-child").css("border","none");
        
 
      }
}
	showItem=(cls,id,cls2,sid,svalue,r,hid,hval,cm=null)=>{
		if(cm){

		$(cm).modal('toggle');
		}
		toastr.success(hval+" selected");
		document.getElementById(hid).innerHTML=hval;
		console.log(r)
		r.forEach(ri=>{
			document.getElementById(ri).value="";
		})
		document.getElementById(sid).value=svalue;
		$(cls2).hide();
		id="#"+cls+id;
		cls="."+cls;
		$(cls).hide();
		$(id).show();

		 if(screen.width<576){
        $(".brn").css("border","none");
		$(".brn1").css("border","none");
        $(".dnn").css("display","none");
        $(".lft").css("left","18px");

      }
	}
	showItem1=(cls,id,cls2,sid,svalue,r,hid,hval,cm=null)=>{
		if(cm){

		$(cm).modal('toggle');
		}
		toastr.success(hval+" selected");
		document.getElementById(hid).innerHTML=hval;
		console.log(r)
		r.forEach(ri=>{
			document.getElementById(ri).value="";
		})
		document.getElementById(sid).value=svalue;
		$(cls2).hide();
		id="#"+cls+id;
		cls="."+cls;
		$(cls).hide();
		$(id).show();

		 if(screen.width<576){
        $(".brn").css("border","none");
        $(".dnn").css("display","none");
        $(".lft").css("left","18px");

      }
	}
</script>
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
                                <li class="brn1">
                                    <a onclick="showItem('sub-cat',{{$cat->id}},'.aos','category_id',{{$cat->id}},['subcategory_id'],'cat_name',`{{$cat->name}}`)" href="#" class="clearfix">
                                        <span class="dnn float-left">{{$cat->name}}</span><span class="dnn float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                    <div id="sub-cat{{$cat->id}}" class="lft categories-list sub-cat sub-cate-item" style="">
                                        <ul class="sub-menu1 text-muted">
										<button class="d-sm-none btn-back" onclick="dModal()"><i class="fas fa-chevron-left"></i>Back</button>
                                        <ul class="sub-menu1 text-muted">
										@foreach($cat->subs as $sub)
                                            <li><a
											onclick="showItem('','','.aos','subcategory_id',{{$sub->id}},[],'cat_name',`{{$sub->name}}`,'#my-modal2')"
											 class="text-muted" href="#">{{$sub->name}}</a></li>
											{{--  @foreach($sub->childs as $child)
                                            <li><a class="text-muted" href="http://google.com">{{$child->name}}</a></li>
											
										@endforeach  --}}
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
<script>
 $(".upload").on("change", function() {
            var imgpath = $(this).parent().parent().prev().find('img');
            var file = $(this);

            readURL(this, imgpath);
        });

        function readURL(input, imgpath) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    $("#landscape").attr('src', e.target.result);
					//document.getElementById('feature_photo').value=e.target.result;
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
		</script>
@endsection
