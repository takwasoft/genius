<?php $__env->startSection('content'); ?>
<!-- User Dashbord Area Start -->
<section class="user-dashbord">
    <div class="container">
        <div class="row">
            <?php echo $__env->make('includes.user-dashboard-sidebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
            <div class="col-lg-8">
                <div class="user-profile-details">
                    <div class="order-details">

                        <div class="process-steps-area">
                            <?php echo $__env->make('includes.order-process', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

                        </div>


                        <div class="header-area">
                            <h4 class="title">
                                <?php echo e($langg->lang284); ?>

                            </h4>
                        </div>
                        <div class="view-order-page">
                            <h3 class="order-code"><?php echo e($langg->lang285); ?> <?php echo e($order->order_number); ?> [<?php echo e($order->status); ?>]
                            </h3>
                            <div class="print-order text-right">
                                <a href="<?php echo e(route('user-order-print',$order->id)); ?>" target="_blank"
                                    class="print-order-btn">
                                    <i class="fa fa-print"></i> <?php echo e($langg->lang286); ?>

                                </a>
                            </div>
                            <p class="order-date"><?php echo e($langg->lang301); ?> <?php echo e(date('d-M-Y',strtotime($order->created_at))); ?>

                            </p>

                            <?php if($order->dp == 1): ?>

                            <div class="billing-add-area">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h5><?php echo e($langg->lang287); ?></h5>
                                        <address>
                                            <?php echo e($langg->lang288); ?> <?php echo e($order->customer_name); ?><br>
                                            <?php echo e($langg->lang289); ?> <?php echo e($order->customer_email); ?><br>
                                            <?php echo e($langg->lang290); ?> <?php echo e($order->customer_phone); ?><br>
                                            <?php echo e($langg->lang291); ?> <?php echo e($order->customer_address); ?><br>
                                            <?php echo e($order->customer_city); ?>-<?php echo e($order->customer_zip); ?>

                                        </address>
                                    </div>
                                    <div class="col-md-6">
                                        <h5><?php echo e($langg->lang292); ?></h5>

                                        <p><?php echo e($langg->lang798); ?>:
                                             <?php echo $order->payment_status == 'Pending' ? "<span class='badge badge-danger'>". $langg->lang799 ."</span>":"<span class='badge badge-success'>". $langg->lang800 ."</span>"; ?>

                                        </p>

                                        <p><?php echo e($langg->lang293); ?>

                                            <?php echo e($order->currency_sign); ?><?php echo e(round($order->pay_amount * $order->currency_value , 2)); ?>

                                        </p>
                                        <p><?php echo e($langg->lang294); ?> <?php echo e($order->method); ?></p>

                                        <?php if($order->method != "Cash On Delivery"): ?>
                                        <?php if($order->method=="Stripe"): ?>
                                        <?php echo e($order->method); ?> <?php echo e($langg->lang295); ?> <p><?php echo e($order->charge_id); ?></p>
                                        <?php endif; ?>
                                        <?php echo e($order->method); ?> <?php echo e($langg->lang296); ?> <p id="ttn"><?php echo e($order->txnid); ?></p>
                                        <a id="tid" style="cursor: pointer;" class="mybtn2"><?php echo e($langg->lang297); ?></a> 

                                        <form id="tform">
                                            <input style="display: none; width: 100%;" type="text" id="tin" placeholder="<?php echo e($langg->lang299); ?>" required="" class="mb-3">
                                            <input type="hidden" id="oid" value="<?php echo e($order->id); ?>">

                                            <button style="display: none; padding: 5px 15px; height: auto; width: auto; line-height: unset;" id="tbtn" type="submit" class="mybtn1"><?php echo e($langg->lang300); ?></button>
                                                
                                                <a style="display: none; cursor: pointer;  padding: 5px 15px; height: auto; width: auto; line-height: unset;" id="tc"  class="mybtn1"><?php echo e($langg->lang298); ?></a>
                                                
                                                
                                        </form>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>

                            <?php else: ?>
                            <div class="shipping-add-area">
                                <div class="row">
                                    <div class="col-md-6">
                                        <?php if($order->shipping == "shipto"): ?>
                                        <h5><?php echo e($langg->lang302); ?></h5>
                                        <address>
                                            <?php echo e($langg->lang288); ?>

                                            <?php echo e($order->shipping_name == null ? $order->customer_name : $order->shipping_name); ?><br>
                                            <?php echo e($langg->lang289); ?>

                                            <?php echo e($order->shipping_email == null ? $order->customer_email : $order->shipping_email); ?><br>
                                            <?php echo e($langg->lang290); ?>

                                            <?php echo e($order->shipping_phone == null ? $order->customer_phone : $order->shipping_phone); ?><br>
                                            <?php echo e($langg->lang291); ?>

                                            <?php echo e($order->shipping_address == null ? $order->customer_address : $order->shipping_address); ?><br>
                                            <?php echo e($order->shipping_city == null ? $order->customer_city : $order->shipping_city); ?>-<?php echo e($order->shipping_zip == null ? $order->customer_zip : $order->shipping_zip); ?>

                                        </address>
                                        <?php else: ?>
                                        <h5><?php echo e($langg->lang303); ?></h5>
                                        <address>
                                            <?php echo e($langg->lang304); ?> <?php echo e($order->pickup_location); ?><br>
                                        </address>
                                        <?php endif; ?>

                                    </div>
                                    <div class="col-md-6">
                                        <h5><?php echo e($langg->lang305); ?></h5>
                                        <?php if($order->shipping == "shipto"): ?>
                                        <p><?php echo e($langg->lang306); ?></p>
                                        <?php else: ?>
                                        <p><?php echo e($langg->lang307); ?></p>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                            <div class="billing-add-area">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h5><?php echo e($langg->lang287); ?></h5>
                                        <address>
                                            <?php echo e($langg->lang288); ?> <?php echo e($order->customer_name); ?><br>
                                            <?php echo e($langg->lang289); ?> <?php echo e($order->customer_email); ?><br>
                                            <?php echo e($langg->lang290); ?> <?php echo e($order->customer_phone); ?><br>
                                            <?php echo e($langg->lang291); ?> <?php echo e($order->customer_address); ?><br>
                                            <?php echo e($order->customer_city); ?>-<?php echo e($order->customer_zip); ?>

                                        </address>
                                    </div>
                                    <div class="col-md-6">
                                        <h5><?php echo e($langg->lang292); ?></h5>

                                        <p><?php echo e($langg->lang798); ?>

                                             <?php echo $order->payment_status == 'Pending' ? "<span class='badge badge-danger'>". $langg->lang799 ."</span>":"<span class='badge badge-success'>". $langg->lang800 ."</span>"; ?>

                                        </p>



                                        <p><?php echo e($langg->lang293); ?>

                                            <?php echo e($order->currency_sign); ?><?php echo e(round($order->pay_amount * $order->currency_value , 2)); ?>

                                        </p>
                                        <p><?php echo e($langg->lang294); ?> <?php echo e($order->method); ?></p>

                                        <?php if($order->method != "Cash On Delivery"): ?>
                                        <?php if($order->method=="Stripe"): ?>
                                        <?php echo e($order->method); ?> <?php echo e($langg->lang295); ?> <p><?php echo e($order->charge_id); ?></p>
                                        <?php endif; ?>
                                        <?php echo e($order->method); ?> <?php echo e($langg->lang296); ?> <p id="ttn"> <?php echo e($order->txnid); ?></p>

                                        <a id="tid" style="cursor: pointer;" class="mybtn2"><?php echo e($langg->lang297); ?></a> 

                                        <form id="tform">
                                            <input style="display: none; width: 100%;" type="text" id="tin" placeholder="<?php echo e($langg->lang299); ?>" required="" class="mb-3">
                                            <input type="hidden" id="oid" value="<?php echo e($order->id); ?>">

                                            <button style="display: none; padding: 5px 15px; height: auto; width: auto; line-height: unset;" id="tbtn" type="submit" class="mybtn1"><?php echo e($langg->lang300); ?></button>
                                                
                                                <a style="display: none; cursor: pointer;  padding: 5px 15px; height: auto; width: auto; line-height: unset;" id="tc"  class="mybtn1"><?php echo e($langg->lang298); ?></a>
                                                
                                                
                                        </form>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                            <?php endif; ?>
                            <br>




                            <div class="table-responsive">
                                <h5><?php echo e($langg->lang308); ?></h5>
                                <table class="table table-bordered veiw-details-table">
                                    <thead>
                                        <tr>
                                            <th width="5%"><?php echo e($langg->lang309); ?></th>
                                            <th width="35%"><?php echo e($langg->lang310); ?></th>
                                            <th width="20%"><?php echo e($langg->lang539); ?></th>
                                            <th><?php echo e($langg->lang314); ?></th>
                                            <th><?php echo e($langg->lang315); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $__currentLoopData = $cart->items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e($product['item']['id']); ?></td>
                                            <td>
                                                <input type="hidden" value="<?php echo e($product['license']); ?>">

                                                <?php if($product['item']['user_id'] != 0): ?>
                                                <?php
                                                $user = App\Models\User::find($product['item']['user_id']);
                                                ?>
                                                <?php if(isset($user)): ?>
                                                <a target="_blank"
                                                    href="<?php echo e(route('front.product', $product['item']['slug'])); ?>"><?php echo e(strlen($product['item']['name']) > 30 ? substr($product['item']['name'],0,30).'...' : $product['item']['name']); ?></a>
                                                <?php else: ?>
                                                <a target="_blank"
                                                    href="<?php echo e(route('front.product', $product['item']['slug'])); ?>">
                                                    <?php echo e(strlen($product['item']['name']) > 30 ? substr($product['item']['name'],0,30).'...' : $product['item']['name']); ?>

                                                </a>
                                                <?php endif; ?>
                                                <?php else: ?>

                                                <a target="_blank"
                                                    href="<?php echo e(route('front.product', $product['item']['slug'])); ?>">
                                                    <?php echo e(strlen($product['item']['name']) > 30 ? substr($product['item']['name'],0,30).'...' : $product['item']['name']); ?>

                                                </a>

                                                <?php endif; ?>
                                                <?php if($product['item']['type'] != 'Physical'): ?>
                                                <?php if($order->payment_status == 'Completed'): ?>
                                                <?php if($product['item']['file'] != null): ?>
                                                <a href="<?php echo e(route('user-order-download',['slug' => $order->order_number , 'id' => $product['item']['id']])); ?>"
                                                    class="btn btn-sm btn-primary">
                                                    <i class="fa fa-download"></i> <?php echo e($langg->lang316); ?>

                                                </a>
                                                <?php else: ?>
                                                <a target="_blank" href="<?php echo e($product['item']['link']); ?>"
                                                    class="btn btn-sm btn-primary">
                                                    <i class="fa fa-download"></i> <?php echo e($langg->lang316); ?>

                                                </a>
                                                <?php endif; ?>
                                                <?php if($product['license'] != ''): ?>
                                                <a href="javascript:;" data-toggle="modal" data-target="#confirm-delete"
                                                    class="btn btn-sm btn-info product-btn" id="license"><i
                                                        class="fa fa-eye"></i> <?php echo e($langg->lang317); ?></a>
                                                <?php endif; ?>
                                                <?php endif; ?>
                                                <?php endif; ?>
                                            </td>
                                            <td>
                                                <b><?php echo e($langg->lang311); ?></b>: <?php echo e($product['qty']); ?> <br>
                                                <?php if(!empty($product['size'])): ?>
                                                <b><?php echo e($langg->lang312); ?></b>: <?php echo e($product['item']['measure']); ?><?php echo e($product['size']); ?> <br>
                                                <?php endif; ?>
                                                <?php if(!empty($product['color'])): ?>
                                                <div class="d-flex mt-2">
                                                <b><?php echo e($langg->lang313); ?></b>:  <span id="color-bar" style="border: 10px solid <?php echo e($product['color'] == "" ? "white" : '#'.$product['color']); ?>;"></span>
                                                </div>
                                                <?php endif; ?>

                                                    <?php if(!empty($product['keys'])): ?>

                                                    <?php $__currentLoopData = array_combine(explode(',', $product['keys']), explode(',', $product['values'])); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                                        <b><?php echo e(ucwords(str_replace('_', ' ', $key))); ?> : </b> <?php echo e($value); ?> <br>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                                    <?php endif; ?>

                                                  </td>
                                            <td><?php echo e($order->currency_sign); ?><?php echo e(round($product['item']['price'] * $order->currency_value,2)); ?>

                                            </td>
                                            <td><?php echo e($order->currency_sign); ?><?php echo e(round($product['price'] * $order->currency_value,2)); ?>

                                            </td>

                                        </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tbody>
                                </table>

                                <div class="edit-account-info-div">
                                    <div class="form-group">
                                        <a class="back-btn" href="<?php echo e(route('user-orders')); ?>"><?php echo e($langg->lang318); ?></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header d-block text-center">
                <h4 class="modal-title d-inline-block"><?php echo e($langg->lang319); ?></h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                <p class="text-center"><?php echo e($langg->lang320); ?> <span id="key"></span></p>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-danger" data-dismiss="modal"><?php echo e($langg->lang321); ?></button>
            </div>
        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>


<?php $__env->startSection('scripts'); ?>

<script type="text/javascript">
    $('#example').dataTable({
        "ordering": false,
        'paging': false,
        'lengthChange': false,
        'searching': false,
        'ordering': false,
        'info': false,
        'autoWidth': false,
        'responsive': true
    });
</script>
<script>
    $(document).on("click", "#tid", function (e) {
        $(this).hide();
        $("#tc").show();
        $("#tin").show();
        $("#tbtn").show();
    });
    $(document).on("click", "#tc", function (e) {
        $(this).hide();
        $("#tid").show();
        $("#tin").hide();
        $("#tbtn").hide();
    });
    $(document).on("submit", "#tform", function (e) {
        var oid = $("#oid").val();
        var tin = $("#tin").val();
        $.ajax({
            type: "GET",
            url: "<?php echo e(URL::to('user/json/trans')); ?>",
            data: {
                id: oid,
                tin: tin
            },
            success: function (data) {
                $("#ttn").html(data);
                $("#tin").val("");
                $("#tid").show();
                $("#tin").hide();
                $("#tbtn").hide();
                $("#tc").hide();
            }
        });
        return false;
    });
</script>
<script type="text/javascript">
    $(document).on('click', '#license', function (e) {
        var id = $(this).parent().find('input[type=hidden]').val();
        $('#key').html(id);
    });
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.front', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>