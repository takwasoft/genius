@foreach($fields as $field)
<div class="item form-group">
                                <label class="control-label col-sm-12" for="name">{{ $field->title }} {{$field->required==1?'*':''}}

                                    </label>
                                <div class="col-sm-12">
                                    <input 
                                    @if($field->required==1)
												required
												@endif
                                     name="additional[{{$field->id}}]"  class="form-control" type="text"  >
                                </div>
                            </div>
@endforeach