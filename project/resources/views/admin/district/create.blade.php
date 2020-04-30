@extends('layouts.admin') @section('content')

<div class="content-area">
    <div class="container-fluid">
        <div class="card card-primary">
            <form action="{{URL::to('/admin/districts')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="card-header">
                    Add District <button type="button" onclick="addMore()" class="btn btn-sm btn-success">+</button>
                </div>
                <div class="card-body" id="cb">
                    <div id="ds">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Division</label>
                            <select required name="division_id[]" class="form-control">
                                    @foreach($divisions as $division)
                                            <option value="{{$division->id}}">{{$division->name}}</option>
                                    @endforeach
                            </select>

                        </div>


                        <div class="form-group">
                            <label for="exampleInputEmail1">District Name</label>
                            <input required name="name[]" type="text" class="form-control">
                        </div>
                    </div>


                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>
    <!-- /.container-fluid -->
</div>
<script>
    addMore = () => {
        div = document.createElement('div');
        div.innerHTML = document.getElementById("ds").innerHTML
        document.getElementById("cb").appendChild(div);
    }
</script>

@endsection