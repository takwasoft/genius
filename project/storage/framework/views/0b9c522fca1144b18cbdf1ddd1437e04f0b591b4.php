 

<?php $__env->startSection('styles'); ?>

<style type="text/css">
    
.input-field { 
    padding: 15px 20px; 
}

</style>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>  
 
<input type="hidden" id="headerdata" value="<?php echo e(__('ORDER')); ?>">

                    <div class="content-area">
                        <div class="mr-breadcrumb">
                            <div class="row">
                                <div class="col-lg-12">
                                        <h4 class="heading"><?php echo e(__('All Orders')); ?></h4>
                                        <ul class="links">
                                            <li>
                                                <a href="<?php echo e(route('admin.dashboard')); ?>"><?php echo e(__('Dashboard')); ?> </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"><?php echo e(__('Orders')); ?></a>
                                            </li>
                                            <li>
                                                <a href="<?php echo e(route('admin-order-index')); ?>"><?php echo e(__('All Orders')); ?></a>
                                            </li>
                                        </ul>
                                </div>
                            </div>
                        </div>
                        <div class="">
                            <div class="row">
                                <div class="col-lg-12">
                                    <center>
                                    <div class="justify-content-center align-items-center" style="align-item:center">
                                      
                                        <a href="<?php echo e(route('admin-order-pending')); ?>" class="btn btn-warning">Pending<span class="badge badge-light ml-2"><?php echo e($pending); ?></span></a>
                                        <a href="<?php echo e(route('admin-order-processing')); ?>" class="btn btn-info">Processing<span class="badge badge-light ml-2"><?php echo e($processing); ?></span></a>
                                        <a href="<?php echo e(route('admin-order-delivery')); ?>" class="btn btn-primary">On Delivery<span class="badge badge-light ml-2"><?php echo e($delivery); ?></span></a>
                                        <a href="<?php echo e(route('admin-order-completed')); ?>" class="btn btn-success">Completed<span class="badge badge-light ml-2"><?php echo e($completed); ?></span></a>
                                        <a href="<?php echo e(route('admin-order-declined')); ?>" class="btn btn-danger">Declined<span class="badge badge-light ml-2"><?php echo e($declined); ?></span></a>
                                        <a href="<?php echo e(route('admin-order-paid')); ?>" class="btn btn-success">Paid<span class="badge badge-light ml-2"><?php echo e($paid); ?></span></a>
                                        
                                    </div>
                                    </center>
                                    <div class="mr-table allproduct">
                                        <?php echo $__env->make('includes.admin.form-success', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?> 
                                        <div class="table-responsive">
                                        <div class="gocover" style="background: url(<?php echo e(asset('assets/images/'.$gs->admin_loader)); ?>) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                                                <table id="geniustable" class="table table-hover " cellspacing="0" width="100%">
                                                    <thead>
                                                        <tr>
                                                            <th><?php echo e(__('Order ID')); ?></th>
                                                            <th><?php echo e(__('Customer Email')); ?></th>
                                                            <th>Products</th>
                                                            <th><?php echo e(__('Total Qty')); ?></th>
                                                            <th><?php echo e(__('Total Cost')); ?></th>
                                                            <th><?php echo e(__('Order At')); ?></th>
                                                            <th><?php echo e(__('Status')); ?></th>
                                                            <th><?php echo e(__('Payment')); ?></th>
                                                            <th><?php echo e(__('Options')); ?></th>
                                                        </tr>
                                                    </thead>
                                                    <tfoot>
                                                        <tr>
                                                            <th><?php echo e(__('Order ID')); ?></th>
                                                            <th><?php echo e(__('Customer Email')); ?></th>
                                                            <th>Products</th>
                                                            <th><?php echo e(__('Total Qty')); ?></th>
                                                            <th><?php echo e(__('Total Cost')); ?></th>
                                                            <th><?php echo e(__('Order At')); ?></th>
                                                            <th><?php echo e(__('Status')); ?></th>
                                                            <th><?php echo e(__('Payment')); ?></th>
                                                            <th><?php echo e(__('Options')); ?></th>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



<div class="modal fade" id="confirm-delete1" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="submit-loader">
            <img  src="<?php echo e(asset('assets/images/'.$gs->admin_loader)); ?>" alt="">
        </div>
    <div class="modal-header d-block text-center">
        <h4 class="modal-title d-inline-block"><?php echo e(__('Update Status')); ?></h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
    </div>

      <!-- Modal body -->
      <div class="modal-body">
        <p class="text-center"><?php echo e(__("You are about to update the order's Status.")); ?></p>
        <p class="text-center"><?php echo e(__('Do you want to proceed?')); ?></p>
        <input type="hidden" id="t-add" value="<?php echo e(route('admin-order-track-add')); ?>">
        <input type="hidden" id="t-id" value="">
        <input type="hidden" id="t-title" value="">
        <textarea class="input-field" placeholder="Enter Your Tracking Note (Optional)" id="t-txt"></textarea>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo e(__('Cancel')); ?></button>
            <a class="btn btn-success btn-ok order-btn"><?php echo e(__('Proceed')); ?></a>
      </div>

    </div>
  </div>
</div>






<div class="sub-categori">
    <div class="modal" id="vendorform" tabindex="-1" role="dialog" aria-labelledby="vendorformLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="vendorformLabel"><?php echo e(__('Send Email')); ?></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                </div>
            <div class="modal-body">
                <div class="container-fluid p-0">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="contact-form">
                                <form id="emailreply">
                                    <?php echo e(csrf_field()); ?>

                                    <ul>
                                        <li>
                                            <input type="email" class="input-field eml-val" id="eml" name="to" placeholder="<?php echo e(__('Email')); ?> *" value="" required="">
                                        </li>
                                        <li>
                                            <input type="text" class="input-field" id="subj" name="subject" placeholder="<?php echo e(__('Subject')); ?> *" required="">
                                        </li>
                                        <li>
                                            <textarea class="input-field textarea" name="message" id="msg" placeholder="<?php echo e(__('Your Message')); ?> *" required=""></textarea>
                                        </li>
                                    </ul>
                                    <button class="submit-btn" id="emlsub" type="submit"><?php echo e(__('Send Email')); ?></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>
</div>





                <div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
                                        
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                                                <div class="submit-loader">
                                                        <img  src="<?php echo e(asset('assets/images/'.$gs->admin_loader)); ?>" alt="">
                                                </div>
                                            <div class="modal-header">
                                            <h5 class="modal-title"></h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                            </div>
                                            <div class="modal-body">

                                            </div>
                                            <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo e(__('Close')); ?></button>
                                            </div>
                        </div>
                    </div>

                </div>



<?php $__env->stopSection(); ?>    

<?php $__env->startSection('scripts'); ?>



    <script type="text/javascript">
 $('#geniustable tfoot th').each(function () {
    
      var title = $(this).text();
      $(this).html('<input style="width:70px" type="text" placeholder="Search ' + title + '" />');
    });
        var table = $('#geniustable').DataTable({

               processing: true,
               serverSide: true, 
               ajax: '<?php echo e(route('admin-order-datatables','paid')); ?>',
               columns: [
                        { data: 'id', name: 'id' },
                        { data: 'customer_email', name: 'customer_email' },
                        { data: 'products', name: 'products' },
                        { data: 'totalQty', name: 'totalQty' },
                        { data: 'pay_amount', name: 'pay_amount' },
                         { data: 'created_at', name: 'created_at' },
                        { data: 'status', name: 'status' },
                        { data: 'payment_status', name: 'payment_status' }, 
                        { data: 'action', searchable: false, orderable: false }
                     ],
               language : {
                    processing: '<img src="<?php echo e(asset('assets/images/'.$gs->admin_loader)); ?>">'
                },
                drawCallback : function( settings ) {
                        $('.select').niceSelect();  
                }
            });
             table.columns().every(function () {
      var that = this;
      
      $('input', this.footer()).on('keyup change clear', function () {
        if (that.search() !== this.value) {
           that
                    .search( this.value.split(",").join("|"), true, false )
                    .draw();
        }
      });
    });
    $('#geniustable tfoot tr').appendTo('#geniustable thead');   
                                                                
    </script>


    
<?php $__env->stopSection(); ?>   
<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>