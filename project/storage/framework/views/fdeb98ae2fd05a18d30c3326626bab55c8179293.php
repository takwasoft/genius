<?php $__env->startSection('content'); ?>

<div class="content-area">
            <div class="mr-breadcrumb">
              <div class="row">
                <div class="col-lg-12">
                    <h4 class="heading"><?php echo e($langg->lang456); ?></h4>
                    <ul class="links">
                      <li>
                        <a href="<?php echo e(route('vendor-dashboard')); ?>"><?php echo e($langg->lang441); ?> </a>
                      </li>
                      <li>
                        <a href="javascript:;"><?php echo e($langg->lang452); ?></a>
                      </li>
                      <li>
                        <a href="<?php echo e(route('vendor-social-index')); ?>"><?php echo e($langg->lang456); ?></a>
                      </li>
                    </ul>
                </div>
              </div>
            </div>
            <div class="social-links-area">
            <div class="gocover" style="background: url(<?php echo e(asset('assets/images/'.$gs->admin_loader)); ?>) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
              <form id="geniusform" class="form-horizontal" action="<?php echo e(route('vendor-social-update')); ?>" method="POST">   
              <?php echo e(csrf_field()); ?>


              <?php echo $__env->make('includes.admin.form-both', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>  

                <div class="row">
                  <label class="control-label col-sm-3" for="facebook"><?php echo e($langg->lang526); ?> *</label>
                  <div class="col-sm-6">
                    <input class="form-control" name="f_url" id="facebook" placeholder="<?php echo e($langg->lang526); ?>" required="" type="text" value="<?php echo e($data->f_url); ?>">
                  </div>
                  <div class="col-sm-3">
                    <label class="switch">
                      <input type="checkbox" name="f_check" value="1" <?php echo e($data->f_check==1?"checked":""); ?>>
                      <span class="slider round"></span>
                    </label>
                  </div>
                </div>

                <div class="row">
                  <label class="control-label col-sm-3" for="gplus"><?php echo e($langg->lang527); ?> *</label>
                  <div class="col-sm-6">
                    <input class="form-control" name="g_url" id="gplus" placeholder="<?php echo e($langg->lang527); ?>" required="" type="text" value="<?php echo e($data->g_url); ?>">
                  </div>
                  <div class="col-sm-3">
                    <label class="switch">
                      <input type="checkbox" name="g_check" value="1" <?php echo e($data->g_check==1?"checked":""); ?>>
                      <span class="slider round"></span>
                    </label>
                  </div>
                </div>

                <div class="row">
                  <label class="control-label col-sm-3" for="twitter"><?php echo e($langg->lang528); ?> *</label>
                  <div class="col-sm-6">
                    <input class="form-control" name="t_url" id="twitter" placeholder="<?php echo e($langg->lang528); ?>" required="" type="text" value="<?php echo e($data->t_url); ?>">
                  </div>
                  <div class="col-sm-3">
                    <label class="switch">
                      <input type="checkbox" name="t_check" value="1" <?php echo e($data->t_check==1?"checked":""); ?>>
                      <span class="slider round"></span>
                    </label>
                  </div>
                </div>

                <div class="row">
                  <label class="control-label col-sm-3" for="linkedin"><?php echo e($langg->lang529); ?> *</label>
                  <div class="col-sm-6">
                    <input class="form-control" name="l_url" id="linkedin" placeholder="<?php echo e($langg->lang529); ?>" required="" type="text" value="<?php echo e($data->l_url); ?>">
                  </div>
                  <div class="col-sm-3">
                    <label class="switch">
                      <input type="checkbox" name="l_check" value="1" <?php echo e($data->l_check==1?"checked":""); ?>>
                      <span class="slider round"></span>
                    </label>
                  </div>
                </div>

                <div class="row">
                  <div class="col-12 text-center">
                    <button type="submit" class="submit-btn"><?php echo e($langg->lang530); ?></button>
                  </div>
                </div>
              </form>
            </div>
          </div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.vendor', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>