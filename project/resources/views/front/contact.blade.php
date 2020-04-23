
@extends('layouts.front')


@section('content')

<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <ul class="pages">
                    <li>
                        <a href="{{ route('front.index') }}">
                            {{ $langg->lang17 }}
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('front.contact') }}">
                            {{ $langg->lang20 }}
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Area End -->


    <!-- Contact Us Area Start -->
    <section class="contact-us">
        {{-- <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact-section-title">
                            {!! $ps->contact_title !!}
                            {!! $ps->contact_text !!}
                    </div>
                </div>
            </div>
            <div class="row justify-content-between">
                <div class="col-xl-7 col-lg-7 col-md-6">
                    <div class="left-area">
                        <div class="contact-form">
                            <div class="gocover" style="background: url({{ asset('assets/images/'.$gs->loader) }}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                            <form id="contactform" action="{{route('front.contact.submit')}}" method="POST">
                                {{csrf_field()}}
                                    @include('includes.admin.form-both')  

                                    <div class="form-input">
                                        <input type="text" name="name" placeholder="{{ $langg->lang47 }} *" required="">
                                        <i class="icofont-user-alt-5"></i>
                                    </div>
                                    <div class="form-input">
                                            <input type="text" name="phonr"  placeholder="{{ $langg->lang48 }} *">
																						<i class="icofont-ui-call"></i>
                                    </div>
                                    <div class="form-input">
                                            <input type="email" name="email"  placeholder="{{ $langg->lang49 }} *" required="">
																						<i class="icofont-envelope"></i>
                                    </div>
                                    <div class="form-input">
                                            <textarea name="text" placeholder="{{ $langg->lang50 }} *" required=""></textarea>
                                    </div>
   
                                    @if($gs->is_capcha == 1)

                                    <ul class="captcha-area">
                                        <li>
                                            <p><img class="codeimg1" src="{{asset("assets/images/capcha_code.png")}}" alt=""> <i class="fas fa-sync-alt pointer refresh_code"></i></p>
                                        
                                        </li>
                                        <li>
                                                <input name="codes" type="text" class="input-field" placeholder="{{ $langg->lang51 }}" required="">
                                                
                                            </li>
                                    </ul>

                                    @endif


                                    <input type="hidden" name="to" value="{{ $ps->contact_email }}">
                                    <button class="submit-btn" type="submit">{{ $langg->lang52 }}</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-5 col-md-6">
                    <div class="right-area">

                        @if($ps->site != null || $ps->email != null )
                        <div class="contact-info ">
                            <div class="left ">
                                    <div class="icon">
                                            <i class="icofont-email"></i>
                                    </div>
                            </div>
                            <div class="content d-flex align-self-center">
                                <div class="content">
                                        @if($ps->site != null && $ps->email != null) 
                                        <a href="{{$ps->site}}" target="_blank">{{$ps->site}}</a>
                                        <a href="mailto:{{$ps->email}}">{{$ps->email}}</a>
                                        @elseif($ps->site != null)
                                        <a href="{{$ps->site}}" target="_blank">{{$ps->site}}</a>
                                        @else
                                        <a href="mailto:{{$ps->email}}">{{$ps->email}}</a>
                                        @endif
                                </div>
                            </div>
                        </div>
                        @endif
                        @if($ps->street != null) 
                        <div class="contact-info">
                                <div class="left">
                                        <div class="icon">
                                                <i class="icofont-google-map"></i>
                                        </div>
                                </div>
                                <div class="content d-flex align-self-center">
                                    <div class="content">
                                            <p>
                                                @if($ps->street != null) 
                                                    {!! $ps->street !!}
                                                @endif
                                            </p>
                                    </div>
                                </div>
                            </div>
                        @endif
                        @if($ps->phone != null || $ps->fax != null ) 
                            <div class="contact-info">
                                    <div class="left">
                                            <div class="icon">
                                                    <i class="icofont-smart-phone"></i>
                                            </div>
                                    </div>
                                    <div class="content d-flex align-self-center">
                                        <div class="content">
                                            @if($ps->phone != null && $ps->fax != null)
                                            <a href="tel:{{$ps->phone}}">{{$ps->phone}}</a>
                                            <a href="tel:{{$ps->fax}}">{{$ps->fax}}</a>
                                            @elseif($ps->phone != null)
                                            <a href="tel:{{$ps->phone}}">{{$ps->phone}}</a>
                                            @else
                                            <a href="tel:{{$ps->fax}}">{{$ps->fax}}</a>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                        @endif


                                <div class="social-links">
                                    <h4 class="title">{{ $langg->lang53 }} :</h4>
                                    <ul>

                                     @if(App\Models\Socialsetting::find(1)->f_status == 1)
                                      <li>
                                        <a href="{{ App\Models\Socialsetting::find(1)->facebook }}" class="facebook" target="_blank">
                                            <i class="fab fa-facebook-f"></i>
                                        </a>
                                      </li>
                                      @endif

                                      @if(App\Models\Socialsetting::find(1)->g_status == 1)
                                      <li>
                                        <a href="{{ App\Models\Socialsetting::find(1)->gplus }}" class="google-plus" target="_blank">
                                            <i class="fab fa-google-plus-g"></i>
                                        </a>
                                      </li>
                                      @endif

                                      @if(App\Models\Socialsetting::find(1)->t_status == 1)
                                      <li>
                                        <a href="{{ App\Models\Socialsetting::find(1)->twitter }}" class="twitter" target="_blank">
                                            <i class="fab fa-twitter"></i>
                                        </a>
                                      </li>
                                      @endif

                                      @if(App\Models\Socialsetting::find(1)->l_status == 1)
                                      <li>
                                        <a href="{{ App\Models\Socialsetting::find(1)->linkedin }}" class="linkedin" target="_blank">
                                            <i class="fab fa-linkedin-in"></i>
                                        </a>
                                      </li>
                                      @endif

                                      @if(App\Models\Socialsetting::find(1)->d_status == 1)
                                      <li>
                                        <a href="{{ App\Models\Socialsetting::find(1)->dribble }}" class="dribbble" target="_blank">
                                            <i class="fab fa-dribbble"></i>
                                        </a>
                                      </li>
                                      @endif

                                        </ul>
                                </div>
                    </div>
                </div>
            </div>
        </div> --}}
         <div class="container contact-sect about-sect">

        <div class="row py-3">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header">
                        <h6>Pages</h6>
                    </div>
                    <div class="card-body">
                        <ul class="nav nav-pills flex-column aside-map">
                            <li class="nav-item"><a class="nav-link" href="text.html">Text page</a></li>
                            <li class="nav-item"><a class="nav-link" href="{{ route('front.contact') }}">Contact page</a></li>
                            <li class="nav-item"><a class="nav-link" href="{{ route('front.faq') }}">FAQ</a></li>
                        </ul>
                    </div>
                </div>

                <div class="banner mt-4">
                    <a href="#">
                        <img src="{{ asset('assets/images/brand/banner.jpg')}}" alt="sales 2014" class="img-responsive img-fluid">
                    </a>
                </div>
            </div>
            <!-- /.col-md-3 -->

            <div class="col-md-9">
                <div class="card">
                    <div class="card-body">
                        <h1 style="font-size:2.5rem;">Contact</h1>
                        <h2 class="lead">Are you curious about something? Do you have some kind of problem with our products?</h2>
                        <p>Please feel free to contact us, our customer service center is working for you 24/7.</p>

                        <hr>

                        <div class="row pt-3">
                            <div class="col-sm-4">
                                <h3><i class="fa fa-map-marker"></i> Address</h3>
                                <p>13/25 New Avenue
                                    <br>New Heaven
                                    <br>45Y 73J
                                    <br>England
                                    <br>
                                    <strong>Great Britain</strong>
                                </p>
                            </div>
                            <!-- /.col-sm-4 -->
                            <div class="col-sm-4">
                                <h3><i class="fa fa-phone"></i> Call center</h3>
                                <p class="text-muted">This number is toll free if calling from Great Britain otherwise we advise you to use the electronic form of communication.</p>
                                <p><strong>+33 555 444 333</strong>
                                </p>
                            </div>
                            <!-- /.col-sm-4 -->
                            <div class="col-sm-4">
                                <h3><i class="fa fa-envelope"></i> Electronic support</h3>
                                <p class="text-muted">Please feel free to write an email to us or to use our electronic ticketing system.</p>
                                <ul>
                                    <li><strong><a href="mailto:">info@fakeemail.com</a></strong>
                                    </li>
                                    <li><strong><a href="#">Ticketio</a></strong> - our ticketing support platform</li>
                                </ul>
                            </div>
                            <!-- /.col-sm-4 -->
                        </div>
                        <!-- /.row -->

                        <hr>

                        <div id="map">

                        </div>

                        <hr>
                        <h2 style="font-size:2rem">Contact form</h2>

                        <form>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="firstname">Firstname</label>
                                        <input type="text" class="form-control" id="firstname">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="lastname">Lastname</label>
                                        <input type="text" class="form-control" id="lastname">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="text" class="form-control" id="email">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="subject">Subject</label>
                                        <input type="text" class="form-control" id="subject">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="message">Message</label>
                                        <textarea id="message" class="form-control"></textarea>
                                    </div>
                                </div>

                                <div class="col-sm-12 text-center">
                                    <button type="submit" class="btn btn-my"><i class="far fa-envelope"></i> Send message</button>

                                </div>
                            </div>
                            <!-- /.row -->
                        </form>
                    </div>
                </div>

            </div>
            <!-- col-9 end -->
        </div>
    </div>
    </section>
    <!-- Contact Us Area End-->

@endsection