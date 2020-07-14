		<a class="clear"><?php echo e(__('Product(s) in Low Quantity.')); ?></a>
		<?php if(count($datas) > 0): ?>
		<a id="product-notf-clear" data-href="<?php echo e(route('product-notf-clear')); ?>" class="clear" href="javascript:;">
			<?php echo e(__('Clear All')); ?>

		</a>
		<ul>
		<?php $__currentLoopData = $datas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<li>
				<a href="<?php echo e(route('admin-prod-edit',$data->product->id)); ?>"> <i class="icofont-cart"></i> <?php echo e(strlen($data->product->name) > 30 ? substr($data->product->name,0,30) : $data->product->name); ?></a>
				<a class="clear"><?php echo e(__('Stock')); ?> : <?php echo e($data->product->stock); ?></a>
			</li>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

		</ul>

		<?php else: ?> 

		<a class="clear" href="javascript:;">
			<?php echo e(__('No New Notifications.')); ?>

		</a>

		<?php endif; ?>