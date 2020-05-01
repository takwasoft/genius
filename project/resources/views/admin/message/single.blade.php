@extends('layouts.admin') @section('content')
<div class="content-area">
    <div class="mr-breadcrumb">
        <div class="row">
            <div class="col-lg-12">
                <h4 class="heading">View Messages</h4>
                <ul class="links">
                    <li>
                        <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                    </li>
                    <li>
                        <a href="javascript:;">{{ __('Messages') }}</a>
                    </li>
                    <li>
                        <a href="javascript:;">Vew Message</a>
                    </li>

                </ul>
            </div> 
        </div>
    </div>
    <div>
        <div class="support-ticket-wrapper ">
            <div class="panel panel-primary">
                <div class="panel-body" id="messages">
                    @foreach($conv->messages as $message)
                        @if($message->sent_user !=$user->id)

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
            </div>
        </div>
    </div>
</div>

@endsection