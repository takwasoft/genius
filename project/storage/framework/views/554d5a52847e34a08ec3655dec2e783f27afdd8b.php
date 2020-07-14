<?php $__env->startSection('content'); ?>

            <div class="content-area">
              <div class="mr-breadcrumb">
                <div class="row">
                  <div class="col-lg-12">
                      <h4 class="heading"><?php echo e(__('Right Side Banner1')); ?> </h4>
                      <ul class="links">
                        <li>
                          <a href="<?php echo e(route('admin.dashboard')); ?>"><?php echo e(__('Dashboard')); ?> </a>
                        </li>
                        <li>
                          <a href="javascript:;"><?php echo e(__('Home Page Settings')); ?> </a>
                        </li>
                        <li>
                          <a href="<?php echo e(route('admin-ps-best-seller')); ?>"><?php echo e(__('Right Side Banner1')); ?> </a>
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
                      <form id="geniusform" action="<?php echo e(route('admin-ps-update')); ?>" method="POST" enctype="multipart/form-data">
                        <?php echo e(csrf_field()); ?>


                        <?php echo $__env->make('includes.admin.form-both', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>  

                                    <div class="row">
                                      <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading"> <?php echo e(__('Top Banner Image')); ?> *</h4>
                                            <small><?php echo e(__('(Preferred SIze: 285 X 410 Pixel)')); ?></small>
                                        </div>
                                      </div>
                                      <div class="col-lg-7">
                                        <div class="img-upload">
                                            <div id="image-preview" class="img-preview" style="background: url(<?php echo e($data->best_seller_banner ? asset('assets/images/'.$data->best_seller_banner):asset('assets/images/noimage.png')); ?>);">
                                                <label for="image-upload" class="img-label" id="image-label"><i class="icofont-upload-alt"></i><?php echo e(__('Upload Image')); ?></label>
                                                <input type="file" name="best_seller_banner" class="img-upload" id="image-upload">
                                              </div>

                                        </div>
                                      </div>
                                    </div>


                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading"><?php echo e(__('Link')); ?> *</h4>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="best_seller_banner_link" placeholder="<?php echo e(__('Link')); ?>" required="" value="<?php echo e($data->best_seller_banner_link); ?>">
                          </div>
                        </div>




                                    <div class="row">
                                      <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading"> <?php echo e(__('Bottom Banner Image')); ?> *</h4>
                                            <small><?php echo e(__('(Preferred SIze: 285 X 410 Pixel)')); ?></small>
                                        </div>
                                      </div>
                                      <div class="col-lg-7">
                                        <div class="img-upload">
                                            <div id="image-preview" class="img-preview" style="background: url(<?php echo e($data->best_seller_banner1 ? asset('assets/images/'.$data->best_seller_banner1):asset('assets/images/noimage.png')); ?>);">
                                                <label for="image-upload" class="img-label" id="image-label"><i class="icofont-upload-alt"></i><?php echo e(__('Upload Image')); ?></label>
                                                <input type="file" name="best_seller_banner1" class="img-upload" id="image-upload">
                                              </div>

                                        </div>
                                      </div>
                                    </div>


                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading"><?php echo e(__('Link')); ?> *</h4>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="best_seller_banner_link1" placeholder="<?php echo e(__('Link')); ?>" required="" value="<?php echo e($data->best_seller_banner_link1); ?>">
                          </div>
                        </div>


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
<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>