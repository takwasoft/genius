@extends('layouts.vendor') 

@section('content')  

<div class="content-area">
							<div class="mr-breadcrumb">
								<div class="row">
									<div class="col-lg-12">
											<h4 class="heading"> Boost Product <a class="add-btn" href="{{ route('vendor-prod-index') }}"><i class="fas fa-arrow-left"></i> {{ $langg->lang550 }}</a></h4>
											<ul class="links">
                      <li>
                        <a href="{{ route('vendor-dashboard') }}">{{ $langg->lang441 }}</a>
                      </li>
                      <li>
                        <a href="javascript:;">{{ $langg->lang444 }} </a>
                      </li>
												<li>
													<a href="javascript:;">{{ $langg->lang629 }}</a>
												</li>
												<li>
													<a href="{{ route('vendor-prod-boost',$product->id) }}">Boost</a>
												</li>
											</ul>
									</div>
								</div>
							</div>
                             <table class='table'>
                                    <tr>
                                        <th>Product</th>
                                        <td>{{$product->name}}</td>
                                    </tr>
                              </table>      
                            <form method="post" action="{{route('vendor-product-boost',$product->id)}}" >

                            {{csrf_field()}}

                            <h5>Choose Boost Type </h5>
                                <table class='table'>
                                    <tr>
                                        <th>Type</th>
                                        <th>Price</th>
                                        <th>Duration</th>
                                        
                                    </tr>
                                        @foreach($boostCategories as $boostCategory)
                                            <td>
                                            <input required type="radio" name="boost_category_id" value="{{$boostCategory->id}}"> 
                                            </td>
                                            <td>
                                            {{$boostCategory->price}} BDT
                                            </td>
                                            <td>
                                            {{$boostCategory->duration}}
                                            </td>
                                        @endforeach
                                </table>
                                 <div class="row">
                                    <div class="col-lg-4">
                                                    <div class="left-area">
						                                <h4 class="heading">Payment Gategway *</h4>
						                            </div>
                                    </div>
                                    <div class="col-lg-7 text-center">
                                        
                                    </div>
                                </div>
                                <div class="row">
                                <div class="col-lg-4">
                                    <div class="left-area">
                                        <button class="btn btn-success" type="submit">Submit</button>
                                    </div>
                                </div>
                                <div class="col-lg-7 text-center">
                                    
                                </div>
                            </div>
                            </form>

@endsection