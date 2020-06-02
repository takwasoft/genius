<div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <iframe width="540" height="315"
							src="{{$youtube}}">
						</iframe>

                    </div>
                    <div class="col-md-6">
						@if($about)
                        <h2 style="font-size:30px">{!!$about->title!!} </h2>
                        <p style="font-size:15px;line-height:1.4">
                            {!!$about->details!!}
						</p>
						@endif
                       
                    </div>
                </div>
            </div>
		
            <div class="container">
                <div class="row padding mt-4">
					@if($buy)
                    <div class="col-md-6  d-none d-md-block">
                        <div class="col-sm-12">
                           <div class="icon-wrapper">
                    <i class="fa fa-search fa-2x" aria-hidden="true"></i>
                </div>
                            <h3 class="text-center"> {!!$buy->title!!} </h3>
                            <p style="font-size:15px;line-height:1.4">
                                {!!$buy->details!!}
                            </p>
                        </div>
					</div>
					@endif
					@if($sell)
                    <div class="col-md-6  d-none d-md-block">
                        <div class="col-sm-12">
                           <div class="icon-wrapper">
                    <i class="fa fa-search fa-2x" aria-hidden="true"></i>
                </div>
                            <h3 class="text-center">                                 {!!$sell->title!!}
							 </h3>
                            <p style="font-size:15px;line-height:1.4">
                                                                {!!$sell->details!!}

                            </p>
                        </div>
					</div>
					@endif
                    <div class="clearfix"></div>
                    <hr class="bottom-hr" />
                </div>
            </div>