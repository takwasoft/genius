<?php $__env->startSection('content'); ?>

                        <div class="content-area">
                            <div class="mr-breadcrumb">
                                <div class="row">
                                    <div class="col-lg-12">
                                            <h4 class="heading"><?php echo e($langg->lang479); ?> <a class="add-btn" href="<?php echo e(url()->previous()); ?>"><i class="fas fa-arrow-left"></i> <?php echo e($langg->lang480); ?></a></h4>
                                            <ul class="links">
                                                <li>
                                                    <a href="<?php echo e(route('vendor-dashboard')); ?>"><?php echo e($langg->lang441); ?> </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;"><?php echo e($langg->lang472); ?> </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;"><?php echo e($langg->lang479); ?></a>
                                                </li>
                                            </ul>
                                    </div>
                                </div>
                            </div>


                            <div class="add-product-content">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="product-description">
                                            <div class="body-area">

                                          <div class="gocover" style="background: url(<?php echo e(asset('assets/images/'.$gs->admin_loader)); ?>) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>

                                                    <?php echo $__env->make('includes.admin.form-both', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?> 
                         <form id="geniusform" class="form-horizontal" action="<?php echo e(route('vendor-wt-store')); ?>" method="POST" enctype="multipart/form-data">

                                                    <?php echo e(csrf_field()); ?>



                                <div class="item form-group">
                                    <label class="control-label col-sm-4" for="name"><b><?php echo e($langg->lang498); ?> : <?php echo e(App\Models\Product::vendorConvertPrice(Auth::user()->current_balance)); ?></b></label>
                                </div>

                                <div class="item form-group">
                                    <label class="control-label col-sm-4" for="name"><?php echo e($langg->lang481); ?> *

                                    </label>
                                    <div class="col-sm-12">
                                        <select class="form-control" name="methods" id="withmethod" required>
                                            <option value=""><?php echo e($langg->lang482); ?></option>
                                            <option value="Paypal"><?php echo e($langg->lang483); ?></option>
                                            <option value="Skrill"><?php echo e($langg->lang484); ?></option>
                                            <option value="Payoneer"><?php echo e($langg->lang485); ?></option>
                                            <option value="Bank"><?php echo e($langg->lang486); ?></option>
                                        </select>
                                    </div>
                                </div>

                                <div class="item form-group">
                                    <label class="control-label col-sm-12" for="name"><?php echo e($langg->lang487); ?> *

                                    </label>
                                    <div class="col-sm-12">
                                        <input name="amount" placeholder="<?php echo e($langg->lang487); ?>" class="form-control"  type="text" value="<?php echo e(old('amount')); ?>" required>
                                    </div>
                                </div>

                                <div id="paypal" style="display: none;">

                                    <div class="item form-group">
                                        <label class="control-label col-sm-12" for="name"><?php echo e($langg->lang488); ?>l *

                                        </label>
                                        <div class="col-sm-12">
                                            <input name="acc_email" placeholder="<?php echo e($langg->lang488); ?>" class="form-control" value="<?php echo e(old('email')); ?>" type="email">
                                        </div>
                                    </div>

                                </div>
                                <div id="bank" style="display: none;">

                                    <div class="item form-group">
                                        <label class="control-label col-sm-12" for="name"><?php echo e($langg->lang489); ?> *

                                        </label>
                                        <div class="col-sm-12">
                                            <input name="iban" value="<?php echo e(old('iban')); ?>" placeholder="<?php echo e($langg->lang489); ?>" class="form-control" type="text">
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-sm-12" for="name"><?php echo e($langg->lang490); ?> *

                                        </label>
                                        <div class="col-sm-12">
                                            <input name="acc_name" value="<?php echo e(old('accname')); ?>" placeholder="<?php echo e($langg->lang490); ?>" class="form-control" type="text">
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-sm-12" for="name"><?php echo e($langg->lang491); ?> *

                                        </label>
                                        <div class="col-sm-12">
                                            <input name="address" value="<?php echo e(old('address')); ?>" placeholder="<?php echo e($langg->lang491); ?>" class="form-control" type="text">
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-sm-12" for="name"><?php echo e($langg->lang492); ?> *

                                        </label>
                                        <div class="col-sm-12">
                                            <input name="swift" value="<?php echo e(old('swift')); ?>" placeholder="<?php echo e($langg->lang492); ?>" class="form-control" type="text">
                                        </div>
                                    </div>

                                </div>

                                <div class="item form-group">
                                    <label class="control-label col-sm-12" for="name"><?php echo e($langg->lang493); ?>) *

                                    </label>
                                    <div class="col-sm-12">
                                        <textarea class="form-control" name="reference" rows="6" placeholder="<?php echo e($langg->lang493); ?>"><?php echo e(old('reference')); ?></textarea>
                                    </div>
                                </div>

                                <div id="resp" class="col-md-12">

                                                                            <span class="help-block">
                                <strong><?php echo e($langg->lang494); ?> $<?php echo e($gs->withdraw_fee); ?> <?php echo e($langg->lang495); ?> <?php echo e($gs->withdraw_charge); ?>% <?php echo e($langg->lang496); ?></strong>
                            </span>
                                                                    </div>

                                            <hr>
                                            <div class="add-product-footer">
                                                <button name="addProduct_btn" type="submit" class="mybtn1"><?php echo e($langg->lang497); ?></button>
                                            </div>
                                        </form>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
<script type="text/javascript">

    $("#withmethod").change(function(){
        var method = $(this).val();
        if(method == "Bank"){

            $("#bank").show();
            $("#bank").find('input, select').attr('required',true);

            $("#paypal").hide();
            $("#paypal").find('input').attr('required',false);

        }
        if(method != "Bank"){
            $("#bank").hide();
            $("#bank").find('input, select').attr('required',false);

            $("#paypal").show();
            $("#paypal").find('input').attr('required',true);
        }
        if(method == ""){
            $("#bank").hide();
            $("#paypal").hide();
            $("#bank").find('input, select').attr('required',false);
             $("#paypal").find('input').attr('required',false);           
        }

    })

</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.vendor', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>