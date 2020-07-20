<?php $__env->startSection('styles'); ?>
<style type="text/css">
	

</style>


<?php $__env->stopSection(); ?>

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
									<?php echo e($langg->lang336); ?>

									<a class="mybtn1" href="<?php echo e(route('user-wwt-index')); ?>"> <i class="fas fa-arrow-left"></i> <?php echo e($langg->lang337); ?></a>
								</h4>
							</div>

                                                <div class="gocover" style="background: url(<?php echo e(asset('assets/images/'.$gs->loader)); ?>) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                         <form id="userform" class="form-horizontal" action="<?php echo e(route('user-wwt-store')); ?>" method="POST" enctype="multipart/form-data">

                             <?php echo e(csrf_field()); ?>

 

                            <div class="item form-group">
                                <label class="control-label col-sm-4" for="name"><b><?php echo e($langg->lang498); ?> : <?php echo e(App\Models\Product::vendorConvertPrice(Auth::user()->affilate_income)); ?></b></label>
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
                                    xhttp.open("GET", "<?php echo e(route('user-get-additional')); ?>?id=" + id, true);
                                    xhttp.send();
                                }
                            </script>
                            <div class="item form-group">
                                <label class="control-label col-sm-12" for="name"><?php echo e($langg->lang487); ?> *

                                    </label>
                                <div class="col-sm-12">
                                    <input name="amount" placeholder="<?php echo e($langg->lang487); ?>" max="<?php echo e(round(Auth::user()->affilate_income/(1+($gs->withdraw_charge/100)))); ?>" class="form-control" type="number" value="<?php echo e(old('amount')); ?>" required>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-sm-12" for="name">Withdraw Charge <?php echo e($gs->withdraw_charge); ?>% 
                                <br>
                                You can withdraw up to <?php echo e(round(Auth::user()->affilate_income/(1+($gs->withdraw_charge/100)))); ?>

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
</section>
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
        }

    })

</script>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.front', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>