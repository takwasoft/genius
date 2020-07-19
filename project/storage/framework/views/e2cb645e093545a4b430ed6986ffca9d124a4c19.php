 

<?php $__env->startSection('content'); ?>

					<div class="content-area">
						<div class="mr-breadcrumb">
							<div class="row">
								<div class="col-lg-12">
										<h4 class="heading"><?php echo e($langg->lang472); ?></h4>
										<ul class="links">
											<li>
												<a href="<?php echo e(route('vendor-dashboard')); ?>"><?php echo e($langg->lang441); ?> </a>
											</li>
											<li>
												<a href="<?php echo e(route('vendor-wt-index')); ?>"><?php echo e($langg->lang472); ?></a>
											</li>
										</ul>
								</div>
							</div>
						</div>
						<div class="product-area">
							<div class="row">
								<div class="col-lg-12">
									<div class="mr-table allproduct">
										<?php echo $__env->make('includes.admin.form-success', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?> 
									<form method="post" action="<?php echo e(route('admin-statement-filter')); ?>">
									 <?php echo e(csrf_field()); ?>  
										<center>
										<b>From</b>
										<input
										<?php if(isset($start)): ?>
											value="<?php echo e($start); ?>"
										<?php endif; ?>
										 name="start" type="date" >
										<b>To</b>
										<input
										<?php if(isset($end)): ?>
											value="<?php echo e($end); ?>"
										<?php endif; ?>
										 name="end" type="date" >
										</center>
										<br>
										<center>
										
												<button class="add-btn">Filter Statement</button>
												</center>
												</form>
												<br>
												<table class="table">
													<tr>
														<th>
															Total Order
														</th>
														<th>
															Total Boosting
														</th>
														<th>
															Total Top Ad
														</th>
														<th>
															Total Subscription
														</th>
														<th>
															Total Collection
														</th>
														<th>
															Vendor Withdraw
														</th>
														<th>
															User Withdraw
														</th>
														<th>
															Total Admin Withdraw
														</th>
														<th>Total Paid</th>
													</tr>
													<tr>
													<td><?php echo e($ntransactions->where('type','=','Order Payment')->sum("amount")); ?>

															</td>
														<td><?php echo e($ntransactions->where('type','=','Product Boosting')->sum("amount")); ?>

													</td>
																<td><?php echo e($ntransactions->where('type','=','Product Top Ad')->sum("amount")); ?>

															</td>
															<td><?php echo e($ntransactions->where('type','=','subscription')->sum("amount")); ?>

															</td>
																<td><?php echo e($ntransactions->where('collected','=','1')->sum("amount")); ?>

															</td>
															<td><?php echo e($ntransactions->where('type','=','Vendor Withdraw')->sum("amount")); ?>

															</td>
															<td><?php echo e($ntransactions->where('type','=','User Withdraw')->sum("amount")); ?>

															</td>
															<td><?php echo e($ntransactions->where('type','=','Admin Withdraw')->sum("amount")); ?>

															</td>
															<td><?php echo e($ntransactions->where('collected','=','0')->sum("amount")); ?>

															</td>
															
													</tr>
												</table>
												<br>
										<div class="table-responsiv">
												<table id="geniustable" class="table table-hover dt-responsive" cellspacing="0" width="100%">
													<thead>
														<tr>
						                                <th>Date</th>
						                                <th>Collected Amount</th>
						                                <th>Paid Amount</th>
						                                <th>Available</th>
						                                
														</tr>
													</thead>

												<tbody>
												<?php ($av=0); ?>
														<?php $__currentLoopData = $transactions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $transaction => $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> 
														<?php ($av+=$data->where('collected','=',1)->sum("amount")-$data->where('collected','=',0)->sum("amount")); ?>
														<tr>
															 <td><?php echo e($transaction); ?></td>
															<td><?php echo e($data->where('collected','=',1)->sum("amount")); ?>

															</td>
															<td><?php echo e($data->where('collected','=',0)->sum("amount")); ?>

															</td>
															<td><?php echo e($av); ?>

															</td>
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

<?php $__env->stopSection(); ?>    



<?php $__env->startSection('scripts'); ?>




    <script type="text/javascript">

		var table = $('#geniustable').DataTable({
			ordering:false
		});

      	
									
    </script>


    
<?php $__env->stopSection(); ?>   


<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>