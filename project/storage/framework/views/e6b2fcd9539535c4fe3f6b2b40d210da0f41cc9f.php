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
                        <a href="<?php echo e(route('front.contact')); ?>">
                            <?php echo e($langg->lang20); ?>

                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Area End -->


    <!-- Contact Us Area Start -->
    <section class="contact-us">
        
         <div class="container contact-sect about-sect">

        <div class="row py-3">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header">
                        <h6>Pages</h6>
                    </div>
                    <div class="card-body">
                        <ul class="nav nav-pills flex-column aside-map">
                            <li class="nav-item"><a class="nav-link" href="text.html">Text page</a></li>
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
                        <?php echo $ps->contact_title; ?>

                        <?php echo $ps->contact_text; ?>

                        

                        <hr>

                        <div class="row pt-3">
                            <div class="col-sm-4">
                                <h3><i class="fa fa-map-marker"></i> Address</h3>
                                <p><?php echo $ps->street; ?>

                                </p>
                            </div>
                            <!-- /.col-sm-4 -->
                            <div class="col-sm-4">
                                <h3><i class="fa fa-phone"></i> Call center</h3>
                                
                                <p><strong><?php echo e($ps->phone); ?></strong>
                                </p>
                            </div>
                            <!-- /.col-sm-4 -->
                            <div class="col-sm-4">
                                <h3><i class="fa fa-envelope"></i> Electronic support</h3>
                                <p class="text-muted">Please feel free to write an email to us or to use our electronic ticketing system.</p>
                                <ul>
                                    <li><strong><a href="mailto:"><?php echo e($ps->email); ?></a></strong>
                                    </li> 
                                    <li><strong><a href="<?php echo e(route('user-message-index')); ?>">Ticketio</a></strong> - our ticketing support platform</li>
                                </ul>
                            </div>
                            <!-- /.col-sm-4 -->
                        </div>
                        <!-- /.row -->

                        <hr>

                        <div id="map">

                        </div>

                        <hr>
                        <h2 style="font-size:2rem">Contact form</h2>

                        <form>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="firstname">Firstname</label>
                                        <input type="text" class="form-control" id="firstname">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="lastname">Lastname</label>
                                        <input type="text" class="form-control" id="lastname">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="text" class="form-control" id="email">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="subject">Subject</label>
                                        <input type="text" class="form-control" id="subject">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="message">Message</label>
                                        <textarea id="message" class="form-control"></textarea>
                                    </div>
                                </div>

                                <div class="col-sm-12 text-center">
                                    <button type="submit" class="btn btn-my"><i class="far fa-envelope"></i> Send message</button>

                                </div>
                            </div>
                            <!-- /.row -->
                        </form>
                    </div>
                </div>

            </div>
            <!-- col-9 end -->
        </div>
    </div>
    </section>
    <!-- Contact Us Area End-->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.front', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>