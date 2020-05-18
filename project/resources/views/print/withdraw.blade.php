<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="{{$seo->meta_keys}}">
    <meta name="author" content="GeniusOcean">

    <title>{{$gs->title}}</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="{{asset('assets/print/bootstrap/dist/css/bootstrap.min.css')}}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('assets/print/font-awesome/css/font-awesome.min.css')}}">
    <!-- Ionicons -->
    <link rel="stylesheet" href="{{asset('assets/print/Ionicons/css/ionicons.min.css')}}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset('assets/print/css/style.css')}}">
    <link href="{{asset('assets/print/css/print.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <link rel="icon" type="image/png" href="{{asset('assets/images/'.$gs->favicon)}}">
    <style type="text/css">
            #color-bar {
            display: inline-block;
            width: 20px;
            height: 20px;
            margin-left: 5px;
            margin-top: 5px;
        }
        
        @page {
            size: auto;
            margin: 0mm;
        }
        
        @page {
            size: A4;
            margin: 0;
        }
        
        @media print {
            html,
            body {
                width: 210mm;
                height: 287mm;
            }
            html {
                overflow: scroll;
                overflow-x: hidden;
            }
             ::-webkit-scrollbar {
                width: 0px;
                /* remove scrollbar space */
                background: transparent;
                /* optional: just make scrollbar invisible */
            }
    </style>
</head>

<body onload="window.print();">
    <div class="invoice-wrap">
        <div class="invoice__title">
            <div class="row">
                <div class="col-sm-6">
                    <div class="invoice__logo text-left">
                        <img src="{{ asset('assets/images/'.$gs->invoice_logo) }}" alt="woo commerce logo">
                    </div>
                </div>
            </div>
        </div>
        <br>




        <div class="invoice__metaInfo">
            <div class="col-lg-6">
                <div class="invoice__orderDetails">

                </div>
            </div>
        </div>


        <div class="col-lg-12">
            <div class="invoice_table">
                <div class="mr-table">
                    <div class="table-responsive">
                        <table id="example2" class="table table-hover dt-responsive" cellspacing="0" width="100%">
                            <thead style="border-top:1px solid rgba(0, 0, 0, 0.1) !important;">
                                <tr>
                                    <th>{{ __('Withdraw ID') }}</th>
                                    <th>{{ __('Vendor Name') }}</th>
                                    <th>{{ __('Gateway') }}</th>
                                    <th>{{ __('Amount') }}</th>
                                    <th>{{ __('Account') }}</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($withdraws as $withdraw)
                                <tr>

                                    <td>{{$withdraw->id}}</td>
                                    <td>{{$withdraw->user->name}}</td>
                                    <td>{{$withdraw->paymentGateway->title}}</td>
                                    <td>{{$withdraw->amount}}</td>
                                    <td>
                                        @foreach($withdraw->additionalFields as $field) {{$field->value}}
                                        <br> @endforeach
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>Total Amount</td>
                                    <td>{{$withdraws->sum('amount')}}</td>
                                    <td></td>
                                </tr>
                            </tfoot>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ./wrapper -->



</body>

</html>