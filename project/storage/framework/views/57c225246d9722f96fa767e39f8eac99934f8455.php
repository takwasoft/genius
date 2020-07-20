<?php $__currentLoopData = $fields; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<div class="item form-group">
                                <label class="control-label col-sm-12" for="name"><?php echo e($field->title); ?> <?php echo e($field->required==1?'*':''); ?>


                                    </label>
                                <div class="col-sm-12">
                                    <input 
                                    <?php if($field->required==1): ?>
												required
												<?php endif; ?>
                                     name="additional[<?php echo e($field->id); ?>]"  class="form-control" type="text"  >
                                </div>
                            </div>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>