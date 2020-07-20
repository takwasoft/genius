 

<?php $__env->startSection('content'); ?>  
					<input type="hidden" id="headerdata" value="<?php echo e(__("VERIFICATION")); ?>">
					<div class="content-area">
						<div class="mr-breadcrumb">
							<div class="row">
								<div class="col-lg-12">
										<h4 class="heading"><?php echo e(__("Vendor Verifications")); ?></h4>
										<ul class="links">
											<li>
												<a href="<?php echo e(route('admin.dashboard')); ?>"><?php echo e(__("Dashboard")); ?> </a>
											</li>
											<li><a href="javascript:;"><?php echo e(__('Vendor Verifications')); ?></a></li>
											<li>
												<a href="<?php echo e(route('admin-vr-index')); ?>"><?php echo e(__("All Verifications")); ?></a>
											</li>
										</ul>
								</div>
							</div>
						</div>
						<div class="product-area">
							<div class="row">
								<div class="col-lg-12">



									<div class="mr-table allproduct">
										<?php echo $__env->make('includes.admin.form-success', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?> 
										<div class="table-responsiv">
												<table id="geniustable" class="table table-hover dt-responsive" cellspacing="0" width="100%">
													<thead>
														<tr>
		                                                  <th><?php echo e(__("Vendor Name")); ?></th>
		                                                  <th><?php echo e(__("Vendor Email")); ?></th>
		                                                  <th><?php echo e(__("Descriptions")); ?></th>
		                                                  <th><?php echo e(__("Status")); ?></th>
		                                                  <th><?php echo e(__("Options")); ?></th>
														</tr>
													</thead>
												</table>
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
											<button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo e(__("Close")); ?></button>
											</div>
						</div>
					</div>

			</div>





<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">

	<div class="modal-header d-block text-center">
		<h4 class="modal-title d-inline-block"><?php echo e(__("Confirm Delete")); ?></h4>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
	</div>

      <!-- Modal body -->
      <div class="modal-body">
            <p class="text-center"><?php echo e(__("You are about to delete this Verification.")); ?></p>
            <p class="text-center"><?php echo e(__("Do you want to proceed?")); ?></p>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo e(__("Cancel")); ?></button>
            <a class="btn btn-danger btn-ok"><?php echo e(__("Delete")); ?></a>
      </div>

    </div>
  </div>
</div>






<div class="modal fade" id="confirm-delete1" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">

    <div class="modal-header d-block text-center">
        <h4 class="modal-title d-inline-block"><?php echo e(__("Update Status")); ?></h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
    </div>

      <!-- Modal body -->
      <div class="modal-body">
            <p class="text-center"><?php echo e(__("You are about to change the status.")); ?></p>
            <p class="text-center"><?php echo e(__("Do you want to proceed?")); ?></p>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo e(__("Cancel")); ?></button>
            <a class="btn btn-success btn-ok"><?php echo e(__("Update")); ?></a>
      </div>

    </div>
  </div>
</div>






<div class="modal fade" id="setgallery" tabindex="-1" role="dialog" aria-labelledby="setgallery" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
			<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalCenterTitle"><?php echo e(__('Attachments')); ?></h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">

					<div class="top-area">
							<div class="row">
								<div class="col-sm-12 d-inline-block">

										<h5> Details: <small id="detail"></small></h5>
								</div>

							</div>
						</div>

				<div class="gallery-images">
					<div class="selected-image">
						<div class="row">


						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">


								<div class="col-sm-6 text-right">
									<a id="verify-btn"  href="javascript:;"  class="btn btn-success f-btn" > <i class="fas fa-check"></i> <?php echo e(__("Verify")); ?></a>
								</div>
								<div class="col-sm-6">
									<a id="decline-btn" href="javascript:;"  class="btn btn-danger f-btn" > <i class="fas fa-times"></i> <?php echo e(__("Decline")); ?></a>
								</div>


			</div>

			</div>
		</div>
	</div>





<?php $__env->stopSection(); ?>    

<?php $__env->startSection('scripts'); ?>



    <script type="text/javascript">

		var table = $('#geniustable').DataTable({
			   ordering: false,
               processing: true,
               serverSide: true,
               ajax: '<?php echo e(route('admin-vr-datatables','all')); ?>',
               columns: [
                        { data: 'name', name: 'name' },
                        { data: 'email', name: 'email' },
                        { data: 'text', name: 'text' },
                        { data: 'status', searchable: false, orderable: false},
            			{ data: 'action', searchable: false, orderable: false }
                     ],
               language : {
                	processing: '<img src="<?php echo e(asset('assets/images/'.$gs->admin_loader)); ?>">'
                },
				drawCallback : function( settings ) {
	    				$('.select').niceSelect();	

				}
            });


																
    </script>




<script type="text/javascript">
	
	// Gallery Section Update
	
	
		$(document).on("click", ".set-gallery" , function(){
			var pid = $(this).find('input[type=hidden]').val();
			$('#pid').val(pid);
			$('.selected-image .row').html('');
				$.ajax({
						type: "GET",
						url:"<?php echo e(route('admin-vr-show')); ?>",
						data:{id:pid},
						success:function(data){
						$('#detail').html(data[2]);
						$('#verify-btn').attr('href',data[3]);
						$('#decline-btn').attr('href',data[4]);
						  if(data[0] == 0)
						  {
							$('.selected-image .row').addClass('justify-content-center');
							  $('.selected-image .row').html('<h3><?php echo e(__("No Images Found.")); ?></h3>');
						   }
						  else {
							$('.selected-image .row').removeClass('justify-content-center');
							  $('.selected-image .row h3').remove();      
							  var arr = $.map(data[1], function(el) {
							  return el });
	
							  for(var k in arr)
							  {
							$('.selected-image .row').append('<div class="col-sm-6">'+
											'<div class="img gallery-img">'+
												'<a class="img-popup" href="'+'<?php echo e(asset('assets/images/attachments').'/'); ?>'+arr[k]+'">'+
												'<img  src="'+'<?php echo e(asset('assets/images/attachments').'/'); ?>'+arr[k]+'" alt="gallery image">'+
												'</a>'+
											'</div>'+
										  '</div>');
							  }                         
						   }
	 
							$('.img-popup').magnificPopup({
							type: 'image'
						  });
	
						 $(document).off('focusin');
	
						}
	
	
					  });
		  });
	
	
	$('.f-btn').on('click',function(e){
		e.preventDefault();
		$.ajax({
		   type:"GET",
		   url:$(this).attr('href'),
		   success:function(data)
		   {
	
			if(admin_loader == 1)
			  {
				$('.submit-loader').hide();
			  }
	
				$('#setgallery').modal('toggle');
				$('.alert-danger').hide();
				$('.alert-success').show();
				$('.alert-success p').html(data[0]);
				table.ajax.reload();
		   }
		  });
	});
	
	// Gallery Section Update Ends	
	
	</script>

<?php $__env->stopSection(); ?>   

<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>