@extends('layouts.vendor')

@section('content')
<style>
.navbar-tmiweb {
    padding-bottom: 10px;
    box-shadow: 0px 0px 8px;
}

.navbar-text span {
    float: left;
    margin-right: 10px;
}

.progress1 {
    margin-top: 15px;
    counter-reset: step;
    height: 60px;
}

.progress1 li {
    list-style-type: none;
    float: left;
    width: 20%;
    text-align: center;
    font-size: 16px;
    line-height: .7;
    position: relative;
    color: #ddd;
}

.progress1 li:before {
    content: counter(step);
    counter-increment: step;
    color: white;
    width: 35px;
    height: 35px;
    display: block;
    border-radius: 100px;
    line-height: 35px;
    text-align: center;
    margin: 0 auto 10px auto;
    background-color: #9B9B9B;
}

.progress1 li:after {
    content: '';
    background-color: #ddd;
    height: 4px;
    width: 100%;
    position: absolute;
    top: 15px;
    left: -50%;
    z-index: -1;
}

.progress1 li:first-child:after {
    display: none;
}

.progress1 li.active {
    color: black;
}

.progress1 li.active:before {
    background-color: #B81D22;
    color: white;
    border: none;
}

.progress1 li.active:after {
    background-color: #B81D22;
}

.create-product-controls {
    margin: 20px 0;
    padding: 10px;
    border: 1px solid #ddd;
}

.create-product-details {
    padding: 10px;
    border: 1px solid #ddd;
}

.create-product-details .control-label {
    text-align: left;
}

.input-file {
    height: 250px;
    width: 100%;
    position: relative;
}

.input-file::after {
    height: 250px;
    width: 100%;
    border: 3px solid #ddd;
    position: absolute;
    content: '\f055';
    font-family: 'FontAwesome';
    font-size: 3em;
    padding-top: 100px;
    top: 0;
    left: 0;
    text-align: center;
    cursor: pointer;
    background-color: white;
    z-index: -1;
}

.input-file input[type='file'] {
    height: 250px;
    width: 100%;
    cursor: pointer;
    opacity: 0;
}

.width-control {
    width: 20%;
}

.error-page {
    border: 2px solid #ddd;
    padding: 20px;
    text-align: center;
}

.error-page>p {
    padding: 20px 0;
}

.btn-my {
    background-color: #0a5641;
    color: white;
    border: none;
    transition: 1s;
}

.btn-my:hover {
    background-color: #B81D22;
    color: white;
}

.create-product-details {
    padding: 10px;
    border: 1px solid #ddd;
}

.payments,
.return-policy {
    width: 100%;
    border: 1px solid;
    padding: 10px 10px 0;
}

.payments img {
    margin: 17px 0;
}


/* category page design */

.menu-mobile {
    display: none;
    padding: 20px;
    background-color: #B81D22;
    color: white;
    font-size: 1.5em;
    border-radius: 10px;
    margin-bottom: 10px;
}

.menu-mobile:after {
    content: "\f0c9";
    font-family: 'FontAwesome';
    font-size: 1.7em;
    padding: 0;
    float: right;
    position: relative;
    top: 50%;
    color: white;
    -webkit-transform: translateY(-25%);
    -ms-transform: translateY(-25%);
    transform: translateY(-25%);
}

.menu-dropdown-icon:before {
    content: "\f0c9";
    font-family: 'FontAwesome';
    display: none;
    cursor: pointer;
    float: right;
    padding: 1.5em 2em;
    background: #fff;
    color: #333;
}

.megamenu>ul:before,
.megamenu>ul:after {
    content: "";
    display: table;
}

.megamenu>ul:after {
    clear: both;
}

.megamenu>ul>li a {
    text-decoration: none;
    padding: 11px;
}

.megamenu-caret:before {
    content: "\f105";
    position: absolute;
    font-family: 'FontAwesome';
    color: #B81D22;
    right: 12px;
}

.megamenu>ul {
    position: relative;
}

.megamenu>ul>li>ul {
    display: none;
    width: 700px;
    background: #f0f0f0;
    padding: 20px;
    position: absolute;
    z-index: 99;
    left: 97%;
    top: 9%;
    margin: -40px 0;
    list-style: none;
    border-top: 6px solid #024c0b;
    border-bottom: 2px solid #B81D22;
    box-sizing: border-box;
    border: 1px solid #DBF1FE;
    background-color: #DBF1FE;
}

.megamenu>ul>li>ul:before,
.megamenu>ul>li>ul:after {
    content: "";
    display: table;
}

.megamenu>ul>li>ul:after {
    clear: both;
}

.megamenu>ul>li>ul>li {
    margin: 0;
    padding-bottom: 0;
    list-style: none;
    width: 33.33%;
    background: none;
    float: left;
}

.megamenu>ul>li>ul>li a {
    color: #777;
    padding: .2em 0;
    width: 95%;
    font-size: 1.2em;
    display: block;
    border-bottom: 1px solid #ccc;
}

.megamenu>ul>li>ul>li a:hover {
    color: #B81D22;
}

.megamenu>ul>li>ul>li>ul {
    display: block;
    padding: 0;
    margin: 10px 0 0;
    list-style: none;
    box-sizing: border-box;
}

.megamenu>ul>li>ul>li>ul:before,
.megamenu>ul>li>ul>li>ul:after {
    content: "";
    display: table;
}

.megamenu>ul>li>ul>li>ul:after {
    clear: both;
}

.megamenu>ul>li>ul>li>ul>li {
    float: left;
    width: 100%;
    padding: 10px 0;
    margin: 0;
    font-size: .8em;
}

.megamenu>ul>li>ul>li>ul>li a {
    border: 0;
}

.megamenu>ul>li>ul.normal-sub {
    width: 300px;
    left: auto;
    padding: 10px 20px;
}

.megamenu>ul>li>ul.normal-sub>li {
    width: 100%;
}

.megamenu>ul>li>ul.normal-sub>li a {
    border: 0;
    padding: 1em 0;
}

.megamenu ul li:hover>ul {
    display: block;
}

.megamenu ul ul ul li:hover>ul {
    display: block;
}

.megamenu>ul>li>ul.sub-menu1 {
    width: 280px;
    padding: 0px;
    top: 0;
    left: 100%;
    margin: -5px 15px;
}

.megamenu>ul>li>ul.sub-menu1>li {
    width: 100%;
    padding: 5px;
}

.megamenu>ul>li>ul.sub-menu1>li>ul {
    margin-top: 0px;
}

.megamenu>ul>li>ul.sub-menu1>li>ul>li {
    border-bottom: 1px solid #ccc;
    border-top: 1px solid #ccc;
    padding: 0px;
}

.megamenu>ul>li>ul>li>a {
    width: 100%;
    padding: 12px;
}

.megamenu>ul>li>ul.sub-menu1>li>ul>li>a {
    width: 100%;
    font-size: 15px;
    padding: 10px;
}

.megamenu>ul>li>ul.sub-menu1>li>ul>li>ul.sub-menu2 {
    display: none;
    position: absolute;
    top: 0;
    left: 100%;
    margin: 5px 15px;
    list-style: none;
    box-sizing: border-box;
    width: 280px;
}

.megamenu>ul>li>ul.sub-menu1>li>ul>li>ul>li>a {
    width: 100%;
    font-size: 15px;
    padding: 10px;
}

.megamenu>ul>li>ul.sub-menu1>li>ul>li>ul.sub-menu2>li>a {
    width: 100%;
    padding: 12px;
}

.megamenu>ul>li>ul.sub-menu1>li>ul>li>ul.sub-menu2>li>ul>li>a {
    width: 100%;
    padding: 10px;
    font-size: 15px;
}

.megamenu>ul>li>ul.sub-menu1>li>ul>li>ul.sub-menu2>li>ul>li {
    border-bottom: 1px solid #ccc;
    border-top: 1px solid #ccc;
}

.megamenu>ul>li>ul.sub-menu1>li>ul>li:hover ul {
    display: block;
}


/*sub menu three*/

.megamenu>ul>li>ul.sub-menu1>li>ul>li>ul.sub-menu2>li>ul>li>ul.sub-menu3 {
    display: none;
    position: absolute;
    top: 0;
    left: 100%;
    margin: 0 15px;
    list-style: none;
    box-sizing: border-box;
    width: 280px;
}

.megamenu>ul>li>ul.sub-menu1>li>ul>li>ul>li>ul>li>ul>li>a {
    width: 100%;
    font-size: 15px;
    padding: 12px;
}

.megamenu>ul>li>ul.sub-menu1>li>ul>li>ul.sub-menu2>li>ul>li>ul>li>ul>li>a {
    width: 100%;
    padding: 10px;
}

.megamenu>ul>li>ul.sub-menu1>li>ul>li>ul.sub-menu2>li>ul>li>ul>li>ul>li>a {
    width: 100%;
    padding: 10px;
    font-size: 15px;
}

.megamenu>ul>li>ul.sub-menu1>li>ul>li>ul.sub-menu2>li>ul>li>ul>li>ul>li {
    border-bottom: 1px solid #ccc;
    border-top: 1px solid #ccc;
}

ol,
ul {
    list-style: none;
    margin: 0;
    padding: 0;
}

.categories-list .list-group-item {
    border-radius: 0;
}

.categories-list .active {
    background-color: #024c0b;
    font-size: 1em;
    border: 0px solid;
}

.categories-list i {
    padding-right: 10px;
}

.megamenu>ul>li>a {
    color: #777;
}


/* ––––––––––––––––––––––––––––––––––––––––––––––––––
Mobile style's
–––––––––––––––––––––––––––––––––––––––––––––––––– */

@media only screen and (max-width: 1200px) {
    .megamenu>ul>li a {
        padding: 7.8px 10px;
    }
}

@media only screen and (max-width: 992px) {
    .megamenu>ul>li>ul {
        width: 600px;
        left: 12%;
        margin: 0px 0;
    }
}

@media only screen and (max-width: 768px) {
    .megamenu>ul>li>ul {
        width: 100%;
        left: 0%;
        margin: 0px 0;
    }
}

@media only screen and (max-width: 768px) {
    .menu-mobile {
        display: block;
    }
    .menu-dropdown-icon:before {
        display: block;
    }
    .megamenu>ul {
        display: none;
    }
    .megamenu>ul>li {
        width: 100%;
        float: none;
        display: block;
    }
    .megamenu>ul>li a {
        padding: 1.5em;
        width: 100%;
        display: block;
    }
    .megamenu>ul>li>ul {
        position: relative;
    }
    .megamenu>ul>li>ul.normal-sub {
        width: 100%;
    }
    .megamenu>ul>li>ul>li {
        float: none;
        width: 100%;
        margin-top: 20px;
    }
    .megamenu>ul>li>ul>li:first-child {
        margin: 0;
    }
    .megamenu>ul>li>ul>li>ul {
        position: relative;
    }
    .megamenu>ul>li>ul>li>ul>li {
        float: none;
    }
    .megamenu .show-on-mobile {
        display: block;
    }
}

.megamenu .show-on-mobile {
    display: block;
}

.megamenu .show-on-mobile {
    display: block;
}

.megamenu .show-on-mobile {
    display: block;
}
</style>
<div class="content-area">
            <div class="mr-breadcrumb">
              <div class="row">
                <div class="col-lg-12">
                    <h4 class="heading">{{ $langg->lang445 }}</h4>
                    <ul class="links">
                      <li>
                        <a href="{{ route('vendor-dashboard') }}">{{ $langg->lang441 }}</a>
                      </li>
                      <li>
                        <a href="javascript:;">{{ $langg->lang444 }} </a>
                      </li>
                      <li>
                        <a href="{{ route('vendor-prod-index') }}">{{ $langg->lang446 }}</a>
                      </li>
                      <li>
                        <a href="{{ route('select-area') }}">{{ $langg->lang445 }}</a>
                      </li>
                    </ul>
                </div>
              </div>
            </div>
            <div class="add-product-content">
              <div class="row">
                <div class="col-lg-12">
                  <div class="product-description">
                    <div class="heading-area">
                      <h2 class="title">
                          Select Area
                      </h2>
                    </div>
                  </div>
                </div>
              </div>
              <div class="ap-product-categories">
                <div class="row">
                  
                   <main>
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-3">
                    <div class="list-group categories-list megamenu">
                        <ul>
                            <a class="list-group-item active text-light">
                                <i class="fa fa-bars" aria-hidden="true"></i>Division
                            </a>
                            <li><a href="#" class="list-group-item megamenu-caret">
                            Dhaka</a>

                                <ul style='background-color:#fff;border:none;display:block' class='sub-menu1'>
                                    <li><a href="#" class="list-group-item active">District</a>
                                        <ul>
                                            <li><a class="list-group-item megamenu-caret" href="#">Dhaka</a></li>
                                            <li><a href="#" class="list-group-item megamenu-caret">Ghazipur</a>

                                                <ul class='sub-menu2' style="background-color:#fff;border:none;display:block">
                                                    <li><a href="#" class="list-group-item active">Sub-District</a>
                                                        <ul>
                                                            <li><a class="list-group-item megamenu-caret" href="{{route('vendor-prod-physical-create')}}"> Gazipur Sadar Upazila</a>

                                                                <ul class='sub-menu3' style="background-color:#fff;border:none;display:block">
                                                                    <li><a href="#" class="list-group-item active">Area</a>
                                                                        <ul>
                                                                            <li><a class="list-group-item megamenu-caret" href="{{route('vendor-prod-physical-create')}}">Lamchary 5</a>
                                                                            </li>
                                                                            <li><a href="#" class="list-group-item megamenu-caret">Samserabah 5</a></li>
                                                                            <li><a href="#" class="list-group-item megamenu-caret">Chor camita 5</a></li>
                                                                            <li><a href="#" class="list-group-item megamenu-caret"> Sonar bangla 5</a></li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>

                                                            </li>
                                                            <li><a href="#" class="list-group-item megamenu-caret"> Kaliakair Upazila</a></li>
                                                            <li><a href="#" class="list-group-item megamenu-caret"> Kapasia Upazila</a></li>
                                                            <li><a href="#" class="list-group-item megamenu-caret"> Sreepur Upazila</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>

                                            </li>
                                            <li><a href="#" class="list-group-item megamenu-caret">Kishoreganj</a></li>
                                            <li><a href="#" class="list-group-item megamenu-caret">Manikganj</a></li>
                                        </ul>
                                    </li>
                                </ul>

                            </li>
                            <li><a href="#" class="list-group-item megamenu-caret">
                            Chittagong</a>

                                <ul style='background-color:#fff;border:none;' class='sub-menu1'>
                                    <li><a href="#" class="list-group-item active">Sub-Category</a>
                                        <ul>
                                            <li><a class="list-group-item megamenu-caret" href="#"> piash shirt</a></li>
                                            <li><a href="#" class="list-group-item megamenu-caret"> piash pant</a>

                                                <ul class='sub-menu2' style="background-color:#fff;border:none;display:block">
                                                    <li><a href="#" class="list-group-item active">Sub-Category</a>
                                                        <ul>
                                                            <li><a class="list-group-item megamenu-caret" href="#"> piash shirt</a></li>
                                                            <li><a href="#" class="list-group-item megamenu-caret"> piash pant</a></li>
                                                            <li><a href="#" class="list-group-item megamenu-caret"> piash t-shirt</a></li>
                                                            <li><a href="#" class="list-group-item megamenu-caret"> piash shirt</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>

                                            </li>
                                            <li><a href="#" class="list-group-item megamenu-caret"> piash t-shirt</a></li>
                                            <li><a href="#" class="list-group-item megamenu-caret"> piash shirt</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>

                            <li>
                                <a href="#" class="list-group-item">
                                    </i>Barisal</a>
                            </li>

                            <li><a href="#" class="list-group-item">
                           Khulna</a>
                            </li>

                            <li><a href="#" class="list-group-item">
                            Mymensingh</a>
                            </li>

                            <li><a href="#" class="list-group-item">
                            Rajshahi</a>
                            </li>

                            <li><a class="list-group-item megamenu-caret" href="#" class="list-group-item">
                            Rangpur</a>

                                <ul style='background-color:#fff;border:none;' class='sub-menu1'>
                                    <li><a href="#" class="list-group-item active">Category</a>
                                        <ul>
                                            <li><a class="list-group-item megamenu-caret" href="#">bangladeshi shirt</a></li>
                                            <li><a href="#" class="list-group-item megamenu-caret">bangladeshi pant</a></li>
                                            <li><a href="#" class="list-group-item megamenu-caret">bangladeshi t-shirt 55</a>

                                                <ul class='sub-menu2' style="background-color:#fff;border:none;">
                                                    <li><a href="#" class="list-group-item active">Sub-Category</a>
                                                        <ul>
                                                            <li><a class="list-group-item megamenu-caret" href="#"> piash shirt</a></li>
                                                            <li><a href="#" class="list-group-item megamenu-caret"> piash pant</a></li>
                                                            <li><a href="#" class="list-group-item megamenu-caret"> piash t-shirt</a></li>
                                                            <li><a href="#" class="list-group-item megamenu-caret"> piash shirt</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>

                                            </li>
                                            <li><a href="#" class="list-group-item megamenu-caret">bangladeshi shirt</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>

                            <li><a href="#" class="list-group-item">
                            Sylhet</a>
                            </li>

                        </ul>
                    </div>
                </div>
                <!-- end mega menu area  --->
            </div>
        </div>


    </main>
    <div class="container">
        <div class="col-xs-12 create-product-controls clearfix">
            <button type="button" class="btn btn-my float-left">Back</button>
            <button type="button" class="btn btn-my pull-right float-right">Next</button>
        </div>
                </div>
              </div>
            </div>
          </div>

@endsection