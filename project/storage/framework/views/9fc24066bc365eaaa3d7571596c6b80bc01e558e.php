<?php $__env->startSection('content'); ?>

<div class="content-area">
            <div class="mr-breadcrumb">
              <div class="row">
                <div class="col-lg-12">
                    <h4 class="heading"><?php echo e(__('Social Links')); ?></h4>
                    <ul class="links">
                      <li>
                        <a href="<?php echo e(route('admin.dashboard')); ?>"><?php echo e(__('Dashboard')); ?> </a>
                      </li>
                      <li>
                        <a href="javascript:;"><?php echo e(__('Social Settings')); ?></a>
                      </li>
                      <li>
                        <a href="<?php echo e(route('admin-social-index')); ?>"><?php echo e(__('Social Links')); ?></a>
                      </li>
                    </ul>
                </div>
              </div>
            </div>
            <div class="social-links-area">
            <div class="gocover" style="background: url(<?php echo e(asset('assets/images/'.$gs->admin_loader)); ?>) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
              <form id="geniusform" class="form-horizontal" action="<?php echo e(route('admin-social-update-all')); ?>" method="POST">   
              <?php echo e(csrf_field()); ?>


              <?php echo $__env->make('includes.admin.form-both', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>  

                <div class="row">
                  <label class="control-label col-sm-3" for="facebook"><?php echo e(__('Facebook')); ?> *</label>
                  <div class="col-sm-6">
                    <input class="form-control" name="facebook" id="facebook" placeholder="<?php echo e(__('http://facebook.com/')); ?>" required="" type="text" value="<?php echo e($data->facebook); ?>">
                  </div>
                  <div class="col-sm-3">
                    <label class="switch">
                      <input type="checkbox" name="f_status" value="1" <?php echo e($data->f_status==1?"checked":""); ?>>
                      <span class="slider round"></span>
                    </label>
                  </div>
                </div>

                <div class="row" style="display:none">
                  <label class="control-label col-sm-3" for="gplus"><?php echo e(__('Google Plus')); ?> *</label>
                  <div class="col-sm-6">
                    <input class="form-control" name="gplus" id="gplus" placeholder="<?php echo e(__('http://google.com/')); ?>" required="" type="text" value="<?php echo e($data->gplus); ?>">
                  </div>
                  <div class="col-sm-3">
                    <label class="switch">
                      <input type="checkbox" name="g_status" value="1" <?php echo e($data->g_status==1?"checked":""); ?>>
                      <span class="slider round"></span>
                    </label>
                  </div>
                </div>

                <div class="row">
                  <label class="control-label col-sm-3" for="twitter"><?php echo e(__('Twitter')); ?> *</label>
                  <div class="col-sm-6">
                    <input class="form-control" name="twitter" id="twitter" placeholder="<?php echo e(__('http://twitter.com/')); ?>" required="" type="text" value="<?php echo e($data->twitter); ?>">
                  </div>
                  <div class="col-sm-3">
                    <label class="switch">
                      <input type="checkbox" name="t_status" value="1" <?php echo e($data->t_status==1?"checked":""); ?>>
                      <span class="slider round"></span>
                    </label>
                  </div>
                </div>

                <div class="row">
                  <label class="control-label col-sm-3" for="linkedin"><?php echo e(__('Linkedin')); ?> *</label>
                  <div class="col-sm-6">
                    <input class="form-control" name="linkedin" id="linkedin" placeholder="<?php echo e(__('http://linkedin.com/')); ?>" required="" type="text" value="<?php echo e($data->linkedin); ?>">
                  </div>
                  <div class="col-sm-3">
                    <label class="switch">
                      <input type="checkbox" name="l_status" value="1" <?php echo e($data->l_status==1?"checked":""); ?>>
                      <span class="slider round"></span>
                    </label>
                  </div>
                </div>


                <div class="row">
                  <label class="control-label col-sm-3" for="youtube"><?php echo e(__('Youtube')); ?> *</label>
                  <div class="col-sm-6">
                    <input class="form-control" name="dribble" id="dribble" placeholder="<?php echo e(__('https://dribbble.com/')); ?>" required="" type="text" value="<?php echo e($data->dribble); ?>">
                  </div>
                  <div class="col-sm-3">
                    <label class="switch">
                      <input type="checkbox" name="d_status" value="1" <?php echo e($data->d_status==1?"checked":""); ?>>
                      <span class="slider round"></span>
                    </label>
                  </div>
                </div>

                <div class="row">
                  <div class="col-12 text-center">
                    <button type="submit" class="submit-btn"><?php echo e(__('Save')); ?></button>
                  </div>
                </div>
              </form>
            </div>
          </div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>