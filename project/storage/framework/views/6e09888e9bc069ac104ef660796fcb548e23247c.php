 <?php $__env->startSection('content'); ?>

<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <ul class="pages">
                    <li>
                        <a href="<?php echo e(route('front.index')); ?>">
              <?php echo e($langg->lang17); ?>

            </a>
                    </li>
                    <li>
                        <a href="<?php echo e(route('front.page',$page->slug)); ?>">
              <?php echo e($page->title); ?>

            </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Area End -->





<div id="about" class="mt-5 d-none d-sm-block"> 
			
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <iframe width="540" height="315"
                    src="<?php echo e($youtube); ?>">
                </iframe>

            </div>
            <div class="col-md-6">
                <?php if($about): ?>
                <h2 style="font-size:30px"><?php echo $about->title; ?> </h2>
                <p style="font-size:15px;line-height:1.4">
                    <?php echo $about->details; ?>

                </p>
                <?php endif; ?>
               
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row padding mt-4">
            <?php if($buy): ?>
            <div class="col-md-6  d-none d-md-block">
                <div class="col-sm-12">
                   <div class="icon-wrapper">
                    <i class="fa fa-search fa-2x" aria-hidden="true"></i>
                </div>
                    <h3 class="text-center"> <?php echo $buy->title; ?> </h3>
                    <p style="font-size:15px;line-height:1.4">
                        <?php echo $buy->details; ?>

                    </p>
                </div>
            </div>
            <?php endif; ?>
            <?php if($sell): ?>
            <div class="col-md-6  d-none d-md-block">
                <div class="col-sm-12">
                   <div class="icon-wrapper">
                    <i class="fa fa-search fa-2x" aria-hidden="true"></i>
                </div>
                    <h3 class="text-center">                                 <?php echo $sell->title; ?>

                     </h3>
                    <p style="font-size:15px;line-height:1.4">
                                                        <?php echo $sell->details; ?>


                    </p>
                </div>
            </div>
            <?php endif; ?>
            <div class="clearfix"></div>
            <hr class="bottom-hr" />
        </div>
    </div>
</div>


</div>
<!-- end about  --->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.front', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>