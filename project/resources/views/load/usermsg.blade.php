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
                                             @if($message->attachment!='none')
                                                        <a class="btn btn-warning" href="{{asset('assets/images/ticket/'.$message->attachment)}}" target="_blank">
                                                            Attchment
                                                        </a> @endif
                                        </div>
                                        <div class="right">
                                           
                                            <img class="img-circle" src="{{ $message->sender->photo != null ? asset('assets/images/users/'.$message->sender->photo) : asset('assets/images/noimage.png') }}" alt="">
                                            
                                            <p class="ticket-date">{{$message->sender->name}}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <br>
                        @endif
                        @endforeach