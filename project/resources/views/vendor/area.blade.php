<option>Choose {{$name}}</option>
@foreach ($options as $option)
    <option value="{{$option->id}}">{{$option->name}}</option>
@endforeach