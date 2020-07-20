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
                                    <select onchange="getAdditional(this.value)" class="form-control" name="methods" id="withmethod" required>
                                        <option value="">Select Payment Method</option>
                                            <?php $__currentLoopData = $gateways; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $gateway): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($gateway->id); ?>"><?php echo e($gateway->title); ?></option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                </div>
                            </div>
                            <div id="ad-field">

                            </div>
                            <script>
                                getAdditional = (id) => {
                                    var xhttp = new XMLHttpRequest();
                                    xhttp.onreadystatechange = function() {
                                        if (this.readyState == 4 && this.status == 200) {
                                            document.getElementById("ad-field").innerHTML = this.responseText;
                                        }
                                    };
                                    xhttp.open("GET", "<?php echo e(route('vendor-get-additional')); ?>?id=" + id, true);
                                    xhttp.send();
                                }
                            </script>
                            <div class="item form-group">
                                <label class="control-label col-sm-12" for="name"><?php echo e($langg->lang487); ?> *

                                    </label>
                                <div class="col-sm-12">
                                    <input name="amount" placeholder="<?php echo e($langg->lang487); ?>" max="<?php echo e(round(Auth::user()->current_balance/(1+($gs->withdraw_charge/100)))); ?>" class="form-control" type="number" value="<?php echo e(old('amount')); ?>" required>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-sm-12" for="name">Withdraw Charge <?php echo e($gs->withdraw_charge); ?>% 
                                <br>
                                You can withdraw up to <?php echo e(round(Auth::user()->current_balance/(1+($gs->withdraw_charge/100)))); ?>

                                    </label>
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

<?php $__env->stopSection(); ?> <?php $__env->startSection('scripts'); ?>
<script type="text/javascript">
    $("#withmethod").change(function() {
        var method = $(this).val();
        if (method == "Bank") {

            $("#bank").show();
            $("#bank").find('input, select').attr('required', true);

            $("#paypal").hide();
            $("#paypal").find('input').attr('required', false);

        }
        if (method != "Bank") {
            $("#bank").hide();
            $("#bank").find('input, select').attr('required', false);

            $("#paypal").show();
            $("#paypal").find('input').attr('required', true);
        }
        if (method == "") {
            $("#bank").hide();
            $("#paypal").hide();
            $("#bank").find('input, select').attr('required', false);
            $("#paypal").find('input').attr('required', false);
        }

    })
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.vendor', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>