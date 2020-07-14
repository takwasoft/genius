@extends('layouts.admin')

@section('content')
<div style="width:100%" class="accordion" id="accordionExample">
<div class="card card-success">
                <div class="card-header">
                    <h4 class="card-title">Add New</h4>
                </div>
                <div class="card-body">
                        <form method="post" action="{{route('admin-payment-payment-update')}}">
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
                                            <label for="exampleInputEmail1">Required</label>
                                            <input 
                                            @if($field->required==1)
                                            checked
                                            @endif
                                             name="required" type="checkbox"  id="exampleInputEmail1" >
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
@endsection