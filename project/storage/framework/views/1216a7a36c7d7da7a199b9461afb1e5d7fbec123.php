<?php $__env->startSection('content'); ?>


<section class="user-dashbord">
    <div class="container">
      <div class="row">
        <?php echo $__env->make('includes.user-dashboard-sidebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
        <div class="col-lg-8">
					<div class="user-profile-details">
						<div class="order-history">
							<div class="header-area">
                                <?php if( $conv->order_number != null ): ?>
                                <h4 class="title">
                                    <?php echo e($langg->lang396); ?> <?php echo e($conv->order_number); ?> 
                                </h4>
                                <?php endif; ?>
								<h4 class="title">
									<?php echo e($langg->lang397); ?> <?php echo e($conv->subject); ?> <a  class="mybtn1" href="<?php echo e(url()->previous()); ?>"> <i class="fas fa-arrow-left"></i> <?php echo e($langg->lang398); ?></a>
								</h4>
							</div>


<div class="support-ticket-wrapper ">
                <div class="panel panel-primary">
                      <div class="gocover" style="background: url(<?php echo e(asset('assets/images/'.$gs->loader)); ?>) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>                  
                    <div class="panel-body" id="messages">
                      <?php $__currentLoopData = $conv->messages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $message): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if($message->user_id != 0): ?>
                        <div class="single-reply-area user">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="reply-area">
                                        <div class="left">
                                            <p><?php echo e($message->message); ?></p>
                                        </div>
                                        <div class="right">
                                            <?php if($message->conversation->user->is_provider == 1): ?>
                                            <img class="img-circle" src="<?php echo e($message->conversation->user->photo != null ? $message->conversation->user->photo : asset('assets/images/noimage.png')); ?>" alt="">
                                            <?php else: ?> 

                                            <img class="img-circle" src="<?php echo e($message->conversation->user->photo != null ? asset('assets/images/users/'.$message->conversation->user->photo) : asset('assets/images/noimage.png')); ?>" alt="">

                                            <?php endif; ?>
                                            <p class="ticket-date"><?php echo e($message->conversation->user->name); ?></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <?php else: ?>
                        <div class="single-reply-area admin">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="reply-area">
                                        <div class="left">
                                            <img class="img-circle" src="<?php echo e(asset('assets/images/admin.jpg')); ?>" alt="">
                                            <p class="ticket-date"><?php echo e($langg->lang399); ?></p>
                                        </div>
                                        <div class="right">
                                            <p><?php echo e($message->message); ?></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <?php endif; ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    </div>
                    <div class="panel-footer">
                        <form id="messageform" data-href="<?php echo e(route('user-message-load',$conv->id)); ?>" action="<?php echo e(route('user-message-store')); ?>" method="POST">
                            <?php echo e(csrf_field()); ?>

                            <div class="form-group">
                                <input type="hidden" name="conversation_id" value="<?php echo e($conv->id); ?>">
                                <input type="hidden" name="user_id" value="<?php echo e($conv->user->id); ?>">
                                <textarea class="form-control" name="message" id="wrong-invoice" rows="5" style="resize: vertical;" required="" placeholder="<?php echo e($langg->lang400); ?>"></textarea>
                            </div>
                            <div class="form-group">
                                <button class="mybtn1">
                                    <?php echo e($langg->lang401); ?>

                                </button>
                            </div>
                        </form>
                    </div>
                </div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.front', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>