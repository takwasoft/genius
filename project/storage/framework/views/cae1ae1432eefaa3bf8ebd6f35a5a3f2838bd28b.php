<?php $__env->startSection('content'); ?>
 <div class="content-area">
 <div class="container-fluid">
            <div class="card card-primary">
                <form action="<?php echo e(URL::to('/')); ?>/<?php echo e($action); ?>" method="post" enctype="multipart/form-data">
                  <?php echo e(csrf_field()); ?>

                    <div class="card-header">
                        Add <?php echo e($name); ?>

                    </div>
                    <div class="card-body">
                       <?php $__currentLoopData = $fields; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if($field["type"]=="text"): ?>
                        <div class="form-group">
                                <label for="exampleInputEmail1"><?php echo e($field['label']); ?></label>
                                <input <?php if($field["required"]): ?>
                                required
                                <?php endif; ?>
                                name="<?php echo e($field['name']); ?>" type="text" class="form-control" 
                                    >
                            </div>
                            <?php elseif($field["type"]=="date"): ?>
                        <div class="form-group">
                                <label for="exampleInputEmail1"><?php echo e($field['label']); ?></label>
                                <input <?php if($field["required"]): ?>
                                    required
                                    <?php endif; ?>
                                    name="<?php echo e($field['name']); ?>" type="date" class="form-control">
                            </div>
                             <?php elseif($field["type"]=="number"): ?>
                        <div class="form-group">
                                <label for="exampleInputEmail1"><?php echo e($field['label']); ?></label>
                                <input <?php if($field["required"]): ?>
                                    required
                                    <?php endif; ?>
                                    name="<?php echo e($field['name']); ?>" type="number" class="form-control">
                            </div>
                        <?php elseif($field["type"]=="textarea"): ?>
                        <div class="form-group">
                                <label for="exampleInputEmail1"><?php echo e($field['label']); ?></label>
                                <textarea name="<?php echo e($field['name']); ?>" class="form-control"></textarea>
                                
                            </div>
                        <?php elseif($field["type"]=="select"): ?>
                        <div class="form-group">
                                <label for="exampleInputEmail1"><?php echo e($field['label']); ?></label>
                                <select <?php if($field["required"]): ?>
                                required
                                <?php endif; ?>
                                 name="<?php echo e($field['name']); ?>"  class="form-control" >
                                            <?php $__currentLoopData = $field["options"]; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $option): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($option['id']); ?>">
                                                    <?php echo e($option[$field["optionlabel"]]); ?>

                                                </option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                                
                            </div>
                        <?php elseif($field["type"]=="radio"): ?>
                        <div class="form-group">
                                <label for="exampleInputEmail1"><?php echo e($field['label']); ?></label>
                                <input <?php if($field["required"]): ?>
required
<?php endif; ?>
 name="<?php echo e($field['name']); ?>" type="text" class="form-control" 
                                    >
                            </div>
                        <?php elseif($field["type"]=="checkbox"): ?>
                        <div class="form-group">
                                <label for="exampleInputEmail1"><?php echo e($field['label']); ?></label>
                                <input <?php if($field["required"]): ?>
required
<?php endif; ?>
 name="<?php echo e($field['name']); ?>" type="checkbox" 
                                    >
                            </div>
                            <?php elseif($field["type"]=="file"): ?>
                        <div class="form-group">
                                <label for="exampleInputEmail1"><?php echo e($field['label']); ?></label>
                                <input <?php if($field["required"]): ?>
required
<?php endif; ?>
 name="<?php echo e($field['name']); ?>" type="file" class="form-control-file" 
                                    >
                            </div>
                        <?php endif; ?>

                            
                       <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary">Add</button>
                    </div>
                </form>
            </div>
        </div><!-- /.container-fluid -->
 </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>