@extends('layouts.admin') 

@section('content')  
<div class="content-area">
         <div class="mr-breadcrumb">
              <div class="row">
                <div class="col-lg-12">
                    <h4 class="heading">User Messages</h4>
                    <ul class="links">
                      <li>
                        <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                      </li>
                      <li>
                        <a href="javascript:;">{{ __('Messages') }}</a>
                      </li>
                      <li>
                        <a href="javascript:;">User Message</a>
                      </li>

                    </ul>
                </div>
              </div>
            </div>
            <div >
            <table id="example" class="table table-hover dt-responsive" cellspacing="0" width="100%">
												<thead>
													<tr>
                                                    <th>From</th>
														<th>To</th>
														<th>Subject</th>
                            <th>Last Message</th>
														<th>{{ $langg->lang360 }}</th>
														<th>{{ $langg->lang361 }}</th>
													</tr>
												</thead>
												<tbody>
                        @foreach($convs as $conv)

                          <tr class="conv">
                            
                            <input type="hidden" value="{{$conv->id}}">
                            
                            <td>{{$conv->recieved->name}}</td>    
                            
                            <td>{{$conv->sent->name}}</td>
                            
                            <td>{{$conv->subject}}</td>
                            <td>{{$conv->messages->last()->message}}</td>
                            <td>{{$conv->messages->last()->created_at->diffForHumans()}}</td>
                            <td>
                              <a href="{{route('admin-message-single',$conv->id)}}" class="link view"><i class="fa fa-eye"></i></a>
                              <a href="javascript:;" data-toggle="modal" data-target="#confirm-delete" data-href="{{route('user-message-delete',$conv->id)}}" class="link remove"><i class="fa fa-trash"></i></a>
                            </td>

                          </tr>

                        @endforeach
												</tbody>
											</table>
            </div>
</div>

@endsection