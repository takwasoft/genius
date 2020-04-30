@extends('layouts.admin') 
 
@section('content')  
<div class="content-area">
						<div class="mr-breadcrumb">
							<div class="row">
								<div class="col-lg-12">
										<h4 class="heading">{{ __("Products") }}</h4>
										<ul class="links">
											<li>
												<a href="{{ route('admin.dashboard') }}">{{ __("Dashboard") }} </a>
											</li>
											<li>
												<a href="javascript:;">Boost </a>
											</li>
											
										</ul>
								</div>
							</div>
						</div>
                        <div class="table-responsiv">
												<table id="geniustable" class="table table-hover dt-responsive" cellspacing="0" width="100%">
													<thead>
														<tr>
                                                        <th>#</th>
									                        <th>Vendor</th>
									                        <th>Product</th>
									                        <th>Price</th>
                                                            <th>Day</th>
									                        <th>Applied At</th>
									                        <th>Paid</th>
                                                            <th>Valid Till</th>
									                        <th>Action</th>
														</tr>
													</thead>
												</table>
										</div>


@endsection 
@section('scripts')

<script>
var changed=(val,id)=>{
		reason="as";
		if(val==2){
			reason=window.prompt('Enter note');
		}
		 $.ajax({url: "{{URL::to('/')}}/admin/boost/status/"+id+"/"+val+"/"+reason, success: function(result){
			  
 		 }});
	}
var table = $('#geniustable').DataTable({
			   ordering: false,
               processing: true,
               serverSide: true,
               ajax: '{{ route('admin-boost-datatables') }}',
               columns: [
                   { data: 'id', name: 'id' },
                        { data: 'product.user.name', name: 'product.user.name' },
                        { data: 'product.name', name: 'product.name' },
                        { data: 'boostcategory.price', name: 'boostcategory.price' },
                        { data: 'boostcategory.duration', name: 'boostcategory.duration' },
                        { data: 'applied', name: 'applied' },
                        { data: 'status', searchable: false, orderable: false},
                        { data: 'valid', name: 'valid'},
            			{ data: 'action', searchable: false, orderable: false } 

                     ],
                language : {
                	processing: '<img src="{{asset('assets/images/'.$gs->admin_loader)}}">'
                },
				drawCallback : function( settings ) {
	    				$('.select').niceSelect();	
				}
            });

</script>

            @endsection