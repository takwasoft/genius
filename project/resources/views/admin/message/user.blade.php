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
            <table id="geniustable" class="table table-hover dt-responsive" cellspacing="0" width="100%">
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
											
											</table>
            </div>
</div>

@endsection

@section('scripts')

    <script type="text/javascript">
      var table = $('#geniustable').DataTable({
         ordering: false,
               processing: true,
               serverSide: true,
               ajax: '{{ route('admin-messages-datatable') }}',
               columns: [
                  {data:'recieved.name',name:'recieved.name'},
                  { data: 'sent.name', name: 'sent.name' },
                  { data: 'subject', name: 'subject' },
                  { data: 'last', name: 'last' },
                  { data: 'time', name: 'time' },
                 
                  { data: 'action', searchable: false, orderable: false }

                     ],
               language: {
                  processing: '<img src="{{asset('assets/images/'.$gs->admin_loader)}}">'
                },
        drawCallback : function( settings ) {
              $('.select').niceSelect();  
        }
            });
    </script>
@endsection