  @extends('layouts.admin')

@section('content')
  <div class="card" style="width:100%">
        <div class="card-header">
            <h4>Sort Sub District Of {{$district->name}}</h4>
        </div>
        <div class="card-body">
            <br>
                <ul class="list-group" id="my-list">
                        @foreach ($subdistricts as $subdistrict)
                        <li class="list-group-item" data-x="{{$subdistrict->id}}">
                                <b>{{$subdistrict->name}}</b>
                        </li>
                    @endforeach
                </ul>
                <button class="btn btn-info" onclick="update()">
                Update
            </button>
        </div>
        <div class="card-footer">
            
        </div>
    </div>

@endsection
@section('scripts')
<script src="https://cdnjs.cloudflare.com/ajax/libs/Sortable/1.10.1/Sortable.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-sortablejs@latest/jquery-sortable.js"></script>
<script>
      $(function () {
    $('#my-list').sortable({
    
	// Event when you move an item in the list or between lists
	onMove: function (/**Event*/evt, /**Event*/originalEvent) {
		// Example: https://jsbin.com/nawahef/edit?js,output
		evt.dragged; // dragged HTMLElement
		evt.draggedRect; // DOMRect {left, top, right, bottom}
		evt.related; // HTMLElement on which have guided
		evt.relatedRect; // DOMRect
		evt.willInsertAfter; // Boolean that is true if Sortable will insert drag element after target by default
		originalEvent.clientY; // mouse position
		// return false; — for cancel
		// return -1; — insert before target
		// return 1; — insert after target
	},

	// Called when creating a clone of element
	onClone: function (/**Event*/evt) {
		var origEl = evt.item;
		var cloneEl = evt.clone;
	},

	// Called when dragging element changes position
	onChange: function(/**Event*/evt) {
       console.log(evt)
		evt.newIndex // most likely why this event is used is to get the dragging element's current index
		// same properties as onEnd
	}
})
      });
      update=()=>{
          
        lists=document.getElementById("my-list").children;
        let ar=[];
        for(i=0;i<lists.length;i++){
            ar.push(lists[i].getAttribute("data-x"));
        }
        window.location.href="{{URL::to('/admin/subdistrict/serial/update/'.$district->id)}}?lists="+JSON.stringify(ar);
      }
</script>
@endsection