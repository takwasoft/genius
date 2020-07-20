<?php $__env->startSection('content'); ?>


<section class="user-dashbord">
    <div class="container">
      <div class="row">
        <?php echo $__env->make('includes.user-dashboard-sidebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
        <div class="col-lg-8">
					<div class="user-profile-details">
						<div class="order-history">
							<div class="header-area">
								<h4 class="title" >
									<?php echo e($langg->lang329); ?>

									<a class="mybtn1" href="<?php echo e(route('user-wwt-create')); ?>"> <i class="fas fa-plus"></i> <?php echo e($langg->lang330); ?></a>
								</h4>
							</div>
							<div class="mr-table allproduct mt-4">
								<?php echo $__env->make('includes.admin.form-success', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?> 
								<form method="post" action="<?php echo e(route('filter-af-withdraw')); ?>"> 
								 <?php echo e(csrf_field()); ?>  
									<center>
									<b>From</b>
									<input
									<?php if(isset($from)): ?>
										value="<?php echo e($from); ?>"
									<?php endif; ?>
									 name="start" type="date" >
									<b>To</b>
									<input
									<?php if(isset($to)): ?>
										value="<?php echo e($to); ?>"
									<?php endif; ?>
									 name="end" type="date" >
									</center>
									<br>
									<center>
									<b>Method</b>
											<select name="method" style="width:30%">
											<option value="0">Select</option>
												<?php $__currentLoopData = $gateways; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $gateway): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
														<option 
														<?php if(isset($method)): ?>
														<?php if($gateway->id==$method): ?>
															selected
														<?php endif; ?>
														<?php endif; ?>
														value="<?php echo e($gateway->id); ?>"><?php echo e($gateway->title); ?></option>
												<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
											</select>
									<b>Status</b>
											<select name="status" style="width:30%">
														<option value="0">Select</option>
														<option
														<?php if($status=="completed"): ?>
															selected
														<?php endif; ?>
														 value="completed">Completed</option>
														<option
														<?php if($status=="rejected"): ?>
															selected
														<?php endif; ?>
														 value="rejected">Rejected</option>
												
											</select>
											<br>
											<button class="add-btn">Filter Withdraw</button>
											</center>
											</form>
											<br>
									<div class="table-responsiv">
											<table id="geniustable" class="table table-hover dt-responsive" cellspacing="0" width="100%">
												<thead>
													<tr>
													<th><?php echo e($langg->lang474); ?></th>
													<th><?php echo e($langg->lang475); ?></th>
													<th>Details</th>
													<th><?php echo e($langg->lang477); ?></th>
													<th><?php echo e($langg->lang478); ?></th>
													</tr>
												</thead>

											<tbody>
						<?php $__currentLoopData = $withdraws; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $withdraw): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<tr>
								<td><?php echo e(date('d-M-Y',strtotime($withdraw->created_at))); ?></td>
								<td><?php echo e($withdraw->paymentGateway->title); ?></td>
							  <td>
								<ul class="list-group">
								<?php $__currentLoopData = $withdraw->additionalFields; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
											<li class="list-group-item">
											<span>
												<?php if($field->additionalField): ?>
												<?php echo e($field->additionalField->title); ?>

												<?php endif; ?></span>
											<span><?php echo e($field->value); ?></span>
										</li>
										<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
								</ul>
							  </td>
								<td><?php echo e($sign->sign); ?><?php echo e(round($withdraw->amount * $sign->value , 2)); ?></td>
								<td><?php echo e(ucfirst($withdraw->status)); ?></td>
							</tr>
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
											</tbody>
												
											</table>
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