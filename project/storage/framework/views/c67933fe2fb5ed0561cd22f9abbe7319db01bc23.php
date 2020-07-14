<?php $__env->startSection('content'); ?>
<div class="content-area">
                    <div class="mr-breadcrumb">
                        <div class="row">
                            <div class="col-lg-12">
                                <h4 class="heading"><?php echo e($langg->lang586); ?> <a class="add-btn" href="<?php echo e(route('vendor-order-show',$order->order_number)); ?>"><i class="fas fa-arrow-left"></i> <?php echo e($langg->lang550); ?></a></h4>
                                <ul class="links">
                                    <li>
                                        <a href="<?php echo e(route('vendor-dashboard')); ?>"><?php echo e($langg->lang441); ?> </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;"><?php echo e($langg->lang443); ?></a>
                                    </li>
                                    <li>
                                        <a href="javascript:;"><?php echo e($langg->lang586); ?></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
    <div class="order-table-wrap">
        <div class="invoice-wrap">
            <div class="invoice__title">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="invoice__logo text-left">
                           <img src="<?php echo e(asset('assets/images/'.$gs->invoice_logo)); ?>" alt="woo commerce logo">
                        </div>
                    </div>
                    <div class="col-lg-6 text-right">
                        <a class="btn  add-newProduct-btn print" href="<?php echo e(route('vendor-order-print',$order->order_number)); ?>"
                        target="_blank"><i class="fa fa-print"></i> <?php echo e($langg->lang607); ?></a>
                    </div>
                </div>
            </div>
            <br>
            <div class="row invoice__metaInfo mb-4">
                <div class="col-lg-6">
                    <div class="invoice__orderDetails">
                        
                        <p><strong><?php echo e($langg->lang601); ?> </strong></p>
                        <span><strong><?php echo e($langg->lang588); ?> :</strong> <?php echo e(sprintf("%'.08d", $order->id)); ?></span><br>
                        <span><strong><?php echo e($langg->lang589); ?> :</strong> <?php echo e(date('d-M-Y',strtotime($order->created_at))); ?></span><br>
                        <span><strong><?php echo e($langg->lang590); ?> :</strong> <?php echo e($order->order_number); ?></span><br>
                        <?php if($order->dp == 0): ?>
                        <span> <strong><?php echo e($langg->lang602); ?> :</strong>
                            <?php if($order->shipping == "pickup"): ?>
                            <?php echo e($langg->lang603); ?>

                            <?php else: ?>
                            <?php echo e($langg->lang604); ?>

                            <?php endif; ?>
                        </span><br>
                        <?php endif; ?>
                        <span> <strong><?php echo e($langg->lang605); ?> :</strong> <?php echo e($order->method); ?></span>
                    </div>
                </div>
            </div>
            <div class="row invoice__metaInfo">
           <?php if($order->dp == 0): ?>
                <div class="col-lg-6">
                        <div class="invoice__shipping">
                            <p><strong><?php echo e($langg->lang606); ?></strong></p>
                           <span><strong><?php echo e($langg->lang557); ?></strong>: <?php echo e($order->shipping_name == null ? $order->customer_name : $order->shipping_name); ?></span><br>
                           <span><strong><?php echo e($langg->lang560); ?></strong>: <?php echo e($order->shipping_address == null ? $order->customer_address : $order->shipping_address); ?></span><br>
                           <span><strong><?php echo e($langg->lang562); ?></strong>: <?php echo e($order->shipping_city == null ? $order->customer_city : $order->shipping_city); ?></span><br>
                           <span><strong><?php echo e($langg->lang561); ?></strong>: <?php echo e($order->shipping_country == null ? $order->customer_country : $order->shipping_country); ?></span>

                        </div>
                </div>

            <?php endif; ?>

                <div class="col-lg-6">
                        <div class="buyer">
                            <p><strong><?php echo e($langg->lang587); ?></strong></p>
                            <span><strong><?php echo e($langg->lang557); ?></strong>: <?php echo e($order->customer_name); ?></span><br>
                            <span><strong><?php echo e($langg->lang560); ?></strong>: <?php echo e($order->customer_address); ?></span><br>
                            <span><strong><?php echo e($langg->lang562); ?></strong>: <?php echo e($order->customer_city); ?></span><br>
                            <span><strong><?php echo e($langg->lang561); ?></strong>: <?php echo e($order->customer_country); ?></span>
                        </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="invoice_table">
                        <div class="mr-table">
                            <div class="table-responsive">
                                <table id="example2" class="table table-hover dt-responsive" cellspacing="0"
                                    width="100%" >
                                    <thead>
                                        <tr>
                                            <th><?php echo e($langg->lang591); ?></th>
                                            <th><?php echo e($langg->lang539); ?></th>
                                            <th><?php echo e($langg->lang600); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $subtotal = 0;
                                        $data = 0;
                                        $tax = 0;

                                        ?>
                                        <?php $__currentLoopData = $cart->items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if($product['item']['user_id'] != 0): ?>
                                    <?php if($product['item']['user_id'] == $user->id): ?>

                                        <tr>
                                            <td width="50%">
                                                <?php if($product['item']['user_id'] != 0): ?>
                                                <?php
                                                $user = App\Models\User::find($product['item']['user_id']);
                                                ?>
                                                <?php if(isset($user)): ?>
                                                <a target="_blank"
                                                    href="<?php echo e(route('front.product', $product['item']['slug'])); ?>"><?php echo e($product['item']['name']); ?></a>
                                                <?php else: ?>
                                                <a href="javascript:;"><?php echo e($product['item']['name']); ?></a>
                                                <?php endif; ?>

                                                <?php else: ?>
                                                <a href="javascript:;"><?php echo e($product['item']['name']); ?></a>

                                                <?php endif; ?>
                                            </td>


                                            <td>
                                                <?php if($product['size']): ?>
                                               <p>
                                                    <strong><?php echo e($langg->lang312); ?> :</strong> <?php echo e($product['size']); ?>

                                               </p>
                                               <?php endif; ?>
                                               <?php if($product['color']): ?>
                                                <p>
                                                        <strong><?php echo e($langg->lang313); ?> :</strong> <span
                                                        style="width: 40px; height: 20px; display: block; background: #<?php echo e($product['color']); ?>;"></span>
                                                </p>
                                                <?php endif; ?>
                                                <p>
                                                        <strong><?php echo e($langg->lang754); ?> :</strong> <?php echo e($order->currency_sign); ?><?php echo e(round($product['item']['price'] * $order->currency_value , 2)); ?>

                                                </p>
                                               <p>
                                                    <strong><?php echo e($langg->lang595); ?> :</strong> <?php echo e($product['qty']); ?> <?php echo e($product['item']['measure']); ?>

                                               </p>
                                                    <?php if(!empty($product['keys'])): ?>

                                                    <?php $__currentLoopData = array_combine(explode(',', $product['keys']), explode(',', $product['values'])); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <p>

                                                        <b><?php echo e(ucwords(str_replace('_', ' ', $key))); ?> : </b> <?php echo e($value); ?> 

                                                    </p>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                                    <?php endif; ?>

                                            </td>

                                      
                                            <td><?php echo e($order->currency_sign); ?><?php echo e(round($product['price'] * $order->currency_value , 2)); ?></td>
                                            <?php
                                            $subtotal += round($product['price'] * $order->currency_value, 2);
                                            ?>

                                        </tr>

                                    <?php endif; ?>
                                <?php endif; ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tbody>

                                    <tfoot>
                                        <tr>
                                            <td colspan="2"><?php echo e($langg->lang597); ?></td>
                                            <td><?php echo e($order->currency_sign); ?><?php echo e(round($subtotal, 2)); ?></td>
                                        </tr>
                                        <?php if(Auth::user()->id == $order->vendor_shipping_id): ?>
                                            <?php if($order->shipping_cost != 0): ?>
                                            <tr>
                                                <td colspan="2"><?php echo e($langg->lang598); ?>(<?php echo e($order->currency_sign); ?>)</td>
                                                <td><?php echo e(round($order->shipping_cost , 2)); ?></td>
                                            </tr>
                                            <?php 
                                                $data +=  round($order->shipping_cost , 2);
                                            ?>
                                            <?php endif; ?>
                                        <?php endif; ?>
                                        <?php if(Auth::user()->id == $order->vendor_packing_id): ?>
                                            <?php if($order->packing_cost != 0): ?>
                                            <tr>
                                                <td colspan="2"><?php echo e($langg->lang596); ?>(<?php echo e($order->currency_sign); ?>)</td>
                                                <td><?php echo e(round($order->packing_cost , 2)); ?></td>
                                            </tr>
                                            <?php 
                                                $data +=  round($order->packing_cost , 2);
                                            ?>
                                            <?php endif; ?>
                                        <?php endif; ?>

                                        <?php if($order->tax != 0): ?>
                                        <tr>
                                            <td colspan="2"><?php echo e($langg->lang599); ?>(<?php echo e($order->currency_sign); ?>)</td>
                                            <?php
                                                $tax = ($subtotal / 100) * $order->tax;
                                                $subtotal =  $subtotal + $tax;
                                            ?>
                                            <td><?php echo e(round($tax, 2)); ?></td>
                                        </tr>
                                        <?php endif; ?>

                                        <tr>
                                            <td colspan="1"></td>
                                            <td><?php echo e($langg->lang600); ?></td>
                                            <td><?php echo e($order->currency_sign); ?><?php echo e(round(($subtotal + $data), 2)); ?>

                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Main Content Area End -->
</div>
</div>
</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.vendor', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>