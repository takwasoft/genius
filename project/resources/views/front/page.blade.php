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
            <a href="{{ route('front.page',$page->slug) }}">
              {{ $page->title }}
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
<!-- Breadcrumb Area End -->


{{-- 
<section class="about">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="about-info">
            <h4 class="title">
              {{ $page->title }}
            </h4>
            <p>
              {!! $page->details !!}
            </p>

          </div>
        </div>
      </div>
    </div>
  </section> --}}

   <div class="container contact-sect about-sect">

        <div class="row py-3">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header">
                        <h6>Pages</h6>
                    </div>
                    <div class="card-body">
                        <ul class="nav nav-pills flex-column aside-map">
                            <li class="nav-item"><a class="nav-link" href="">About Us</a></li>
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
                        <h1 style="font-size:2.5rem;">About Us</h1>
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
    {{--  about section  --}}

		
        <div id="about" class="mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <iframe width="540" height="315"
							src="https://www.youtube.com/embed/3pV8MRx1n3I">
						</iframe>
                    </div>
                    <div class="col-md-6">
                        <h2 style="font-size:30px">WHAT IS TMIWEB.CO </h2>
                        <p style="font-size:15px;line-height:1.4">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed justo massa, venenatis sit amet lorem sit amet, dignissim laoreet tortor. Nunc iaculis ligula non dolor vulputate, a vulputate diam viverra. Etiam egestas gravida lorem at varius. Suspendisse
                            et tortor quis massa rutrum eleifend non nec dui. Praesent luctus convallis urna. Phasellus non tempor odio, sed faucibus arcu. Duis id convallis odio. Proin sit amet enim scelerisque, convallis metus mollis, varius turpis.
                        </p>
                        <button class="btn btn-success" type="button"style="font-size:13px" > Click Here</button>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row padding mt-4">
                    <div class="col-md-6">
                        <div class="col-sm-12">
                            <div class="icon-wrapper">
                                <i class="fa fa-search fa-2x" aria-hidden="true"></i>
                            </div>
                            <h3 class="text-center"> HOW TO BUY ? </h3>
                            <p style="font-size:15px;line-height:1.4">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed justo massa, venenatis sit amet lorem sit amet, dignissim laoreet tortor. Nunc iaculis ligula non dolor vulputate, a vulputate diam viverra. Etiam egestas gravida lorem at varius. Suspendisse
                                et tortor quis massa rutrum eleifend non nec dui. Etiam egestas gravida lorem at varius. Suspendisse et tortor quis massa rutrum eleifend non nec dui.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-sm-12">
                            <div class="icon-wrapper">
                                <i class="fa fa-search fa-2x" aria-hidden="true"></i>
                            </div>
                            <h3 class="text-center"> HOW TO BUY ? </h3>
                            <p style="font-size:15px;line-height:1.4">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed justo massa, venenatis sit amet lorem sit amet, dignissim laoreet tortor. Nunc iaculis ligula non dolor vulputate, a vulputate diam viverra. Etiam egestas gravida lorem at varius. Suspendisse
                                et tortor quis massa rutrum eleifend non nec dui. Etiam egestas gravida lorem at varius. Suspendisse et tortor quis massa rutrum eleifend non nec dui.
                            </p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <hr class="bottom-hr" />
                </div>
            </div>
        </div>
		<!-- end about  --->

@endsection