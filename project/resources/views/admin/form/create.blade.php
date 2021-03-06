@extends('layouts.admin')

@section('content')
 <div class="content-area">
 <div class="container-fluid">
            <div class="card card-primary">
                <form action="{{URL::to('/')}}/{{$action}}" method="post" enctype="multipart/form-data">
                  {{csrf_field()}}
                    <div class="card-header">
                        Add {{$name}}
                    </div>
                    <div class="card-body">
                       @foreach($fields as $field)
                        @if($field["type"]=="text")
                        <div class="form-group">
                                <label for="exampleInputEmail1">{{$field['label']}}</label>
                                <input @if($field["required"])
                                required
                                @endif
                                name="{{$field['name']}}" type="text" class="form-control" 
                                    >
                            </div>
                            @elseif($field["type"]=="date")
                        <div class="form-group">
                                <label for="exampleInputEmail1">{{$field['label']}}</label>
                                <input @if($field["required"])
                                    required
                                    @endif
                                    name="{{$field['name']}}" type="date" class="form-control">
                            </div>
                             @elseif($field["type"]=="number")
                        <div class="form-group">
                                <label for="exampleInputEmail1">{{$field['label']}}</label>
                                <input @if($field["required"])
                                    required
                                    @endif
                                    name="{{$field['name']}}" type="number" class="form-control">
                            </div>
                        @elseif($field["type"]=="textarea")
                        <div class="form-group">
                                <label for="exampleInputEmail1">{{$field['label']}}</label>
                                <textarea name="{{$field['name']}}" class="form-control"></textarea>
                                
                            </div>
                        @elseif($field["type"]=="select")
                        <div class="form-group">
                                <label for="exampleInputEmail1">{{$field['label']}}</label>
                                <select @if($field["required"])
                                required
                                @endif
                                 name="{{$field['name']}}"  class="form-control" >
                                            @foreach($field["options"] as $option)
                                                <option value="{{$option['id']}}">
                                                    {{$option[$field["optionlabel"]]}}
                                                </option>
                                            @endforeach
                                </select>
                                
                            </div>
                        @elseif($field["type"]=="radio")
                        <div class="form-group">
                                <label for="exampleInputEmail1">{{$field['label']}}</label>
                                <input @if($field["required"])
required
@endif
 name="{{$field['name']}}" type="text" class="form-control" 
                                    >
                            </div>
                        @elseif($field["type"]=="checkbox")
                        <div class="form-group">
                                <label for="exampleInputEmail1">{{$field['label']}}</label>
                                <input @if($field["required"])
required
@endif
 name="{{$field['name']}}" type="checkbox" 
                                    >
                            </div>
                            @elseif($field["type"]=="file")
                        <div class="form-group">
                                <label for="exampleInputEmail1">{{$field['label']}}</label>
                                <input @if($field["required"])
required
@endif
 name="{{$field['name']}}" type="file" class="form-control-file" 
                                    >
                            </div>
                        @endif

                            
                       @endforeach
                    </div>
                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary">Add</button>
                    </div>
                </form>
            </div>
        </div><!-- /.container-fluid -->
 </div>
@endsection