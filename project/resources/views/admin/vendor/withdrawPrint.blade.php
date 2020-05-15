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
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <!-- Starting of Dashboard data-table area -->
                <div class="section-padding add-product-1">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                            <div class="product__header">
                                <div class="row reorder-xs">
                                    <div class="col-lg-8 col-md-5 col-sm-5 col-xs-12">
                                        <div class="product-header-title">
                                            <h2> Withdraw #{{$withdraw->id}}</h2>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-10">
                                            <div class="dashboard-content">
                                                <div class="view-order-page" id="print">
                                                    <p class="order-date" style="margin-left: 2%">Withdraw Date {{date('d-M-Y',strtotime($withdraw->created_at))}}</p>




                                                </div>






                                            </div>


                                            <br>
                                            <br>
                                            <div class="table-responsive">
                                                <table id="example" class="table">
                                                    <h4 class="text-center">Withdraw Details</h4>
                                                    <hr>
                                                    <thead>
                                                        <tr>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <th>Name</th>
                                                            <td>{{$withdraw->user->name}}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Withdraw Method</th>
                                                            <td>{{$withdraw->paymentGateway->title}}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Withdraw Amount</th>
                                                            <td>{{$withdraw->amount}}</td>
                                                        </tr>
                                                        @foreach($withdraw->additionalFields as $field)

                                                        <tr>
                                                            <th>{{$field->additionalField->title}}</th>
                                                            <td>{{$field->value}}</td>
                                                        </tr>
                                                        @endforeach


                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- Ending of Dashboard data-table area -->
    </div>
    <!-- ./wrapper -->
    <!-- ./wrapper -->

    <script type="text/javascript">
        setTimeout(function() {
            window.close();
        }, 500);
    </script>
</body>

</html>