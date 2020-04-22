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
            <a href="{{ route('front.faq') }}">
              {{ $langg->lang19 }}
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
<!-- Breadcrumb Area End -->



  <!-- faq Area Start -->
  {{-- <section class="faq-section">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8 col-md-10">
          <div id="accordion">

            @foreach($faqs as $fq)
            <h3 class="heading">{{ $fq->title }}</h3>
            <div class="content">
                <p>{!! $fq->details !!}</p>
            </div>
            @endforeach
          </div>
        </div>
      </div>
    </div>
  </section> --}}


  <div class="container about-sect faq-sect">

        <div class="row py-3">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header">
                        <h6>Pages</h6>
                    </div>
                    <div class="card-body">
                        <ul class="nav nav-pills flex-column aside-map">
                            <li class="nav-item"><a class="nav-link" href="text.html">About Us</a></li>
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
                        <h1 style="font-size:2.5rem;color:#333;">Frequently asked questions</h1>
                        <p class="lead" style="font-size:1.2rem">Are you curious about something? Do you have some kind of problem with our products?</p>
                        <p>Please feel free to contact us, our customer service center is working for you 24/7.</p>

                        <hr>
                        <div class="accordion" id="accordionExample">
                            <div class="card">
                                <div class="card-header" id="headingOne" style="padding: 0 1.25rem;background-color: #006b4d;color:white">
                                    <h2 class="mb-0" style="font-size:2rem;">
                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                     What to do if I have still not received the order?
                                  </button>
                                    </h2>
                                </div>

                                <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
                                            Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                                        <ul>
                                            <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                                            <li>Aliquam tincidunt mauris eu risus.</li>
                                            <li>Vestibulum auctor dapibus neque.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card my-2">
                                <div class="card-header" id="headingTwo" style="padding: 0 1.25rem;background-color: #006b4d;color:white">
                                    <h2 class="mb-0" style="font-size:2rem;">
                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            2. What are the postal rates?
                                  </button>
                                    </h2>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
                                        on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat
                                        craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingThree" style="padding: 0 1.25rem;background-color: #006b4d;color:white">
                                    <h2 class="mb-0" style="font-size:2rem;">
                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                            3. Do you send overseas?
                                  </button>
                                    </h2>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
                                        on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat
                                        craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel-group -->


                    </div>
                </div>

            </div>
            <!-- col-9 end -->
        </div>



    </div>
  <!-- faq Area End-->

@endsection