@extends('layouts.front')
@section('content')


<section class="user-dashbord">
    <div class="container">
      <div class="row">
        @include('includes.user-dashboard-sidebar')
        <div class="col-lg-8">
					<div class="user-profile-details">
						<div class="order-history">
							<div class="header-area">
								<h4 class="title">
									{{ $langg->lang372 }}
                            @if($user->id == $conv->sent->id)
                            {{$conv->recieved->name}}    
                            @else
                            {{$conv->sent->name}}
                            @endif <a  class="mybtn1" href="{{ route('user-messages') }}"> <i class="fas fa-arrow-left"></i> {{ $langg->lang373 }}</a>
								</h4>
							</div>


<div class="support-ticket-wrapper ">
                <div class="panel panel-primary">
                      <div class="gocover" style="background: url({{ asset('assets/images/'.$gs->loader) }}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>                  
                    <div class="panel-body" id="messages">
                      @foreach($conv->messages as $message)
                        @if($message->sent_user !=auth()->user()->id)

                        <div class="single-reply-area admin">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="reply-area">
                                        <div class="left">
                                           
                                            <img class="img-circle" src="{{ $message->sender->photo != null ? asset('assets/images/users/'.$message->sender->photo) : asset('assets/images/noimage.png') }}" alt="">
                                            
                                            <p class="ticket-date">{{ $message->sender->name }}</p>
                                        </div>
                                        <div class="right">
                                            <p>
                                        
                                            {{ $message->message }}</p>
                                             @if($message->attachment!='none')
                                                        <a class="btn btn-warning" href="{{asset('assets/images/ticket/'.$message->attachment)}}" target="_blank">
                                                            Attchment
                                                        </a> @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <br>
                        @else

                        <div class="single-reply-area user">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="reply-area">
                                        <div class="left">
                                            <p>{{ $message->message }}</p>
                                        </div>
                                        <div class="right">
                                           
                                            <img class="img-circle" src="{{ $message->sender->photo != null ? asset('assets/images/users/'.$message->sender->photo) : asset('assets/images/noimage.png') }}" alt="">
                                            
                                            <p class="ticket-date">{{$message->sender->name}}</p>
                                             @if($message->attachment!='none')
                                                        <a class="btn btn-warning" href="{{asset('assets/images/ticket/'.$message->attachment)}}" target="_blank">
                                                            Attchment
                                                        </a> @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <br>
                        @endif
                        @endforeach

                    </div>
                    <div class="panel-footer">
                        <form id="messageform" data-href="{{ route('user-vendor-message-load',$conv->id) }}" action="{{route('user-message-post')}}" method="POST">
                            {{csrf_field()}}
                            <div class="form-group">
                                              <input type="hidden" name="conversation_id" value="{{$conv->id}}">
                              

                                <textarea class="form-control" name="message" id="wrong-invoice" rows="5" style="resize: vertical;" required="" placeholder="{{ $langg->lang374 }}"></textarea>
                                <br>
                                            <input id="attach" name="attachment" type="file" class="form-control-file">
                            </div>
                            <div class="form-group">
                                <button class="mybtn1">
                                    {{ $langg->lang375 }}
                                </button>
                            </div>
                        </form>
                    </div>
                </div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

@endsection