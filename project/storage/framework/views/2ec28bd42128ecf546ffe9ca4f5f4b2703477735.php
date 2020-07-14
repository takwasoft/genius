<?php $__env->startSection('styles'); ?>

<link href="<?php echo e(asset('assets/admin/css/product.css')); ?>" rel="stylesheet"/>
<link href="<?php echo e(asset('assets/admin/css/jquery.Jcrop.css')); ?>" rel="stylesheet"/>
<link href="<?php echo e(asset('assets/admin/css/Jcrop-style.css')); ?>" rel="stylesheet"/>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>

						<div class="content-area">
							<div class="mr-breadcrumb">
								<div class="row">
									<div class="col-lg-12">
											<h4 class="heading"><?php echo e(__('Physical Product')); ?> <a class="add-btn" href="<?php echo e(route('admin-prod-types')); ?>"><i class="fas fa-arrow-left"></i> <?php echo e(__('Back')); ?></a></h4>
											<ul class="links">
												<li>
													<a href="<?php echo e(route('admin.dashboard')); ?>"><?php echo e(__('Dashboard')); ?> </a>
												</li>
											<li>
												<a href="javascript:;"><?php echo e(__('Products')); ?> </a>
											</li>
											<li>
												<a href="<?php echo e(route('admin-prod-index')); ?>"><?php echo e(__('All Products')); ?></a>
											</li>
												<li>
													<a href="<?php echo e(route('admin-prod-types')); ?>"><?php echo e(__('Add Product')); ?></a>
												</li>
												<li>
													<a href="<?php echo e(route('admin-prod-physical-create')); ?>"><?php echo e(__('Physical Product')); ?></a>
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

					                      <div class="gocover" style="background: url(<?php echo e(asset('assets/images/'.$gs->admin_loader)); ?>) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
					                      <form id="geniusform" action="<?php echo e(route('admin-prod-store')); ?>" method="POST" enctype="multipart/form-data">
					                        <?php echo e(csrf_field()); ?>


                        <?php echo $__env->make('includes.admin.form-both', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e(__('Product Name')); ?>* </h4>
																<p class="sub-heading"><?php echo e(__('(In Any Language)')); ?></p>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" placeholder="<?php echo e(__('Enter Product Name')); ?>" name="name" required="">
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e(__('Product Sku')); ?>* </h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" placeholder="<?php echo e(__('Enter Product Sku')); ?>" name="sku" required="" value="<?php echo e(str_random(3).substr(time(), 6,8).str_random(3)); ?>">

							                            <div class="checkbox-wrapper">
							                              <input type="checkbox" name="product_condition_check" class="checkclick" id="conditionCheck" value="1">
							                              <label for="conditionCheck"><?php echo e(__('Allow Product Condition')); ?></label>
							                            </div>

													</div>
												</div>

						            <div class="showbox">
													<div class="row">
														<div class="col-lg-4">
															<div class="left-area">
																	<h4 class="heading"><?php echo e(__('Product Condition')); ?>*</h4>
															</div>
														</div>
														<div class="col-lg-7">
																<select name="product_condition">
	                                <option value="2"><?php echo e(__('New')); ?></option>
	                                <option value="1"><?php echo e(__('Used')); ?></option>
																</select>
														</div>
													</div>
						            </div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e(__('Category')); ?>*</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<select id="cat" name="category_id" required="">
																	<option value=""><?php echo e(__('Select Category')); ?></option>
						                                              <?php $__currentLoopData = $cats; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						                                                  <option data-href="<?php echo e(route('admin-subcat-load',$cat->id)); ?>" value="<?php echo e($cat->id); ?>"><?php echo e($cat->name); ?></option>
						                                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						                                     </select>
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e(__('Sub Category')); ?>*</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<select id="subcat" name="subcategory_id" disabled="">
                                                  				<option value=""><?php echo e(__('Select Sub Category')); ?></option>
															</select>
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e(__('Child Category')); ?>*</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<select id="childcat" name="childcategory_id" disabled="">
                                                  				<option value=""><?php echo e(__('Select Child Category')); ?></option>
															</select>
													</div>
												</div>


												<div id="catAttributes"></div>
												<div id="subcatAttributes"></div>
												<div id="childcatAttributes"></div>



							                     <div class="row">
							                        <div class="col-lg-4">
							                          <div class="left-area">
							                              <h4 class="heading"><?php echo e(__('Feature Image')); ?> *</h4>
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
				<i class="icofont-upload-alt"></i> <?php echo e(__('Upload Image Here')); ?>

			</a>


							                        </div>
							                      </div>

							                      <input type="hidden" id="feature_photo" name="photo" value="">

						                        <input type="file" name="gallery[]" class="hidden" id="uploadgallery" accept="image/*" multiple>
												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">
																		<?php echo e(__('Product Gallery Images')); ?> *
																</h4>
														</div>
													</div>
													<div class="col-lg-7">
														<a href="#" class="set-gallery"  data-toggle="modal" data-target="#setgallery">
																<i class="icofont-plus"></i> <?php echo e(__('Set Gallery')); ?>

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
																<label for="check1"><?php echo e(__('Allow Estimated Shipping Time')); ?></label>
															</li>
														</ul>
													</div>
												</div>



						                        <div class="showbox">

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e(__('Product Estimated Shipping Time')); ?>* </h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" placeholder="<?php echo e(__('Estimated Shipping Time')); ?>" name="ship">
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
																<label for="size-check"><?php echo e(__('Allow Product Sizes')); ?></label>
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
																						<?php echo e(__('Size Name')); ?> :
																						<span>
																							<?php echo e(__('(eg. S,M,L,XL,XXL,3XL,4XL)')); ?>

																						</span>
																					</label>
																					<input type="text" name="size[]" class="input-field" placeholder="<?php echo e(__('Size Name')); ?>">
																				</div>
																				<div class="col-md-4 col-sm-6">
																						<label>
																							<?php echo e(__('Size Qty')); ?> :
																							<span>
																								<?php echo e(__('(Number of quantity of this size)')); ?>

																							</span>
																						</label>
																					<input type="number" name="size_qty[]" class="input-field" placeholder="<?php echo e(__('Size Qty')); ?>" value="1" min="1">
																				</div>
																				<div class="col-md-4 col-sm-6">
																						<label>
																							<?php echo e(__('Size Price')); ?> :
																							<span>
																								<?php echo e(__('(This price will be added with base price)')); ?>

																							</span>
																						</label>
																					<input type="number" name="size_price[]" class="input-field" placeholder="<?php echo e(__('Size Price')); ?>" value="0" min="0">
																				</div>
																			</div>
																		</div>
																</div>

																<a href="javascript:;" id="size-btn" class="add-more"><i class="fas fa-plus"></i><?php echo e(__('Add More Size')); ?> </a>
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
																<label for="check3"><?php echo e(__('Allow Product Colors')); ?></label>
															</li>
														</ul>
													</div>
												</div>

						                        <div class="showbox">

													<div class="row">
															<div  class="col-lg-4">
																<div class="left-area">
																	<h4 class="heading">
																		<?php echo e(__('Product Colors')); ?>*
																	</h4>
																	<p class="sub-heading">
																		<?php echo e(__('(Choose Your Favorite Colors)')); ?>

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
																<a href="javascript:;" id="color-btn" class="add-more mt-4 mb-3"><i class="fas fa-plus"></i><?php echo e(__('Add More Color')); ?> </a>
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
																<label for="whole_check"><?php echo e(__('Allow Product Whole Sell')); ?></label>
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
																		<input type="number" name="whole_sell_qty[]" class="input-field" placeholder="<?php echo e(__('Enter Quantity')); ?>" min="0">
																		</div>

																		<div class="col-lg-6">
											                            <input type="number" name="whole_sell_discount[]" class="input-field" placeholder="<?php echo e(__('Enter Discount Percentage')); ?>" min="0" />
																		</div>
																	</div>
																</div>
															</div>

															<a href="javascript:;" id="whole-btn" class="add-fild-btn"><i class="icofont-plus"></i> <?php echo e(__('Add More Field')); ?></a>
														</div>
													</div>
												</div>
											</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
															<h4 class="heading">
																<?php echo e(__('Product Current Price')); ?>*
															</h4>
															<p class="sub-heading">
																(<?php echo e(__('In')); ?> <?php echo e($sign->name); ?>)
															</p>
														</div>
													</div>
													<div class="col-lg-7">
														<input name="price" type="number" class="input-field" placeholder="<?php echo e(__('e.g 20')); ?>" step="0.1" required="" min="0">
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e(__('Product Previous Price')); ?>*</h4>
																<p class="sub-heading"><?php echo e(__('(Optional)')); ?></p>
														</div>
													</div>
													<div class="col-lg-7">
														<input name="previous_price" step="0.1" type="number" class="input-field" placeholder="<?php echo e(__('e.g 20')); ?>" min="0">
													</div>
												</div>

												<div class="row" id="stckprod">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e(__('Product Stock')); ?>*</h4>
																<p class="sub-heading"><?php echo e(__('(Leave Empty will Show Always Available)')); ?></p>
														</div>
													</div>
													<div class="col-lg-7">
														<input name="stock" type="text" class="input-field" placeholder="<?php echo e(__('e.g 20')); ?>">
														<div class="checkbox-wrapper">
															<input type="checkbox" name="measure_check" class="checkclick" id="allowProductMeasurement" value="1">
															<label for="allowProductMeasurement"><?php echo e(__('Allow Product Measurement')); ?></label>
														</div>
													</div>
												</div>



											<div class="showbox">

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e(__('Product Measurement')); ?>*</h4>
														</div>
													</div>
													<div class="col-lg-3">
															<select id="product_measure">
			                                                  <option value=""><?php echo e(__('None')); ?></option>
			                                                  <option value="Gram"><?php echo e(__('Gram')); ?></option>
			                                                  <option value="Kilogram"><?php echo e(__('Kilogram')); ?></option>
			                                                  <option value="Litre"><?php echo e(__('Litre')); ?></option>
			                                                  <option value="Pound"><?php echo e(__('Pound')); ?></option>
			                                                  <option value="Custom"><?php echo e(__('Custom')); ?></option>
						                                     </select>
													</div>
													<div class="col-lg-1"></div>
													<div class="col-lg-3 hidden" id="measure">
														<input name="measure" type="text" id="measurement" class="input-field" placeholder="<?php echo e(__('Enter Unit')); ?>">
													</div>
												</div>

											</div>


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
															<h4 class="heading">
																	<?php echo e(__('Product Description')); ?>*
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
																	<?php echo e(__('Product Buy/Return Policy')); ?>*
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
																<h4 class="heading"><?php echo e(__('Youtube Video URL')); ?>*</h4>
																<p class="sub-heading"><?php echo e(__('(Optional)')); ?></p>
														</div>
													</div>
													<div class="col-lg-7">
														<input  name="youtube" type="text" class="input-field" placeholder="<?php echo e(__('Enter Youtube Video URL')); ?>">
							                            <div class="checkbox-wrapper">
							                              <input type="checkbox" name="seo_check" value="1" class="checkclick" id="allowProductSEO" value="1">
							                              <label for="allowProductSEO"><?php echo e(__('Allow Product SEO')); ?></label>
							                            </div>
													</div>
												</div>



						                        <div class="showbox">
						                          <div class="row">
						                            <div class="col-lg-4">
						                              <div class="left-area">
						                                  <h4 class="heading"><?php echo e(__('Meta Tags')); ?> *</h4>
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
						                                    <?php echo e(__('Meta Description')); ?> *
						                                </h4>
						                              </div>
						                            </div>
						                            <div class="col-lg-7">
						                              <div class="text-editor">
						                                <textarea name="meta_description" class="input-field" placeholder="<?php echo e(__('Meta Description')); ?>"></textarea>
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
																<h4 class="title"><?php echo e(__('Feature Tags')); ?></h4>
															</div>

															<div class="feature-tag-top-filds" id="feature-section">
																<div class="feature-area">
																	<span class="remove feature-remove"><i class="fas fa-times"></i></span>
																	<div class="row">
																		<div class="col-lg-6">
																		<input type="text" name="features[]" class="input-field" placeholder="<?php echo e(__('Enter Your Keyword')); ?>">
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

															<a href="javascript:;" id="feature-btn" class="add-fild-btn"><i class="icofont-plus"></i> <?php echo e(__('Add More Field')); ?></a>
														</div>
													</div>
												</div>


						                        <div class="row">
						                          <div class="col-lg-4">
						                            <div class="left-area">
						                                <h4 class="heading"><?php echo e(__('Tags')); ?> *</h4>
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
														<button class="addProductSubmit-btn" type="submit"><?php echo e(__('Create Product')); ?></button>
													</div>
												</div>
											</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

		<div class="modal fade" id="setgallery" tabindex="-1" role="dialog" aria-labelledby="setgallery" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered  modal-lg" role="document">
				<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle"><?php echo e(__('Image Gallery')); ?></h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="top-area">
						<div class="row">
							<div class="col-sm-6 text-right">
								<div class="upload-img-btn">
											<label for="image-upload" id="prod_gallery"><i class="icofont-upload-alt"></i><?php echo e(__('Upload File')); ?></label>
								</div>
							</div>
							<div class="col-sm-6">
								<a href="javascript:;" class="upload-done" data-dismiss="modal"> <i class="fas fa-check"></i> <?php echo e(__('Done')); ?></a>
							</div>
							<div class="col-sm-12 text-center">( <small><?php echo e(__('You can upload multiple Images.')); ?></small> )</div>
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

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>

		<script src="<?php echo e(asset('assets/admin/js/jquery.Jcrop.js')); ?>"></script>
		<script src="<?php echo e(asset('assets/admin/js/jquery.SimpleCropper.js')); ?>"></script>

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


<script src="<?php echo e(asset('assets/admin/js/product.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>