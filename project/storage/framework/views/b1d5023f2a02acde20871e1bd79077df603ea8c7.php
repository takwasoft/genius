<?php $__env->startSection('styles'); ?>

<link href="<?php echo e(asset('assets/vendor/css/product.css')); ?>" rel="stylesheet"/>
<link href="<?php echo e(asset('assets/admin/css/jquery.Jcrop.css')); ?>" rel="stylesheet"/>
<link href="<?php echo e(asset('assets/admin/css/Jcrop-style.css')); ?>" rel="stylesheet"/>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>

						<div class="content-area">
							<div class="mr-breadcrumb">
								<div class="row">
									<div class="col-lg-12">
											<h4 class="heading"> <?php echo e($langg->lang629); ?> <a class="add-btn" href="<?php echo e(url()->previous()); ?>"><i class="fas fa-arrow-left"></i> <?php echo e($langg->lang550); ?></a></h4>
											<ul class="links">
                      <li>
                        <a href="<?php echo e(route('vendor-dashboard')); ?>"><?php echo e($langg->lang441); ?></a>
                      </li>
                      <li>
                        <a href="javascript:;"><?php echo e($langg->lang444); ?> </a>
                      </li>
												<li>
													<a href="javascript:;"><?php echo e($langg->lang785); ?></a>
												</li>
												<li>
													<a href="<?php echo e(route('vendor-prod-catalog-edit',$data->id)); ?>"><?php echo e($langg->lang629); ?></a>
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
					                      <form id="geniusform" action="<?php echo e(route('vendor-prod-catalog-update',$data->id)); ?>" method="POST" enctype="multipart/form-data">
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
														<input type="text" class="input-field" placeholder="<?php echo e($langg->lang794); ?>" name="sku" required="" value="<?php echo e(str_random(3).substr(time(), 6,8).str_random(3)); ?>">

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

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e($langg->lang637); ?>*</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<select id="cat" name="category_id" required="">
																	<option><?php echo e($langg->lang691); ?></option>

                                              <?php $__currentLoopData = $cats; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                  <option data-href="<?php echo e(route('vendor-subcat-load',$cat->id)); ?>" value="<?php echo e($cat->id); ?>" <?php echo e($cat->id == $data->category_id ? "selected":""); ?> ><?php echo e($cat->name); ?></option>
                                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						                                     </select>
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e($langg->lang638); ?>*</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<select id="subcat" name="subcategory_id">
																<option value=""><?php echo e($langg->lang639); ?></option>
	                                                  <?php if($data->subcategory_id == null): ?>
	                                                  <?php $__currentLoopData = $data->category->subs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
	                                                  <option data-href="<?php echo e(route('vendor-childcat-load',$sub->id)); ?>" value="<?php echo e($sub->id); ?>" ><?php echo e($sub->name); ?></option>
	                                                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
	                                                  <?php else: ?>
	                                                  <?php $__currentLoopData = $data->category->subs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
	                                                  <option data-href="<?php echo e(route('vendor-childcat-load',$sub->id)); ?>" value="<?php echo e($sub->id); ?>" <?php echo e($sub->id == $data->subcategory_id ? "selected":""); ?> ><?php echo e($sub->name); ?></option>
	                                                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
	                                                  <?php endif; ?>


															</select>
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e($langg->lang640); ?>*</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<select id="childcat" name="childcategory_id" <?php echo e($data->subcategory_id == null ? "disabled":""); ?>>
                                                  				<option value=""><?php echo e($langg->lang641); ?></option>
	                                                  <?php if($data->subcategory_id != null): ?>
	                                                  <?php if($data->childcategory_id == null): ?>
	                                                  <?php $__currentLoopData = $data->subcategory->childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
	                                                  <option value="<?php echo e($child->id); ?>" ><?php echo e($child->name); ?></option>
	                                                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
	                                                  <?php else: ?>
	                                                  <?php $__currentLoopData = $data->subcategory->childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
	                                                  <option value="<?php echo e($child->id); ?> " <?php echo e($child->id == $data->childcategory_id ? "selected":""); ?>><?php echo e($child->name); ?></option>
	                                                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
	                                                  <?php endif; ?>
	                                                  <?php endif; ?>
															</select>
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

							                     <input type="hidden" id="is_photo" name="is_photo" value="0">

							                      <input type="hidden" id="feature_photo" name="photo" value="<?php echo e($data->photo); ?>" accept="image/*">

						                        <input type="file" name="gallery[]" class="hidden" id="uploadgallery" accept="image/*" multiple>
												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">
																		<?php echo e($langg->lang644); ?> *
																</h4>
														</div>
													</div>
													<div class="col-lg-7">
														<a href="#" class="set-gallery"  data-toggle="modal" data-target="#setgallery">
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
						                        <input type="hidden" name="type" value="Physical">
						                        <input type="hidden" name="catalog_id" value="<?php echo e($data->id); ?>">

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
			<div class="modal-dialog modal-dialog-centered  modal-lg" role="document">
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
											<label for="image-upload" id="prod_gallery"><i class="icofont-upload-alt"></i><?php echo e($langg->lang620); ?></label>
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


$('#feature_photo').change(function(){
     $('#is_photo').val('1');
});

</script>


<script type="text/javascript">

  $(document).ready(function() {

    let html = `<img src="<?php echo e(empty($data->photo) ? asset('assets/images/noimage.png') : filter_var($data->photo, FILTER_VALIDATE_URL) ? $data->photo :asset('assets/images/products/'.$data->photo)); ?>" alt="">`;
    $(".span4.cropme").html(html);


  });

</script>

<script src="<?php echo e(asset('assets/admin/js/product.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.vendor', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>