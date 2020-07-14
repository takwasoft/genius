@extends('layouts.admin') 

@section('content')  
                    <input type="hidden" id="headerdata" value="{{ __("WITHDRAW") }}">
                    <div class="content-area">
                        <div class="mr-breadcrumb">
                            <div class="row">
                                <div class="col-lg-12">
                                        <h4 class="heading">{{ __("Withdraws") }}</h4>
                                        <ul class="links">
                                            <li>
                                                <a href="{{ route('admin.dashboard') }}">{{ __("Dashboard") }} </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">{{ __("Customers") }}</a>
                                            </li>
                                            <li>
                                                <a href="{{ route('admin-withdraw-index') }}">{{ __("Withdraws") }}</a>
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
                                        <div class="table-responsive">
                                        <button onclick="printWithdraw()" class="btn btn-success" style="float:right">Print</button>
                                                <table id="geniustable" class="table table-hover " cellspacing="0" width="100%">
                                                    <thead>
                                                        <tr>
                                                        <th><input class="chk" id="checkAll" type="checkbox"> All</th>
                                                            <th>#</th>
                                                            <th>{{ __("Email") }}</th>
                                                            <th>{{ __("Name") }}</th>
                                                            <th>{{ __("Phone") }}</th>
                                                            <th>{{ __("Amount") }}</th>
                                                            <th>{{ __("Method") }}</th>
                                                            <th>{{ __("Withdraw Date") }}</th>
                                                            <th>{{ __("Status") }}</th>
                                                            <th>{{ __("Options") }}</th>
                                                            <th>{{ __("Print") }}</th>
                                                        </tr>
                                                    </thead>
                                                    <tfoot>
                                                        <tr>
                                                        <th><input class="chk" id="checkAll" type="checkbox"></th>
                                                            <th>#</th>
                                                            <th>{{ __("Email") }}</th>
                                                            <th>{{ __("Name") }}</th>
                                                            <th>{{ __("Phone") }}</th>
                                                            <th>{{ __("Amount") }}</th>
                                                            <th>{{ __("Method") }}</th>
                                                            <th>{{ __("Withdraw Date") }}</th>
                                                            <th>{{ __("Status") }}</th>
                                                            <th>{{ __("Options") }}</th>
                                                            <th>{{ __("Print") }}</th>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

{{-- ADD / EDIT MODAL --}}

            <div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
                                        
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="submit-loader">
                                <img  src="{{asset('assets/images/'.$gs->admin_loader)}}" alt="">
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
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __("Close") }}</button>
                            </div>
                        </div>
                    </div>

                </div>

{{-- ADD / EDIT MODAL ENDS --}}

{{-- ACCEPT MODAL --}}

<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">

    <div class="modal-header d-block text-center">
        <h4 class="modal-title d-inline-block">{{ __("Accept Withdraw") }}</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
    </div>

      <!-- Modal body -->
      <div class="modal-body">
            <p class="text-center">{{ __("You are about to accept this Withdraw.") }}</p>
            <p class="text-center">{{ __("Do you want to proceed?") }}</p>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-default" data-dismiss="modal">{{ __("Cancel") }}</button>
            <a class="btn btn-success btn-ok">{{ __("Accept") }}</a>
      </div>

    </div>
  </div>
</div>

{{-- ACCEPT MODAL ENDS --}}


{{-- REJECT MODAL --}}

<div class="modal fade" id="confirm-delete1" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">

    <div class="modal-header d-block text-center">
        <h4 class="modal-title d-inline-block">{{ __("Reject Withdraw") }}</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
    </div>

      <!-- Modal body -->
      <div class="modal-body">
            <p class="text-center">{{ __("You are about to reject this Withdraw.") }}</p>
            <p class="text-center">{{ __("Do you want to proceed?") }}</p>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-default" data-dismiss="modal">{{ __("Cancel") }}</button>
            <a class="btn btn-danger btn-ok">{{ __("Reject") }}</a>
      </div>

    </div>
  </div>
</div>

{{-- REJECT MODAL ENDS --}}

@endsection    

@section('scripts')

{{-- DATA TABLE --}}

    <script type="text/javascript">
    printWithdraw=()=>{
            let chklist = document.getElementsByClassName("chk");

                                        let ids = [];
                                        for (let i = 1; i < chklist.length; i++) {
                                            if (chklist[i].checked) {
                                                ids.push(chklist[i].value);
                                            }
                                        }
                                        if (ids.length == 0) {
                                            alert("choose at least one");
                                        }
                                        else {
                                            window.location.href = "{{route('print-withdraw')}}?ids="+ JSON.stringify(ids)  ;
                                        }
    }
 $('#geniustable tfoot th').each(function () {
    {{--  if ($(this).index() != 0 && $(this).index() != 1 && $(this).index() != 8) {
        return;
      }  --}}
      var title = $(this).text();
      $(this).html('<input style="width:70px" type="text" placeholder="Search ' + title + '" />');
    }); 
        var table = $('#geniustable').DataTable({
               ordering: false, 
               processing: true,
               serverSide: true,
               ajax: '{{ route('admin-withdraw-datatables') }}', 
               columns: [
                   { data: 'check', name: 'check' },
                   { data: 'id', name: 'id' },
                        { data: 'email', name: 'email' },
                        { data: 'name', name: 'name' },
                        { data: 'phone', name: 'phone' },
                        { data: 'amount', name: 'amount' },
                        { data: 'method', name: 'method' },
                        { data: 'created_at', name: 'created_at' },
                        { data: 'status', name: 'status' },
                        { data: 'action', searchable: false, orderable: false },
                        { data: 'print', searchable: false, orderable: false }
                     ],
               language : {
                    processing: '<img src="{{asset('assets/images/'.$gs->admin_loader)}}">'
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
    $('tfoot').each(function () {
      $(this).insertAfter($(this).siblings('thead'));
    });          
        $('#confirm-delete1').on('show.bs.modal', function(e) {
            $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
        });
$("#checkAll").click(function () {
        let chklist = document.getElementsByClassName("chk");
        let cheked = chklist[0].checked;

        for (let i = 1; i < chklist.length; i++) {
            chklist[i].checked = cheked;
        }
    });
    </script>

{{-- DATA TABLE --}}
    
@endsection   