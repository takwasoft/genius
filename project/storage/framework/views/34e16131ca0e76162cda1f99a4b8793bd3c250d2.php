<?php $__env->startSection('styles'); ?>

<link href="<?php echo e(asset('assets/vendor/css/product.css')); ?>" rel="stylesheet"/>
<link href="<?php echo e(asset('assets/admin/css/jquery.Jcrop.css')); ?>" rel="stylesheet"/>
<link href="<?php echo e(asset('assets/admin/css/Jcrop-style.css')); ?>" rel="stylesheet"/>
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
</style>
<?php $__env->stopSection(); ?> 
<?php $__env->startSection('content'); ?> 

						<div class="content-area">
							<div class="mr-breadcrumb">
								<div class="row">
									<div class="col-lg-12">
											<h4 class="heading"> <?php echo e($langg->lang704); ?> <a class="add-btn" href="<?php echo e(route('vendor-prod-index')); ?>"><i class="fas fa-arrow-left"></i> <?php echo e($langg->lang550); ?></a></h4>
											<ul class="links">
                      <li>
                        <a href="<?php echo e(route('vendor-dashboard')); ?>"><?php echo e($langg->lang441); ?></a>
                      </li>
                      <li>
                        <a href="javascript:;"><?php echo e($langg->lang444); ?> </a>
                      </li>
												<li>
													<a href="javascript:;"><?php echo e($langg->lang629); ?></a>
												</li>
												<li>
													<a href="<?php echo e(route('vendor-prod-edit',$data->id)); ?>"><?php echo e($langg->lang705); ?></a>
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
					                      <form id="geniusform" action="<?php echo e(route('vendor-prod-update',$data->id)); ?>" method="POST" enctype="multipart/form-data">
					                        <?php echo e(csrf_field()); ?>



                        <?php echo $__env->make('includes.vendor.form-both', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e($langg->lang632); ?>* </h4>
																<p class="sub-heading"><?php echo e($langg->lang517); ?></p>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" placeholder="<?php echo e($langg->lang632); ?>" name="name" required="" value="<?php echo e($data->name); ?>">
													</div>
												</div>


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e($langg->lang793); ?>* </h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" placeholder="<?php echo e($langg->lang794); ?>" name="sku" required="" value="<?php echo e($data->sku); ?>">

							                            <div class="checkbox-wrapper">
							                              <input type="checkbox" name="product_condition_check" class="checkclick" id="conditionCheck" value="1" <?php echo e($data->product_condition != 0 ? "checked":""); ?>>
							                              <label for="conditionCheck"><?php echo e($langg->lang633); ?></label>
							                            </div>

													</div>
												</div>

						                        <div class="<?php echo e($data->product_condition == 0 ? "showbox":""); ?>">

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e($langg->lang634); ?>*</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<select name="product_condition">
				                                                  <option value="2" <?php echo e($data->product_condition == 2
                                                    ? "selected":""); ?>><?php echo e($langg->lang635); ?></option>
				                                                  <option value="1" <?php echo e($data->product_condition == 1
                                                    ? "selected":""); ?>><?php echo e($langg->lang636); ?></option>
															</select>
													</div>

												</div>


						                        </div>
												<input value="<?php echo e($data->category_id); ?>" id="category_id" name="category_id" type="hidden">
												<input value="<?php echo e($data->subcategory_id); ?>" id="subcategory_id" name="subcategory_id" type="hidden">
												<input value="<?php echo e($data->division_id); ?>" id="division_id" name="division_id" type="hidden">
												<input value="<?php echo e($data->district_id); ?>" id="district_id" name="district_id" type="hidden">
												<input value="<?php echo e($data->subdistrict_id); ?>" id="subdistrict_id" name="subdistrict_id" type="hidden">

<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">Brand</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<select  name="brand_id" >
																	<option value="">Select Brand</option>
                                  <?php $__currentLoopData = $brands; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $brand): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                  <option 
								  <?php if($data->brand_id==$brand->id): ?>
										selected
								  <?php endif; ?>
								    value="<?php echo e($brand->id); ?>"><?php echo e($brand->name); ?></option>
                                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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


												<?php
													$selectedAttrs = json_decode($data->attributes, true);
													// dd($selectedAttrs);
												?>


												
												<div id="catAttributes">
													<?php
														$catAttributes = !empty($data->category->attributes) ? $data->category->attributes : '';
													?>
													<?php if(!empty($catAttributes)): ?>
														<?php $__currentLoopData = $catAttributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $catAttribute): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
															<div class="row">
																 <div class="col-lg-4">
																		<div class="left-area">
																			 <h4 class="heading"><?php echo e($catAttribute->name); ?> *</h4>
																		</div>
																 </div>
																 <div class="col-lg-7">
																	 <?php
																	 	$i = 0;
																	 ?>
																	 <?php $__currentLoopData = $catAttribute->attribute_options; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $optionKey => $option): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
																		 <?php
																			$inName = $catAttribute->input_name;
																			$checked = 0;
																		 ?>


																		 <div class="row">
																			 <div class="col-lg-5">
																				 <div class="custom-control custom-checkbox">
		 																			 <input type="checkbox" id="<?php echo e($catAttribute->input_name); ?><?php echo e($option->id); ?>" name="<?php echo e($catAttribute->input_name); ?>[]" value="<?php echo e($option->name); ?>" class="custom-control-input attr-checkbox"
		 																			 <?php if(is_array($selectedAttrs) && array_key_exists($catAttribute->input_name,$selectedAttrs)): ?>
		 																				 <?php if(is_array($selectedAttrs["$inName"]["values"]) && in_array($option->name, $selectedAttrs["$inName"]["values"])): ?>
		 																					 checked
																							 <?php
																							 	$checked = 1;
																							 ?>
		 																				 <?php endif; ?>
		 																			 <?php endif; ?>
		 																			 >
		 																			 <label class="custom-control-label" for="<?php echo e($catAttribute->input_name); ?><?php echo e($option->id); ?>"><?php echo e($option->name); ?></label>
		 																		</div>
																			 </div>

																			 <div class="col-lg-7 <?php echo e($catAttribute->price_status == 0 ? 'd-none' : ''); ?>">
																					<div class="row">
																						 <div class="col-2">
																								+
																						 </div>
																						 <div class="col-10">
																								<div class="price-container">
																									 <span class="price-curr"><?php echo e($sign->sign); ?></span>
																									 <input type="text" class="input-field price-input" id="<?php echo e($catAttribute->input_name); ?><?php echo e($option->id); ?>_price" data-name="<?php echo e($catAttribute->input_name); ?>_price[]" placeholder="0.00 (Additional Price)" value="<?php echo e(!empty($selectedAttrs["$inName"]['prices'][$i]) && $checked == 1 ? $selectedAttrs["$inName"]['prices'][$i] : ''); ?>">
																								</div>
																						 </div>
																					</div>
																			 </div>
																		 </div>


																		 <?php
																			 if ($checked == 1) {
																			 	$i++;
																			 }
																		 ?>
																		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
																 </div>

															</div>
														<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
													<?php endif; ?>
												</div>
												


												
												<div id="subcatAttributes">
													<?php
														$subAttributes = !empty($data->subcategory->attributes) ? $data->subcategory->attributes : '';
													?>
													<?php if(!empty($subAttributes)): ?>
														<?php $__currentLoopData = $subAttributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subAttribute): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
															<div class="row">
																 <div class="col-lg-4">
																		<div class="left-area">
																			 <h4 class="heading"><?php echo e($subAttribute->name); ?> *</h4>
																		</div>
																 </div>
																 <div class="col-lg-7">
																		 <?php
																		 	$i = 0;
																		 ?>
																		 <?php $__currentLoopData = $subAttribute->attribute_options; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $option): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
																			 <?php
																				$inName = $subAttribute->input_name;
																				$checked = 0;
																			 ?>

																			 <div class="row">
																			    <div class="col-lg-5">
																			       <div class="custom-control custom-checkbox">
																			          <input type="checkbox" id="<?php echo e($subAttribute->input_name); ?><?php echo e($option->id); ?>" name="<?php echo e($subAttribute->input_name); ?>[]" value="<?php echo e($option->name); ?>" class="custom-control-input attr-checkbox"
																			          <?php if(is_array($selectedAttrs) && array_key_exists($subAttribute->input_name,$selectedAttrs)): ?>
																			          <?php
																			          $inName = $subAttribute->input_name;
																			          ?>
																			          <?php if(is_array($selectedAttrs["$inName"]["values"]) && in_array($option->name, $selectedAttrs["$inName"]["values"])): ?>
																			          checked
																					  <?php
																					 	$checked = 1;
																					  ?>
																			          <?php endif; ?>
																			          <?php endif; ?>
																			          >
																			          <label class="custom-control-label" for="<?php echo e($subAttribute->input_name); ?><?php echo e($option->id); ?>"><?php echo e($option->name); ?></label>
																			       </div>
																			    </div>
																			    <div class="col-lg-7 <?php echo e($subAttribute->price_status == 0 ? 'd-none' : ''); ?>">
																			       <div class="row">
																			          <div class="col-2">
																			             +
																			          </div>
																			          <div class="col-10">
																			             <div class="price-container">
																			                <span class="price-curr"><?php echo e($sign->sign); ?></span>
																			                <input type="text" class="input-field price-input" id="<?php echo e($subAttribute->input_name); ?><?php echo e($option->id); ?>_price" data-name="<?php echo e($subAttribute->input_name); ?>_price[]" placeholder="0.00 (Additional Price)" value="<?php echo e(!empty($selectedAttrs["$inName"]['prices'][$i]) && $checked == 1 ? $selectedAttrs["$inName"]['prices'][$i] : ''); ?>">
																			             </div>
																			          </div>
																			       </div>
																			    </div>
																			 </div>
																			 <?php
																				 if ($checked == 1) {
																				 	$i++;
																				 }
																			 ?>
																			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

																 </div>
															</div>
														<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
													<?php endif; ?>
												</div>
												


												
												<div id="childcatAttributes">
													<?php
														$childAttributes = !empty($data->childcategory->attributes) ? $data->childcategory->attributes : '';
													?>
													<?php if(!empty($childAttributes)): ?>
														<?php $__currentLoopData = $childAttributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $childAttribute): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
															<div class="row">
																 <div class="col-lg-4">
																		<div class="left-area">
																			 <h4 class="heading"><?php echo e($childAttribute->name); ?> *</h4>
																		</div>
																 </div>
																 <div class="col-lg-7">
																	 <?php
																	 	$i = 0;
																	 ?>
																	 <?php $__currentLoopData = $childAttribute->attribute_options; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $optionKey => $option): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
																		 <?php
																			$inName = $childAttribute->input_name;
																			$checked = 0;
																		 ?>
																		 <div class="row">
																				 <div class="col-lg-5">
																					 <div class="custom-control custom-checkbox">
			 																			 <input type="checkbox" id="<?php echo e($childAttribute->input_name); ?><?php echo e($option->id); ?>" name="<?php echo e($childAttribute->input_name); ?>[]" value="<?php echo e($option->name); ?>" class="custom-control-input attr-checkbox"
			 																			 <?php if(is_array($selectedAttrs) && array_key_exists($childAttribute->input_name,$selectedAttrs)): ?>
			 																				 <?php
			 																					$inName = $childAttribute->input_name;
			 																				 ?>
			 																				 <?php if(is_array($selectedAttrs["$inName"]["values"]) && in_array($option->name, $selectedAttrs["$inName"]["values"])): ?>
			 																					 checked
																								 <?php
																								 	$checked = 1;
																								 ?>
			 																				 <?php endif; ?>
			 																			 <?php endif; ?>
			 																			 >
			 																			 <label class="custom-control-label" for="<?php echo e($childAttribute->input_name); ?><?php echo e($option->id); ?>"><?php echo e($option->name); ?></label>
			 																		</div>
																			  </div>


																				<div class="col-lg-7 <?php echo e($childAttribute->price_status == 0 ? 'd-none' : ''); ?>">
																					 <div class="row">
																							<div class="col-2">
																								 +
																							</div>
																							<div class="col-10">
																								 <div class="price-container">
																										<span class="price-curr"><?php echo e($sign->sign); ?></span>
																										<input type="text" class="input-field price-input" id="<?php echo e($childAttribute->input_name); ?><?php echo e($option->id); ?>_price" data-name="<?php echo e($childAttribute->input_name); ?>_price[]" placeholder="0.00 (Additional Price)" value="<?php echo e(!empty($selectedAttrs["$inName"]['prices'][$i]) && $checked == 1 ? $selectedAttrs["$inName"]['prices'][$i] : ''); ?>">
																								 </div>
																							</div>
																					 </div>
																				</div>
																		 </div>
																		 <?php
																			 if ($checked == 1) {
																			 	$i++;
																			 }
																		 ?>
																		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
																 </div>

															</div>
														<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
													<?php endif; ?>
												</div>
												

							                     <div class="row">
							                        <div class="col-lg-4">
							                          <div class="left-area">
							                              <h4 class="heading"><?php echo e($langg->lang642); ?> *</h4>
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
				<i class="icofont-upload-alt"></i> <?php echo e($langg->lang643); ?>

			</a>


							                        </div>
							                      </div>


							                      <input type="hidden" id="feature_photo" name="photo" value="<?php echo e($data->photo); ?>" accept="image/*">

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">
																	<?php echo e($langg->lang644); ?> *
																</h4>
														</div>
													</div>
													<div class="col-lg-7">
														<a href="javascript" class="set-gallery"  data-toggle="modal" data-target="#setgallery">
															<input type="hidden" value="<?php echo e($data->id); ?>">
																<i class="icofont-plus"></i> <?php echo e($langg->lang645); ?>

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
																<input class="checkclick1" name="shipping_time_check" type="checkbox" id="check1" value="1" <?php echo e($data->ship != null ? "checked":""); ?>>
																<label for="check1"><?php echo e($langg->lang646); ?></label>
															</li>
														</ul>
													</div>
												</div>



						                        <div class="<?php echo e($data->ship != null ? "":"showbox"); ?>">

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e($langg->lang647); ?>* </h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" placeholder="<?php echo e($langg->lang647); ?>" name="ship" value="<?php echo e($data->ship == null ? "" : $data->ship); ?>">
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
																<input name="size_check" type="checkbox" id="size-check" value="1" <?php echo e(!empty($data->size) ? "checked":""); ?>>
																<label for="size-check"><?php echo e($langg->lang648); ?></label>
															</li>
														</ul>
													</div>
												</div>
													<div class="<?php echo e(!empty($data->size) ? "":"showbox"); ?>" id="size-display">
													<div class="row">
															<div  class="col-lg-4">
															</div>
															<div  class="col-lg-7">
																<div class="product-size-details" id="size-section">
																	<?php if(!empty($data->size)): ?>
																	 <?php $__currentLoopData = $data->size; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data1): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
																		<div class="size-area">
																		<span class="remove size-remove"><i class="fas fa-times"></i></span>
																		<div  class="row">
																				<div class="col-md-4 col-sm-6">
																					<label>
																						<?php echo e($langg->lang649); ?> :
																						<span>
																							<?php echo e($langg->lang650); ?>

																						</span>
																					</label>
																					<input type="text" name="size[]" class="input-field" placeholder="<?php echo e($langg->lang649); ?>" value="<?php echo e($data->size[$key]); ?>">
																				</div>
																				<div class="col-md-4 col-sm-6">
																						<label>
																							<?php echo e($langg->lang651); ?> :
																							<span>
																								<?php echo e($langg->lang652); ?>

																							</span>
																						</label>
																					<input type="number" name="size_qty[]" class="input-field" placeholder="<?php echo e($langg->lang651); ?>" min="1" value="<?php echo e($data->size_qty[$key]); ?>">
																				</div>
																				<div class="col-md-4 col-sm-6">
																						<label>
																							<?php echo e($langg->lang653); ?> :
																							<span>
																								<?php echo e($langg->lang654); ?>

																							</span>
																						</label>
																					<input type="number" name="size_price[]" class="input-field" placeholder="<?php echo e($langg->lang653); ?>" min="0" value="<?php echo e($data->size_price[$key]); ?>">
																				</div>
																			</div>
																		</div>
																	 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
																	<?php else: ?>
																		<div class="size-area">
																		<span class="remove size-remove"><i class="fas fa-times"></i></span>
																		<div  class="row">
																				<div class="col-md-4 col-sm-6">
																					<label>
																						<?php echo e($langg->lang649); ?> :
																						<span>
																							<?php echo e($langg->lang650); ?>

																						</span>
																					</label>
																					<input type="text" name="size[]" class="input-field" placeholder="<?php echo e($langg->lang649); ?>">
																				</div>
																				<div class="col-md-4 col-sm-6">
																						<label>
																							<?php echo e($langg->lang651); ?> :
																							<span>
																								<?php echo e($langg->lang652); ?>

																							</span>
																						</label>
																					<input type="number" name="size_qty[]" class="input-field" placeholder="<?php echo e($langg->lang651); ?>" value="1" min="1">
																				</div>
																				<div class="col-md-4 col-sm-6">
																						<label>
																							<?php echo e($langg->lang653); ?> :
																							<span>
																								<?php echo e($langg->lang654); ?>

																							</span>
																						</label>
																					<input type="number" name="size_price[]" class="input-field" placeholder="<?php echo e($langg->lang653); ?>" value="0" min="0">
																				</div>
																			</div>
																		</div>
																	<?php endif; ?>
																</div>

																<a href="javascript:;" id="size-btn" class="add-more"><i class="fas fa-plus"></i><?php echo e($langg->lang655); ?> </a>
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
																<input class="checkclick1" name="color_check" type="checkbox" id="check3" value="1" <?php echo e(!empty($data->color) ? "checked":""); ?>>
																<label for="check3"><?php echo e($langg->lang656); ?></label>
															</li>
														</ul>
													</div>
												</div>



						                        <div class="<?php echo e(!empty($data->color) ? "":"showbox"); ?>">

													<div class="row">
														<?php if(!empty($data->color)): ?>
															<div  class="col-lg-4">
																<div class="left-area">
																	<h4 class="heading">
																		<?php echo e($langg->lang657); ?>*
																	</h4>
																	<p class="sub-heading">
																		<?php echo e($langg->lang658); ?>

																	</p>
																</div>
															</div>
															<div  class="col-lg-7">
																	<div class="select-input-color" id="color-section">
																		<?php $__currentLoopData = $data->color; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data1): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
																		<div class="color-area">
																			<span class="remove color-remove"><i class="fas fa-times"></i></span>
											                                <div class="input-group colorpicker-component cp">
											                                  <input type="text" name="color[]" value="<?php echo e($data->color[$key]); ?>"  class="input-field cp"/>
											                                  <span class="input-group-addon"><i></i></span>
											                                </div>
											                         	</div>
											                         	<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
											                         </div>
																	<a href="javascript:;" id="color-btn" class="add-more mt-4 mb-3"><i class="fas fa-plus"></i><?php echo e($langg->lang659); ?> </a>
															</div>
														<?php else: ?>
															<div  class="col-lg-4">
																<div class="left-area">
																	<h4 class="heading">
																		<?php echo e($langg->lang657); ?>*
																	</h4>
																	<p class="sub-heading">
																		<?php echo e($langg->lang658); ?>

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
																	<a href="javascript:;" id="color-btn" class="add-more mt-4 mb-3"><i class="fas fa-plus"></i><?php echo e($langg->lang659); ?> </a>
															</div>


														<?php endif; ?>
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
																<input class="checkclick1" name="whole_check" type="checkbox" id="whole_check" value="1" <?php echo e(!empty($data->whole_sell_qty) ? "checked":""); ?>>
																<label for="whole_check"><?php echo e($langg->lang660); ?></label>
															</li>
														</ul>
													</div>
												</div>

						                    <div class="<?php echo e(!empty($data->whole_sell_qty) ? "":"showbox"); ?>">
												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">

														</div>
													</div>
													<div class="col-lg-7">
														<div class="featured-keyword-area">
															<div class="feature-tag-top-filds" id="whole-section">
																<?php if(!empty($data->whole_sell_qty)): ?>

																	 <?php $__currentLoopData = $data->whole_sell_qty; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data1): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

																<div class="feature-area">
																	<span class="remove whole-remove"><i class="fas fa-times"></i></span>
																	<div class="row">
																		<div class="col-lg-6">
																		<input type="number" name="whole_sell_qty[]" class="input-field" placeholder="<?php echo e($langg->lang661); ?>" min="0" value="<?php echo e($data->whole_sell_qty[$key]); ?>" required="">
																		</div>

																		<div class="col-lg-6">
											                            <input type="number" name="whole_sell_discount[]" class="input-field" placeholder="<?php echo e($langg->lang662); ?>" min="0" value="<?php echo e($data->whole_sell_discount[$key]); ?>" required="">
																		</div>
																	</div>
																</div>


																		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
																<?php else: ?>


																<div class="feature-area">
																	<span class="remove whole-remove"><i class="fas fa-times"></i></span>
																	<div class="row">
																		<div class="col-lg-6">
																		<input type="number" name="whole_sell_qty[]" class="input-field" placeholder="<?php echo e($langg->lang661); ?>" min="0">
																		</div>

																		<div class="col-lg-6">
											                            <input type="number" name="whole_sell_discount[]" class="input-field" placeholder="<?php echo e($langg->lang662); ?>" min="0" />
																		</div>
																	</div>
																</div>

																<?php endif; ?>
															</div>

															<a href="javascript:;" id="whole-btn" class="add-fild-btn"><i class="icofont-plus"></i> <?php echo e($langg->lang663); ?></a>
														</div>
													</div>
												</div>
											</div>


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
															<h4 class="heading">
																<?php echo e($langg->lang664); ?>*
															</h4>
															<p class="sub-heading">
																(<?php echo e($langg->lang665); ?> <?php echo e($sign->name); ?>)
															</p>
														</div>
													</div>
													<div class="col-lg-7">
														<input name="price" step="0.1" type="number" class="input-field" placeholder="<?php echo e($langg->lang666); ?>" value="<?php echo e(round($data->price * $sign->value , 2)); ?>" required="" min="0">
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e($langg->lang667); ?>*</h4>
																<p class="sub-heading"><?php echo e($langg->lang668); ?></p>
														</div>
													</div>
													<div class="col-lg-7">
														<input name="previous_price" step="0.1" type="number" class="input-field" placeholder="<?php echo e($langg->lang666); ?>" value="<?php echo e(round($data->previous_price * $sign->value , 2)); ?>" min="0">
													</div>
												</div>
												<div class="<?php echo e(!empty($data->size) ? "showbox":""); ?>" id="stckprod">
												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e($langg->lang669); ?>*</h4>
																<p class="sub-heading"><?php echo e($langg->lang670); ?></p>
														</div>
													</div>
													<div class="col-lg-7">
														<input name="stock" type="text" class="input-field" placeholder="<?php echo e($langg->lang666); ?>" value="<?php echo e($data->stock); ?>">
														<div class="checkbox-wrapper">
															<input type="checkbox" name="measure_check" class="checkclick1" id="allowProductMeasurement" value="1" <?php echo e($data->measure == null ? '' : 'checked'); ?>>
															<label for="allowProductMeasurement"><?php echo e($langg->lang671); ?></label>
														</div>
													</div>
												</div>

												</div>

											<div class="<?php echo e($data->measure == null ? 'showbox' : ''); ?>">

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e($langg->lang672); ?>*</h4>
														</div>
													</div>
													<div class="col-lg-3">
															<select id="product_measure">
			                                                  <option value="" <?php echo e($data->measure == null ? 'selected':''); ?>><?php echo e($langg->lang673); ?></option>
			                                                  <option value="Gram" <?php echo e($data->measure == 'Gram' ? 'selected':''); ?>><?php echo e($langg->lang674); ?></option>
			                                                  <option value="Kilogram" <?php echo e($data->measure == 'Kilogram' ? 'selected':''); ?>><?php echo e($langg->lang675); ?></option>
			                                                  <option value="Litre" <?php echo e($data->measure == 'Litre' ? 'selected':''); ?>><?php echo e($langg->lang676); ?></option>
			                                                  <option value="Pound" <?php echo e($data->measure == 'Pound' ? 'selected':''); ?>><?php echo e($langg->lang677); ?></option>
			                                                  <option value="Custom" <?php echo e(in_array($data->measure,explode(',', 'Gram,Kilogram,Litre,Pound')) ? '' : 'selected'); ?>><?php echo e($langg->lang678); ?></option>
						                                     </select>
													</div>
													<div class="col-lg-1"></div>
													<div class="col-lg-3 <?php echo e(in_array($data->measure,explode(',', 'Gram,Kilogram,Litre,Pound')) ? 'hidden' : ''); ?>" id="measure">
														<input name="measure" type="text" id="measurement" class="input-field" placeholder="<?php echo e($langg->lang679); ?>" value="<?php echo e($data->measure); ?>">
													</div>
												</div>

											</div>


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
															<h4 class="heading">
																	<?php echo e($langg->lang680); ?>*
															</h4>
														</div>
													</div>
													<div class="col-lg-7">
														<div class="text-editor">
															<textarea name="details" class="nic-edit-p"><?php echo e($data->details); ?></textarea>
														</div>
													</div>
												</div>



												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
															<h4 class="heading">
																	<?php echo e($langg->lang681); ?>*
															</h4>
														</div>
													</div>
													<div class="col-lg-7">
														<div class="text-editor">
															<textarea name="policy" class="nic-edit-p"><?php echo e($data->policy); ?></textarea>
														</div>
													</div>
												</div>


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e($langg->lang682); ?>*</h4>
																<p class="sub-heading"><?php echo e($langg->lang668); ?></p>
														</div>
													</div>
													<div class="col-lg-7">
														<input  name="youtube" type="text" class="input-field" placeholder="<?php echo e($langg->lang682); ?>" value="<?php echo e($data->youtube); ?>">
						                            <div class="checkbox-wrapper">
						                              <input type="checkbox" name="seo_check" value="1" class="checkclick" id="allowProductSEO" <?php echo e(($data->meta_tag != null || strip_tags($data->meta_description) != null) ? 'checked':''); ?>>
						                              <label for="allowProductSEO"><?php echo e($langg->lang683); ?></label>
						                            </div>
													</div>
												</div>



						                        <div class="<?php echo e(($data->meta_tag == null && strip_tags($data->meta_description) == null) ? "showbox":""); ?>">
						                          <div class="row">
						                            <div class="col-lg-4">
						                              <div class="left-area">
						                                  <h4 class="heading"><?php echo e($langg->lang684); ?> *</h4>
						                              </div>
						                            </div>
						                            <div class="col-lg-7">
						                              <ul id="metatags" class="myTags">
						                              	<?php if(!empty($data->meta_tag)): ?>
							                                <?php $__currentLoopData = $data->meta_tag; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $element): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							                                  <li><?php echo e($element); ?></li>
							                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						                                <?php endif; ?>
						                              </ul>
						                            </div>
						                          </div>

						                          <div class="row">
						                            <div class="col-lg-4">
						                              <div class="left-area">
						                                <h4 class="heading">
						                                    <?php echo e($langg->lang685); ?> *
						                                </h4>
						                              </div>
						                            </div>
						                            <div class="col-lg-7">
						                              <div class="text-editor">
						                                <textarea name="meta_description" class="input-field" placeholder="<?php echo e($langg->lang685); ?>"><?php echo e($data->meta_description); ?></textarea>
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
																<h4 class="title"><?php echo e($langg->lang686); ?></h4>
															</div>

															<div class="feature-tag-top-filds" id="feature-section">
																<?php if(!empty($data->features)): ?>

																	 <?php $__currentLoopData = $data->features; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data1): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

																<div class="feature-area">
																	<span class="remove feature-remove"><i class="fas fa-times"></i></span>
																	<div class="row">
																		<div class="col-lg-6">
																		<input type="text" name="features[]" class="input-field" placeholder="<?php echo e($langg->lang687); ?>" value="<?php echo e($data->features[$key]); ?>">
																		</div>

																		<div class="col-lg-6">
											                                <div class="input-group colorpicker-component cp">
											                                  <input type="text" name="colors[]" value="<?php echo e($data->colors[$key]); ?>" class="input-field cp"/>
											                                  <span class="input-group-addon"><i></i></span>
											                                </div>
																		</div>
																	</div>
																</div>


																		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
																<?php else: ?>

																<div class="feature-area">
																	<span class="remove feature-remove"><i class="fas fa-times"></i></span>
																	<div class="row">
																		<div class="col-lg-6">
																		<input type="text" name="features[]" class="input-field" placeholder="<?php echo e($langg->lang687); ?>">
																		</div>

																		<div class="col-lg-6">
											                                <div class="input-group colorpicker-component cp">
											                                  <input type="text" name="colors[]" value="#000000" class="input-field cp"/>
											                                  <span class="input-group-addon"><i></i></span>
											                                </div>
																		</div>
																	</div>
																</div>

																<?php endif; ?>
															</div>

															<a href="javascript:;" id="feature-btn" class="add-fild-btn"><i class="icofont-plus"></i> <?php echo e($langg->lang688); ?></a>
														</div>
													</div>
												</div>


						                        <div class="row">
						                          <div class="col-lg-4">
						                            <div class="left-area">
						                                <h4 class="heading"><?php echo e($langg->lang689); ?> *</h4>
						                            </div>
						                          </div>
						                          <div class="col-lg-7">
						                            <ul id="tags" class="myTags">
						                            	<?php if(!empty($data->tags)): ?>
							                                <?php $__currentLoopData = $data->tags; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $element): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							                                  <li><?php echo e($element); ?></li>
							                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						                                <?php endif; ?>
						                            </ul>
						                          </div>
						                        </div>



												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">

														</div>
													</div>
													<div class="col-lg-7 text-center">
														<button class="addProductSubmit-btn" type="submit"><?php echo e($langg->lang706); ?></button>
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
			<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
				<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle"><?php echo e($langg->lang619); ?></h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="top-area">
						<div class="row">
							<div class="col-sm-6 text-right">
								<div class="upload-img-btn">
									<form  method="POST" enctype="multipart/form-data" id="form-gallery">
										<?php echo e(csrf_field()); ?>

									<input type="hidden" id="pid" name="product_id" value="">
									<input type="file" name="gallery[]" class="hidden" id="uploadgallery" accept="image/*" multiple>
											<label for="image-upload" id="prod_gallery"><i class="icofont-upload-alt"></i><?php echo e($langg->lang620); ?></label>
									</form>
								</div>
							</div>
							<div class="col-sm-6">
								<a href="javascript:;" class="upload-done" data-dismiss="modal"> <i class="fas fa-check"></i> <?php echo e($langg->lang621); ?></a>
							</div>
							<div class="col-sm-12 text-center">( <small><?php echo e($langg->lang622); ?></small> )</div>
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
                                <?php $__currentLoopData = $districts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $district): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                    <li class="brn">
                                    <a onclick="showItem('sub-dis',<?php echo e($district->id); ?>,'.dis','district_id',<?php echo e($district->id); ?>,['division_id','subdistrict_id'],'area_name','<?php echo e($district->name); ?>')" href="#" class="clearfix">
                                        <span class="dnn float-left"><?php echo e($district->name); ?></span><span class="dnn float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                    <div id="sub-dis<?php echo e($district->id); ?>" class="lft sub-dis categories-list sub-cate-item" >
                                        <button class="d-sm-none btn-back" onclick="dModal()"><i class="fas fa-chevron-left"></i>Back</button>
                                        <ul class="sub-menu1 text-muted">

                                         <li><a onclick="closeModal()" class="text-muted" href="javascript:void(0)"><?php echo e($district->name); ?> এর সবগুলো</a></li>
                                         <?php ($i=1); ?>
                                            <?php $__currentLoopData = $district->subdistricts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subdistrict): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php if($i<6): ?>
                                                <li><a class="text-muted" href="javascript:void(0)" onclick="showItem('sub-dis','','.dis','subdistrict_id',<?php echo e($subdistrict->id); ?>,[],'area_name','<?php echo e($subdistrict->name); ?>','#my-modal')"><?php echo e($subdistrict->name); ?></a></li>
                                                <?php elseif($i==6): ?>
                                                    <div class="dropdown mt-4" id="all_sub_category">
  
    <input onclick="myFunction()" type="text" placeholder="অন্যান্য এলাকা (A-Z)" id="myInput" onkeyup="filterFunction()" >
    <button class="btn all_sub_category_btn" onclick="myFunction()"><i class="dist fas  fa-angle-down">
    </i></button>
  <div id="myDropdown" class="dropdown-content ">
                                                    <a class="text-muted" href="javascript:void(0)" onclick="showItem('sub-dis','','.dis','subdistrict_id',<?php echo e($subdistrict->id); ?>,[],'area_name','<?php echo e($subdistrict->name); ?>','#my-modal')"><?php echo e($subdistrict->name); ?></a>
                                                
                                                <?php else: ?>
                                                    <a class="text-muted" href="javascript:void(0)" onclick="showItem('sub-dis','','.dis','subdistrict_id',<?php echo e($subdistrict->id); ?>,[],'area_name','<?php echo e($subdistrict->name); ?>','#my-modal')"><?php echo e($subdistrict->name); ?></a>
                                                <?php endif; ?>
                                                <?php if($i>=6&&$i==$district->subdistricts->count()): ?>
                                                   
                                                    </div>
                                                    </div>
                                                    <?php endif; ?>
                                                   <?php ($i++); ?> 
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            
                                        </ul>
                                    </div>

                                </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                              
                            </ul>
                        </div>
                        <input type="hidden" id="area_key" >
                        <input type="hidden" id="area_value" >
                        <div class="dnn btn text-muted mt-3">বিভাগ</div>
                        <div class=" categories-list model-item categories-list-division">
                            <ul>
                            
                               <?php $__currentLoopData = $divisions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $division): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li class="brn">
                                    <a
									 onclick="showItem('dis',<?php echo e($division->id); ?>,'.sub-dis','division_id',<?php echo e($division->id); ?>,['district_id','subdistrict_id'],'area_name','<?php echo e($division->name); ?>')"
									
									 href="#" class="clearfix">
                                        <span class="dnn float-left"><?php echo e($division->name); ?></span><span class="dnn float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                        <div id="dis<?php echo e($division->id); ?>" class="lft dis categories-list sub-cate-item sub-cate-item-division" style="">
                                        <button class="d-sm-none btn-back" onclick="dModal()"><i class="fas fa-chevron-left"></i>Back</button>

                                        <ul class="sub-menu1 text-muted">
                                         <li><a onclick="closeModal()" class="text-muted" href="#"><?php echo e($division->name); ?> বিভাগ এর সবগুলো</a></li>
                                         <?php ($i=1); ?>
                                            <?php $__currentLoopData = $division->districts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $district): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php if($i<6): ?>

                                                <li><a class="text-muted" href="#"
												onclick="showItem('','','','district_id',<?php echo e($district->id); ?>,[],'area_name','<?php echo e($district->name); ?>','#my-modal')"
												><?php echo e($district->name); ?></a></li>
<?php elseif($i==6): ?>
                                                    <div class="dropdown mt-4" id="all_sub_category">
  
    <input onclick="myFunctionDiv()" type="text" placeholder="অন্যান্য এলাকা (A-Z)" id="myInput" onkeyup="filterFunctionDiv()" >
    <button class="btn all_sub_category_btn" onclick="myFunctionDiv()"><i class="div fas fa-angle-down ">
    </i></button>
  <div id="myDropdownDiv" class="dropdown-content ">
                                                    <a class="text-muted" href="#"
												onclick="showItem('','','','district_id',<?php echo e($district->id); ?>,[],'area_name','<?php echo e($district->name); ?>','#my-modal')"
												><?php echo e($district->name); ?></a>
                                                
                                                <?php else: ?>
                                                    <a class="text-muted" href="#"
												onclick="showItem('','','','district_id',<?php echo e($district->id); ?>,[],'area_name','<?php echo e($district->name); ?>','#my-modal')"
												><?php echo e($district->name); ?></a>
                                                <?php endif; ?>
                                                <?php if($i>=6&&$i==$district->subdistricts->count()): ?>
                                                   
                                                    </div>
                                                    </div>
                                                    <?php endif; ?>
                                                   <?php ($i++); ?> 

                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            
                                        </ul>
                                    </div>
                                </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>

<script>
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
  if($(".dist.fa-angle-up").length>0)
  {
    $(".dist.fa-angle-up").attr("class","dist fas fa-angle-down")
  }
  else{
    $(".fa-angle-down.dist").attr("class","dist fas fa-angle-up")
  }
}

function filterFunction() {
  if(document.getElementById("myDropdown").classList.length==1){
    document.getElementById("myDropdown").classList.add("show")
  }
  var input, filter, ul, li, a, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  div = document.getElementById("myDropdown");
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
function myFunctionDiv() {
  document.getElementById("myDropdownDiv").classList.toggle("show");
  if($(".fa-angle-up.div").length>0)
  {
    $(".fa-angle-up.div").attr("class","fas div fa-angle-down")
  }
  else{
    $(".fa-angle-down.div").attr("class","fas div fa-angle-up")
  }
}
function filterFunctionDiv() {
  if(document.getElementById("myDropdownDiv").classList.length==1){
    document.getElementById("myDropdownDiv").classList.add("show")
  }
  var input, filter, ul, li, a, i;
  input = document.getElementById("myInputDiv");
  filter = input.value.toUpperCase();
  div = document.getElementById("myDropdownDiv");
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
        $(".dnn").css("display","none");
        $(".lft").css("left","18px");

      }
	}
</script>
						

							
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
							<?php $__currentLoopData = $cats; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li>
                                    <a onclick="showItem('sub-cat',<?php echo e($cat->id); ?>,'.aos','category_id',<?php echo e($cat->id); ?>,['subcategory_id'],'cat_name','<?php echo e($cat->name); ?>')" href="#" class="clearfix">
                                        <span class="float-left"><?php echo e($cat->name); ?></span><span class="float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                    <div id="sub-cat<?php echo e($cat->id); ?>" class="categories-list sub-cat sub-cate-item" style="">
                                        <ul class="sub-menu1 text-muted">
										<?php $__currentLoopData = $cat->subs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <li><a
											onclick="showItem('','','.aos','subcategory_id',<?php echo e($sub->id); ?>,[],'cat_name','<?php echo e($sub->name); ?>','#my-modal2')"
											 class="text-muted" href="#"><?php echo e($sub->name); ?></a></li>
											
										<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </ul>
                                    </div>
                                </li>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>
						

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>

<script type="text/javascript">

// Gallery Section Update

    $(document).on("click", ".set-gallery" , function(){
        var pid = $(this).find('input[type=hidden]').val();
        $('#pid').val(pid);
        $('.selected-image .row').html('');
            $.ajax({
                    type: "GET",
                    url:"<?php echo e(route('admin-gallery-show')); ?>",
                    data:{id:pid},
                    success:function(data){
                      if(data[0] == 0)
                      {
	                    $('.selected-image .row').addClass('justify-content-center');
	      				$('.selected-image .row').html('<h3><?php echo e($langg->lang624); ?></h3>');
     				  }
                      else {
	                    $('.selected-image .row').removeClass('justify-content-center');
	      				$('.selected-image .row h3').remove();
                          var arr = $.map(data[1], function(el) {
                          return el });

                          for(var k in arr)
                          {
        				$('.selected-image .row').append('<div class="col-sm-6">'+
                                        '<div class="img gallery-img">'+
                                            '<span class="remove-img"><i class="fas fa-times"></i>'+
                                            '<input type="hidden" value="'+arr[k]['id']+'">'+
                                            '</span>'+
                                            '<a href="'+'<?php echo e(asset('assets/images/galleries').'/'); ?>'+arr[k]['photo']+'" target="_blank">'+
                                            '<img src="'+'<?php echo e(asset('assets/images/galleries').'/'); ?>'+arr[k]['photo']+'" alt="gallery image">'+
                                            '</a>'+
                                        '</div>'+
                                  	'</div>');
                          }
                       }

                    }
                  });
      });


  $(document).on('click', '.remove-img' ,function() {
    var id = $(this).find('input[type=hidden]').val();
    $(this).parent().parent().remove();
	    $.ajax({
	        type: "GET",
	        url:"<?php echo e(route('admin-gallery-delete')); ?>",
	        data:{id:id}
	    });
  });

  $(document).on('click', '#prod_gallery' ,function() {
    $('#uploadgallery').click();
  });


  $("#uploadgallery").change(function(){
    $("#form-gallery").submit();
  });

  $(document).on('submit', '#form-gallery' ,function() {
		  $.ajax({
		   url:"<?php echo e(route('admin-gallery-store')); ?>",
		   method:"POST",
		   data:new FormData(this),
		   dataType:'JSON',
		   contentType: false,
		   cache: false,
		   processData: false,
		   success:function(data)
		   {
		    if(data != 0)
		    {
	                    $('.selected-image .row').removeClass('justify-content-center');
	      				$('.selected-image .row h3').remove();
		        var arr = $.map(data, function(el) {
		        return el });
		        for(var k in arr)
		           {
        				$('.selected-image .row').append('<div class="col-sm-6">'+
                                        '<div class="img gallery-img">'+
                                            '<span class="remove-img"><i class="fas fa-times"></i>'+
                                            '<input type="hidden" value="'+arr[k]['id']+'">'+
                                            '</span>'+
                                            '<a href="'+'<?php echo e(asset('assets/images/galleries').'/'); ?>'+arr[k]['photo']+'" target="_blank">'+
                                            '<img src="'+'<?php echo e(asset('assets/images/galleries').'/'); ?>'+arr[k]['photo']+'" alt="gallery image">'+
                                            '</a>'+
                                        '</div>'+
                                  	'</div>');
		            }
		    }

		                       }

		  });
		  return false;
 });


// Gallery Section Update Ends

</script>

<script src="<?php echo e(asset('assets/admin/js/jquery.Jcrop.js')); ?>"></script>

<script src="<?php echo e(asset('assets/admin/js/jquery.SimpleCropper.js')); ?>"></script>

<script type="text/javascript">

$('.cropme').simpleCropper();
$('#crop-image').on('click',function(){
$('.cropme').click();
});

</script>


  <script type="text/javascript">
  $(document).ready(function() {

    let html = `<img src="<?php echo e((empty($data->photo) ? asset('assets/images/noimage.png') : filter_var($data->photo, FILTER_VALIDATE_URL)) ? $data->photo :asset('assets/images/products/'.$data->photo)); ?>" alt="">`;
    $(".span4.cropme").html(html);

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

  });


  $('.ok').on('click', function () {

 setTimeout(
    function() {


  	var img = $('#feature_photo').val();

      $.ajax({
        url: "<?php echo e(route('vendor-prod-upload-update',$data->id)); ?>",
        type: "POST",
        data: {"image":img},
        success: function (data) {
          if (data.status) {
            $('#feature_photo').val(data.file_name);
          }
          if ((data.errors)) {
            for(var error in data.errors)
            {
              $.notify(data.errors[error], "danger");
            }
          }
        }
      });

    }, 1000);



    });

  </script>

<script src="<?php echo e(asset('assets/admin/js/product.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.vendor', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>