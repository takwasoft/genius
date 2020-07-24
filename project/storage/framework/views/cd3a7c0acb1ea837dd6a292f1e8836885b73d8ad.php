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
                        <a href="<?php echo e(route('front.faq')); ?>">
              <?php echo e($langg->lang19); ?>

            </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Area End -->



<!-- faq Area Start -->



<div class="container about-sect faq-sect">

    <div class="row py-3">
        <div class="col-md-3">
            <div class="card">
                <div class="card-header">
                    <h6>Pages</h6>
                </div>
                <div class="card-body">
                    <ul class="nav nav-pills flex-column aside-map">
                        <li class="nav-item"><a class="nav-link" href="text.html">About Us</a></li>
                        <li class="nav-item"><a class="nav-link" href="<?php echo e(route('front.contact')); ?>">Contact page</a></li>
                        <li class="nav-item"><a class="nav-link" href="<?php echo e(route('front.faq')); ?>">FAQ</a></li>
                    </ul>
                </div>
            </div>

            <div class="banner mt-4">
                <a href="#">
                    <img src="<?php echo e(asset('assets/images/brand/banner.jpg')); ?>" alt="sales 2014" class="img-responsive img-fluid">
                </a>
            </div>
        </div>
        <!-- /.col-md-3 -->

        <div class="col-md-9">
            <div class="card">
                <div class="card-body">
                    <h1 style="font-size:2.5rem;color:#333;">Frequently asked questions</h1>
                    <p class="lead" style="font-size:1.2rem">Are you curious about something? Do you have some kind of problem with our products?</p>
                    <p>Please feel free to contact us, our customer service center is working for you 24/7.

                        <form method="get" action="<?php echo e(route('front.faq')); ?>">

                            <div class="form-group input-group">
                                <input value="" name="search" type="text" class="form-control" placeholder="আপনি কি খুঁজছেন">
                                <div class="input-group-append">
                                    <input class="btn" type="submit" value="সার্চ" style="color:white;background:rgb(0, 152, 119);">
                                </div>
                            </div>
                        </form>
                    </p>

                    <hr>
                    <div class="accordion" id="accordionExample">

                        <?php $__currentLoopData = $faqs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $fq): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="card my-2">
                            <div class="card-header" id="headingTwo" style="padding: 0 1.25rem;background-color: #006b4d;color:white">
                                <h2 class="mb-0" style="font-size:2rem;">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapse<?php echo e($fq->id); ?>" aria-expanded="false" aria-controls="collapse<?php echo e($fq->id); ?>">
                                    <?php echo e($fq->title); ?>

                                </button>
                                </h2>
                            </div>
                            <div id="collapse<?php echo e($fq->id); ?>" class="collapse" aria-labelledby="heading<?php echo e($fq->id); ?>" data-parent="#accordionExample">
                                <div class="card-body">
                                    <?php echo $fq->details; ?>

                                </div>
                            </div>
                        </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    </div>
                    <!-- /.panel-group -->


                </div>
            </div>

        </div>
        <!-- col-9 end -->
    </div>



</div>
<!-- faq Area End-->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.front', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>