@extends('layouts.admin')

@section('content')
<div style="width:100%" class="accordion" id="accordionExample">
<div class="card card-success">
                    <div class="card-header">
                        <h4 class="card-title">Edit</h4>
                    </div>
                    <div class="card-body">
                            <form method="post" action="{{route('admin-payment-extra-update')}}">
                        {{csrf_field()}}
                                <input type="hidden" name="id" value="{{$field->id}}">
                                <div class="form-group">
                                        <label for="exampleInputEmail1">Title</label>
                                        <input value="{{$field->title}}" required name="title" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Title">
                                      </div>
                                      <div class="form-group">
                                            <label for="exampleInputEmail1">Description</label>
                                            <textarea name="description" class="form-control" id="" cols="30" rows="3">{{$field->description}}</textarea>
                                          </div>
                                          <div class="form-group">
                                            <label for="exampleInputEmail1">Charge</label>
                                            <input value="{{$field->charge}}" required class="form-control" name="charge" type="text"  id="exampleInputEmail1" >
                                          </div>
                                          <div class="form-group">
                                            <label for="exampleInputEmail1">From</label>
                                            <input value="{{$field->from}}" required class="form-control" name="from" type="number"  id="exampleInputEmail1" >
                                          </div>
                                          <div class="form-group">
                                            <label for="exampleInputEmail1">To</label>
                                            <input value="{{$field->to}}" required class="form-control" name="to" type="number"  id="exampleInputEmail1" >
                                          </div>
                                          <div class="form-group">
                                                <label for="exampleInputEmail1">Fixed</label>
                                                <input
                                                @if($field->fixed==1)
                                            checked
                                            @endif
                                                  name="fixed" type="checkbox"  id="exampleInputEmail1" >
                                              </div>
                                              <div class="form-group">
                                                <label for="exampleInputEmail1">Client Send</label>
                                                <input
                                                @if($field->cs==1)
                                            checked
                                            @endif
                                                  name="cs" type="checkbox"  id="exampleInputEmail1" >
                                                <label for="exampleInputEmail1">Client Recieve</label>                                                
                                                <input
                                                @if($field->cr==1)
                                            checked
                                            @endif
                                                  name="cr" type="checkbox"  id="exampleInputEmail1" >
                                              
                                            </div>
                                          <div class="form-group">
                                              <button class="btn btn-outline-success">
                                                  Update
                                              </button>
                                          </div>
                            </form>
                    </div>
                </div>
                </div>
@endsection