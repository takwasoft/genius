@extends('layouts.vendor') 
{{--  @section('styles')
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

@endsection  --}}
@section('content')

					<div class="content-area">
						<div class="mr-breadcrumb">
							<div class="row">
								<div class="col-lg-12">
										<h4 class="heading">{{ $langg->lang472 }}</h4>
										<ul class="links">
											<li>
												<a href="{{ route('vendor-dashboard') }}">{{ $langg->lang441 }} </a>
											</li>
											<li>
												<a href="{{ route('vendor-wt-index') }}">{{ $langg->lang472 }}</a>
											</li>
										</ul>
								</div>
							</div>
						</div>
						<div class="product-area">
							<div class="row">
								<div class="col-lg-12">
									<div class="mr-table allproduct">
										@include('includes.admin.form-success') 
									<form method="post" action="{{route('filter-vendor-withdraw')}}"> 
									 {{ csrf_field() }}  
										<center>
										<b>From</b>
										<input
										@isset($from)
											value="{{$from}}"
										@endisset
										 name="start" type="date" >
										<b>To</b>
										<input
										@isset($to)
											value="{{$to}}"
										@endisset
										 name="end" type="date" >
										</center>
										<br>
										<center>
										<b>Method</b>
												<select name="method" style="width:30%">
												<option value="0">Select</option>
													@foreach($gateways as $gateway)
															<option 
															@isset($method)
															@if($gateway->id==$method)
																selected
															@endif
															@endisset
															value="{{$gateway->id}}">{{$gateway->title}}</option>
													@endforeach
												</select>
										<b>Status</b>
												<select name="status" style="width:30%">
															<option value="0">Select</option>
															<option
															@if($status=="completed")
																selected
															@endif
															 value="completed">Completed</option>
															<option
															@if($status=="rejected")
																selected
															@endif
															 value="rejected">Rejected</option>
													
												</select>
												<br>
												<button class="add-btn">Filter Withdraw</button>
												</center>
												</form>
												<br>
										<div class="table-responsiv">
												<table id="geniustable" class="table table-hover dt-responsive" cellspacing="0" width="100%">
													<thead>
														<tr>
						                                <th>{{ $langg->lang474 }}</th>
						                                <th>{{ $langg->lang475 }}</th>
						                                <th>Details</th>
						                                <th>{{ $langg->lang477 }}</th>
						                                <th>{{ $langg->lang478 }}</th>
														</tr>
													</thead>

												<tbody>
                            @foreach($withdraws as $withdraw)
                                <tr>
                                    <td>{{date('d-M-Y',strtotime($withdraw->created_at))}}</td>
                                    <td>{{$withdraw->paymentGateway->title}}</td>
                                  <td>
								    <ul class="list-group">
									@foreach($withdraw->additionalFields as $field)
											<li class="list-group-item">
											<span>
												@if($field->additionalField)
												{{$field->additionalField->title}}
												@endif</span>
											<span>{{$field->value}}</span>
										</li>
										@endforeach
									</ul>
								  </td>
                                    <td>{{$sign->sign}}{{ round($withdraw->amount * $sign->value , 2) }}</td>
                                    <td>{{ucfirst($withdraw->status)}}</td>
                                </tr>
                            @endforeach
												</tbody>
													
												</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

@endsection    



@section('scripts')

{{-- DATA TABLE --}}


    <script type="text/javascript">

		var table = $('#geniustable').DataTable({
			ordering:false
		});

      	$(function() {
        $(".btn-area").append('<div class="col-sm-4 text-right">'+
        	'<a class="add-btn" href="{{route('vendor-wt-create')}}">'+
          '<i class="fas fa-plus"></i> {{ $langg->lang473 }}'+
          '</a>'+
          '</div>');
      });												
									
    </script>

{{-- DATA TABLE --}}
    
@endsection   

{{--  @section('scripts')
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
@endsection  --}}