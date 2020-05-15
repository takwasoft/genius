@extends('layouts.vendor') 

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
                                                <span>{{$field->additionalField->title}}</span>
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