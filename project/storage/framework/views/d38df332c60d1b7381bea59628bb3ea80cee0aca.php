<?php if($payment == 'cod'): ?> 
                                <input type="hidden" name="method" value="Cash On Delivery">
<?php else: ?>
 
 <?php $__currentLoopData = $verificationFields; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<div class="item form-group">
                                <label class="control-label col-sm-12" for="name"><?php echo e($field->title); ?>

                                <br>
                                <?php echo e($field->description); ?>

                                <?php echo e($field->required==1?'*':''); ?>


                                    </label>
                                <div class="col-sm-12">
                                    <input 

                                    <?php if($field->required==1): ?>
												required
												<?php endif; ?>
                        value=" "
                                     name="verification[<?php echo e($field->id); ?>]"  class="vf form-control" type="text"  <?php echo e($field->required==1?'required':''); ?>>
                                </div>
                            </div>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php ($extraTotal=0); ?>
 <?php $__currentLoopData = $extraCharges; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
 <?php if($total>=$field->from && $total<=$field->to): ?>
<div class="item form-group">
                                <label class="control-label col-sm-12" for="name"><?php echo e($field->title); ?> 
<br>
                                <?php echo e($field->description); ?>

                                    </label>
                                <div class="col-sm-12">
                                    <input 
                                   disabled
                                   value="<?php echo e($field->fixed==1?$field->charge:$field->charge*$total*0.01); ?>"
                                     name="extra[<?php echo e($field->id); ?>]"  class="form-control" type="text"  required>
                                </div>
                            </div>
                            <?php ($extraTotal+=$field->fixed==1?$field->charge:$field->charge*$total*0.01); ?>
                            
                            
                            
                            <?php endif; ?>

<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<script>
                              if(document.getElementById("extraCharge")){
                                document.getElementById("extraCharge").value="<?php echo e($extraTotal); ?>";
                                document.getElementById("extraField").innerHTML="<?php echo e($subtitle); ?> ৳<?php echo e($extraTotal); ?> "
                              }
                            </script>
<?php endif; ?>


