@extends('layouts.load')
@section('content')

                        <div class="content-area no-padding">
                            <div class="add-product-content">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="product-description">
                                            <div class="body-area">

                                    <div class="table-responsive show-table">
                                        <table class="table">
                                            <tr>
                                                <th>{{ __("User ID#") }}</th>
                                                <td>{{$withdraw->user->id}}</td>
                                            </tr>
                                            <tr>
                                                <th>{{ __("User Name") }}</th>
                                                <td>
                                                    <a href="{{route('admin-user-show',$withdraw->user->id)}}" target="_blank">{{$withdraw->user->name}}</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>{{ __("Withdraw Amount") }}</th>
                                                <td>{{$sign->sign}}{{ round($withdraw->amount * $sign->value , 2) }}</td>
                                            </tr>
                                            <tr>
                                                <th>{{ __("Withdraw Charge") }}</th>
                                                <td>{{$sign->sign}}{{ round($withdraw->fee * $sign->value , 2) }}</td>
                                            </tr>
                                            <tr>
                                                <th>{{ __("Withdraw Process Date") }}</th>
                                                <td>{{date('d-M-Y',strtotime($withdraw->created_at))}}</td>
                                            </tr>
                                            <tr>
                                                <th>{{ __("Withdraw Status") }}</th>
                                                <td>{{ucfirst($withdraw->status)}}</td>
                                            </tr>
                                            <tr>
                                                <th>{{ __("User Email") }}</th>
                                                <td>{{$withdraw->user->email}}</td>
                                            </tr>
                                            <tr>
                                                <th>{{ __("User Phone") }}</th>
                                                <td>{{$withdraw->user->phone}}</td>
                                            </tr>
                                            <tr>
                                                <th>{{ __("Withdraw Method") }}</th>
                                                <td>{{$withdraw->paymentGateway->title}}</td>
                                            </tr>
                                            <tr>
                                            <th>Additional Fields</th>
                                            </tr>
                                            @foreach($withdraw->additionalFields as $field)
                                                <tr>
                                                <th>{{$field->additionalField->title}}</th>
                                                <td>{{$field->value}}</td>
                                            </tr>
                                            @endforeach
                                           
                                        </table>
                                    </div>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

@endsection