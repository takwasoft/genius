<?php $__env->startSection('content'); ?>

            <div class="content-area">

              <div class="add-product-content">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="product-description">
                      <div class="body-area">
                        <?php echo $__env->make('includes.admin.form-error', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                      <form id="geniusformdata" action="<?php echo e(route('admin-cat-update',$data->id)); ?>" method="POST" enctype="multipart/form-data">
                        <?php echo e(csrf_field()); ?>



                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading"><?php echo e(__('Name')); ?> *</h4>
                                <p class="sub-heading"><?php echo e(__('(In Any Language)')); ?></p>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="name" placeholder="<?php echo e(__('Enter Name')); ?>" required="" value="<?php echo e($data->name); ?>">
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading"><?php echo e(__('Slug')); ?> *</h4>
                                <p class="sub-heading"><?php echo e(__('(In English)')); ?></p>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="slug" placeholder="<?php echo e(__('Enter Slug')); ?>" required="" value="<?php echo e($data->slug); ?>">
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading"><?php echo e(__('Current Icon')); ?> *</h4>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <div class="img-upload">
                                <div id="image-preview" class="img-preview" style="background: url(<?php echo e($data->photo ? asset('assets/images/categories/'.$data->photo):asset('assets/images/noimage.png')); ?>);">
                                    <label for="image-upload" class="img-label" id="image-label"><i class="icofont-upload-alt"></i><?php echo e(__('Upload Icon')); ?></label>
                                    <input type="file" name="photo" class="img-upload" id="image-upload">
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
							                            <div class="checkbox-wrapper">
							                              <input type="checkbox" name="is_featured" class="checkclick" id="is_featured" value="1" <?php echo e($data->is_featured != 0 ? "checked":""); ?>>
							                              <label for="is_featured"><?php echo e(__('Allow Featured Category')); ?></label>
							                            </div>

													</div>
												</div>


						          <div class="<?php echo e($data->is_featured == 0 ? "showbox":""); ?>">

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading"><?php echo e(__('Current Featured Image')); ?>*</h4>
														</div>
													</div>
                          <div class="col-lg-7">
                            <div class="img-upload">
                              <div id="image-preview" class="img-preview" style="background: url(<?php echo e($data->image ? asset('assets/images/categories/'.$data->image):asset('assets/images/noimage.png')); ?>);">
                                <label for="image-upload" class="img-label"><i class="icofont-upload-alt"></i><?php echo e(__('Upload Image')); ?></label>
                                <input type="file" name="image" class="img-upload">
                              </div>
                            </div>
                          </div>

												</div>


						          </div>



                        <br>
                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">

                            </div>
                          </div>
                          <div class="col-lg-7">
                            <button class="addProductSubmit-btn" type="submit"><?php echo e(__('Save')); ?></button>
                          </div>
                        </div>
                      </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.load', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>