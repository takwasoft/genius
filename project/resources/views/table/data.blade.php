 @extends('layouts.admin')

@section('content')
 <div class="content-area">
<div class="card card-info">
                <div class="card-header">
                    <div class="card-title">
                        {{$title}}
                    </div>
                    <div class="card-tools">
                        <a class="btn btn-warning" href="{{URL::to('/admin/'.$ajax.'/create')}}">Add New</a>
                    </div>
                </div>
                <div class="card-body">
                        <div class="table-responsive">
                                <table class="table table-bordered data-table">
                                        <thead>
                                            <tr>
                                               {!!$thead!!}
                                               <th>Time</th>
                                                <th width="100px">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                        </div>
                </div>
            </div>

</div>



@endsection


@section('scripts')
 <script type="text/javascript">
 
    deleteData=(id)=>{
      url=`{{URL::to('/admin/'.$ajax.'/${id}')}}`;
        $('<form action="'+url+'" method="post">   {{csrf_field()}}<input type="hidden" name="_method" value="DELETE"></form>').appendTo('body').submit();
    }
    $(function () {
      
      var table = $('.data-table').DataTable({
          "aaSorting": [],
          processing: true,
          serverSide: true,
          ajax: "{{$ajax}}", 
          columns: [
              {!!$columns!!}
              {data: 'created_at', name: 'created_at'},
              {data: 'action', name: 'action', orderable: false, searchable: false},
          ]
      });
      
    });
  </script>                       
  @endsection