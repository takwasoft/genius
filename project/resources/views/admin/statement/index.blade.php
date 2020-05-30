@extends('layouts.admin') 
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
									<form method="post" action="{{route('admin-statement-filter')}}">
									 {{ csrf_field() }}  
										<center>
										<b>From</b>
										<input
										@isset($start)
											value="{{$start}}"
										@endisset
										 name="start" type="date" >
										<b>To</b>
										<input
										@isset($end)
											value="{{$end}}"
										@endisset
										 name="end" type="date" >
										</center>
										<br>
										<center>
										
												<button class="add-btn">Filter Statement</button>
												</center>
												</form>
												<br>
												<table class="table">
													<tr>
														<th>
															Total Order
														</th>
														<th>
															Total Boosting
														</th>
														<th>
															Total Top Ad
														</th>
														<th>
															Total Subscription
														</th>
														<th>
															Total Collection
														</th>
														<th>
															Vendor Withdraw
														</th>
														<th>
															User Withdraw
														</th>
														<th>
															Total Admin Withdraw
														</th>
														<th>Total Paid</th>
													</tr>
													<tr>
													<td>{{$ntransactions->where('type','=','Order Payment')->sum("amount")}}
															</td>
														<td>{{$ntransactions->where('type','=','Product Boosting')->sum("amount")}}
													</td>
																<td>{{$ntransactions->where('type','=','Product Top Ad')->sum("amount")}}
															</td>
															<td>{{$ntransactions->where('type','=','subscription')->sum("amount")}}
															</td>
																<td>{{$ntransactions->where('collected','=','1')->sum("amount")}}
															</td>
															<td>{{$ntransactions->where('type','=','Vendor Withdraw')->sum("amount")}}
															</td>
															<td>{{$ntransactions->where('type','=','User Withdraw')->sum("amount")}}
															</td>
															<td>{{$ntransactions->where('type','=','Admin Withdraw')->sum("amount")}}
															</td>
															<td>{{$ntransactions->where('collected','=','0')->sum("amount")}}
															</td>
															
													</tr>
												</table>
												<br>
										<div class="table-responsiv">
												<table id="geniustable" class="table table-hover dt-responsive" cellspacing="0" width="100%">
													<thead>
														<tr>
						                                <th>Date</th>
						                                <th>Collected Amount</th>
						                                <th>Paid Amount</th>
						                                <th>Available</th>
						                                
														</tr>
													</thead>

												<tbody>
												@php($av=0)
														@foreach ($transactions as $transaction => $data) 
														@php($av+=$data->where('collected','=',1)->sum("amount")-$data->where('collected','=',0)->sum("amount"))
														<tr>
															 <td>{{$transaction}}</td>
															<td>{{$data->where('collected','=',1)->sum("amount")}}
															</td>
															<td>{{$data->where('collected','=',0)->sum("amount")}}
															</td>
															<td>{{$av}}
															</td>
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

      	{{--  $(function() {
        $(".btn-area").append('<div class="col-sm-4 text-right">'+
        	'<a class="add-btn" href="{{route('vendor-wt-create')}}">'+
          '<i class="fas fa-plus"></i> {{ $langg->lang473 }}'+
          '</a>'+
          '</div>');
      });												  --}}
									
    </script>

{{-- DATA TABLE --}}
    
@endsection   

