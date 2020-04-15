@extends('layouts.admin')

@section('content')
 <div class="content-area">
  <div class="card card-primary">
                <form action="{{URL::to('/')}}/{{$action}}" method="post" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <input type="hidden" name="_method" value="PUT">
                    <div class="card-header">
                        Edit {{$name}}
                    </div>
                    <div class="card-body">
                        @foreach($fields as $field)
                        @if($field["type"]=="text")
                        <div class="form-group">
                            <label for="exampleInputEmail1">{{$field['label']}}</label>
                            <input value="{{$field['value']}}" @if($field["required"]) required @endif name="{{$field['name']}}" type="text"
                                class="form-control">
                        </div>
                        @elseif($field["type"]=="date")
                        <div class="form-group">
                                <label for="exampleInputEmail1">{{$field['label']}}</label>
                                <input value="{{$field['value']}}" @if($field["required"])
                                    required
                                    @endif
                                    name="{{$field['name']}}" type="date" class="form-control">
                            </div>
                             @elseif($field["type"]=="number")
                        <div class="form-group">
                                <label for="exampleInputEmail1">{{$field['label']}}</label>
                                <input value="{{$field['value']}}" @if($field["required"])
                                    required
                                    @endif
                                    name="{{$field['name']}}" type="number" class="form-control">
                            </div>
                        @elseif($field["type"]=="textarea")
                        <div class="form-group">
                            <label for="exampleInputEmail1">{{$field['label']}}</label>
                            <textarea name="{{$field['name']}}" class="form-control">{{$field['value']}}</textarea>

                        </div>
                        @elseif($field["type"]=="select")
                      <div class="form-group">
                                <label for="exampleInputEmail1">{{$field['label']}}</label>
                                <select @if($field["required"])
                                required
                                @endif
                             
                                 name="{{$field['name']}}"  class="form-control" >
                                            @foreach($field["options"] as $option)
                                               
                                                <option
                                                @if($field["value"]==$option['id'])
                                        selected
                                @endif
                                                 value="{{$option['id']}}">
                                                    {{$option[$field["optionlabel"]]}}
                                                </option>
                                            @endforeach
                                </select>
                                
                            </div>
                        @elseif($field["type"]=="radio")
                        <div class="form-group">
                            <label for="exampleInputEmail1">{{$field['label']}}</label>
                            <input @if($field["required"]) required @endif name="{{$field['name']}}" type="text"
                                class="form-control">
                        </div>
                        @elseif($field["type"]=="checkbox")
                        <div class="form-group">
                            <label for="exampleInputEmail1">{{$field['label']}}</label>
                            <input  @if($field["value"]==1) checked @endif @if($field["required"]) required @endif name="{{$field['name']}}" type="checkbox">
                        </div>
                        @elseif($field["type"]=="file")
                        <div class="form-group">
                            <label for="exampleInputEmail1">{{$field['label']}}</label>
                            <input @if($field["required"]) required @endif name="{{$field['name']}}" type="file"
                                class="form-control-file">
                        </div>
                        @endif


                        @endforeach
                    </div>
                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </form>
            </div>
 </div>

 @endsection