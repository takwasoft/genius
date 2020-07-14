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
                                            <th style="color:#7f7676">Additional Fields</th>
                                            </tr>
                                            @foreach($topAd->topAdAdditionals as $field)
                                                <tr>
                                                <th>{{$field->additionalField->title}}</th>
                                                <td>{{$field->value}}</td>
                                            </tr>
                                            @endforeach
                                             <tr>
                                            <th style="color:#7f7676">Payment Verification</th>
                                            </tr>
                                            @foreach($topAd->topAdPaymentVerifications as $field)
                                                <tr>
                                                <th>{{$field->paymentVerification->title}}</th>
                                                <td>{{$field->value}}</td>
                                            </tr>
                                            @endforeach
                                             <tr>
                                            <th style="color:#7f7676">Extra Charge</th>
                                            </tr>
                                            @foreach($topAd->topAdExtraCharges as $field)
                                                <tr>
                                                <th>{{$field->extraChargeRule->title}}</th>
                                                <td>{{$field->charge}}</td>
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