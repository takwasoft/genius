						<div class="item-filter" style="display:inline">
							<div class="row">
							<div class="col-7">
							 <form action="{{ route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')]) }}">
                        <div class="form-group input-group">
                            <input value="{{ request()->input('search') }}" name="search" type="text" class="form-control" placeholder="আপনি কি খুঁজছেন">
                            <div class="input-group-append">
                                <input
                                 
                                class="btn" type="submit" value="সার্চ" style="color:white;background:rgb(0, 152, 119);">
                            </div>
                        </div>
                    </form></div>
							<div class="col-4 offset-1"><ul class="filter-list" style="margin-right:0">
								<li class="item-short-area">
										<p>{{$langg->lang64}} :</p>
										<form id="sortForm" class="d-inline-block" action="{{ route('front.vendor', Request::route('slug')) }}" method="get">
											@if (!empty(request()->input('min')))
												<input type="hidden" name="min" value="{{ request()->input('min') }}">
											@endif
											@if (!empty(request()->input('max')))
												<input type="hidden" name="max" value="{{ request()->input('max') }}">
											@endif
											<select name="sort" class="short-item" onchange="document.getElementById('sortForm').submit()">
		                    <option value="date_desc" {{ request()->input('sort') == 'date_desc' ? 'selected' : '' }}>{{$langg->lang65}}</option>
		                    <option value="date_asc" {{ request()->input('sort') == 'date_asc' ? 'selected' : '' }}>{{$langg->lang66}}</option>
		                    <option value="price_asc" {{ request()->input('sort') == 'price_asc' ? 'selected' : '' }}>{{$langg->lang67}}</option>
		                    <option value="price_desc" {{ request()->input('sort') == 'price_desc' ? 'selected' : '' }}>{{$langg->lang68}}</option>
											</select>
										</form>
								</li>
							</ul></div></div>
						</div> 
