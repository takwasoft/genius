@extends('layouts.admin') @section('content')
<style>
    .card-header {
        cursor: pointer;
    }
    
    .card-header:hover {
        background: #eee;
    }
</style>
<div style="width:100%" class="accordion" id="accordionExample">
    <div class="card">
        <div class="card-header" id="headingOne" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
            <h2 class="mb-0">
                <button class="btn btn-link" type="button">
                    Additional Fields
                </button>
            </h2>
        </div>

        <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordionExample">
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Required</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>

                        @foreach ($additionalFields as $af)
                        <tr>
                            <td>{{$af->title}}</td>
                            <td>{{$af->description}}</td>
                            <td>
                                <input disabled type="checkbox" @if($af->required==1) checked @endif >
                            </td>
                            <td>
                                <a href="{{route('admin-payment-additional-edit',$af->id)}}" class="btn btn-sm btn-outline-success">Edit</a>
                                <a onclick="return confirm('Are you sure you want to delete this item?');" href="{{route('admin-payment-additional-delete',$af->id)}}" class="btn btn-outline-danger btn-sm">Delete</a>


                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="card-footer">
                <div class="card card-success">
                    <div class="card-header">
                        <h4 class="card-title">Add New</h4>
                    </div>
                    <div class="card-body">
                        <form method="post" action="{{route('admin-payment-additional')}}">
                            {{csrf_field()}}
                            <input type="hidden" name="fid" value="{{$fid}}">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Title</label>
                                <input required name="title" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Title">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Description</label>
                                <textarea name="description" class="form-control" id="" cols="30" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Required</label>
                                <input name="required" type="checkbox" id="exampleInputEmail1">
                            </div>
                            <div class="form-group">
                                <button class="btn btn-outline-success">
                                    Add
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header" id="headingTwo" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
            <h2 class="mb-0">
                <button class="btn btn-link collapsed" type="button">
                    Payment Verification
                </button>
            </h2>
        </div>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Required</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>

                        @foreach ($paymentVerifications as $pv)
                        <tr>
                            <td>{{$pv->title}}</td>
                            <td>{{$pv->description}}</td>
                            <td>
                                <input type="checkbox" disabled @if($pv->required==1) checked @endif >
                            </td>
                            <td>
                                 <a href="{{route('admin-payment-payment-edit',$pv->id)}}" class="btn btn-sm btn-outline-success">Edit</a>
                                <a onclick="return confirm('Are you sure you want to delete this item?');" href="{{route('admin-payment-verification-delete',$pv->id)}}" class="btn btn-outline-danger btn-sm">Delete</a>

                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="card-footer">
                <div class="card card-success">
                    <div class="card-header">
                        <h4 class="card-title">Add New</h4>
                    </div>
                    <div class="card-body">
                        <form method="post" action="{{route('admin-payment-verification')}}">
                            {{csrf_field()}}
                            <input type="hidden" name="fid" value="{{$fid}}">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Title</label>
                                <input required name="title" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Title">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Description</label>
                                <textarea name="description" class="form-control" id="" cols="30" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Required</label>
                                <input name="required" type="checkbox" id="exampleInputEmail1">
                            </div>
                            <div class="form-group">
                                <button class="btn btn-outline-success">
                                    Add
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header" id="headingThree" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
            <h2 class="mb-0">
                <button class="btn btn-link collapsed" type="button">
                    Extra Charge Rule
                </button>
            </h2>
        </div>
        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Charge</th>
                            <th>From</th>
                            <th>To</th>
                            <th>Fixed</th>
                            <th>CS</th>
                            <th>CR</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>

                        @foreach ($extraCharges as $ec)
                        <tr>
                            <td>{{$ec->title}}</td>
                            <td>{{$ec->description}}</td>
                            <td>{{$ec->charge}}</td>
                            <td>{{$ec->from}}</td>
                            <td>{{$ec->to}}</td>

                            <td>
                                <input type="checkbox" disabled @if($ec->fixed==1) checked @endif >
                            </td>
                            <td>
                                <input type="checkbox" disabled @if($ec->cs==1) checked @endif >
                            </td>
                            <td>
                                <input type="checkbox" disabled @if($ec->cr==1) checked @endif >
                            </td>
                            <td>
                                <a href="{{route('admin-payment-extra-edit',$ec->id)}}" class="btn btn-sm btn-outline-success">Edit</a>
                                <a onclick="return confirm('Are you sure you want to delete this item?');" href="{{route('admin-payment-extra-delete',$ec->id)}}" class="btn btn-outline-danger btn-sm">Delete</a>

                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="card-footer">
                <div class="card card-success">
                    <div class="card-header">
                        <h4 class="card-title">Add New</h4>
                    </div>
                    <div class="card-body">
                        <form method="post" action="{{route('admin-payment-extra')}}">
                            {{csrf_field()}}
                            <input type="hidden" name="fid" value="{{$fid}}">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Title</label>
                                <input required name="title" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Title">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Description</label>
                                <textarea name="description" class="form-control" id="" cols="30" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Charge</label>
                                <input required class="form-control" name="charge" type="text" id="exampleInputEmail1">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">From</label>
                                <input required class="form-control" name="from" type="number" id="exampleInputEmail1">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">To</label>
                                <input required class="form-control" name="to" type="number" id="exampleInputEmail1">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Fixed</label>
                                <input name="fixed" type="checkbox" id="exampleInputEmail1">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Client Send</label>
                                <input name="cs" type="checkbox" id="exampleInputEmail1">
                                <label for="exampleInputEmail1">Client Recieve</label>
                                <input name="cr" type="checkbox" id="exampleInputEmail1">

                            </div>
                            <div class="form-group">
                                <button class="btn btn-outline-success">
                                    Add
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- <div class="card">
        <div class="card-header" id="headingThree" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
            <h2 class="mb-0">
                <button class="btn btn-link collapsed" type="button">
                    Hidden Charge
                </button>
            </h2>
        </div>
        <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Charge</th>
                            <th>From</th>
                            <th>To</th>
                            <th>Fixed</th>
                            <th>CS</th>
                            <th>CR</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>

                        @foreach ($hiddenCharges as $ec)
                        <tr>
                            <td>{{$ec->title}}</td>
                            <td>{{$ec->description}}</td>
                            <td>{{$ec->charge}}</td>
                            <td>{{$ec->from}}</td>
                            <td>{{$ec->to}}</td>

                            <td>
                                <input type="checkbox" disabled @if($ec->fixed==1) checked @endif >
                            </td>
                            <td>
                                <input type="checkbox" disabled @if($ec->cs==1) checked @endif >
                            </td>
                            <td>
                                <input type="checkbox" disabled @if($ec->cr==1) checked @endif >
                            </td>
                            <td>
                                <a href="edit-hidden-charge?id={{$ec->id}}" class="btn btn-sm btn-outline-success">Edit</a>
                                <a href="delete-hidden-charge?id={{$ec->id}}" class="btn btn-outline-danger btn-sm">Delete</a>

                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="card-footer">
                <div class="card card-success">
                    <div class="card-header">
                        <h4 class="card-title">Add New</h4>
                    </div>
                    <div class="card-body">
                        <form method="post" action="add-hidden-charge">
                            {{csrf_field()}}
                            <input type="hidden" name="fid" value="{{$fid}}">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Title</label>
                                <input required name="title" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Title">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Description</label>
                                <textarea name="description" class="form-control" id="" cols="30" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Charge</label>
                                <input required class="form-control" name="charge" type="text" id="exampleInputEmail1">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">From</label>
                                <input required class="form-control" name="from" type="number" id="exampleInputEmail1">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">To</label>
                                <input required class="form-control" name="to" type="number" id="exampleInputEmail1">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Fixed</label>
                                <input name="fixed" type="checkbox" id="exampleInputEmail1">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Client Send</label>
                                <input name="cs" type="checkbox" id="exampleInputEmail1">
                                <label for="exampleInputEmail1">Client Recieve</label>
                                <input name="cr" type="checkbox" id="exampleInputEmail1">

                            </div>
                            <div class="form-group">
                                <button class="btn btn-outline-success">
                                    Add
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
</div>






@endsection