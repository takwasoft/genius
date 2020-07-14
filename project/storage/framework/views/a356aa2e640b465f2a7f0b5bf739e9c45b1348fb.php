<!doctype html>
<html lang="en">

<head>
    <title>Create Project Page</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css">

    <link rel="stylesheet" href="fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <header>
        <nav class="navbar navbar-tmiweb">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <a href="index.html"><img alt="Brand" src="images/logo.jpg" width="90%"></a>
                    </div>
                    <div class="col-sm-6 ">
                        <div class="progress1">
                            <li class="active">Category</li>
                            <li>Place</li>
                            <li>Product</li>
                            <li>Payment</li>
                            <li>Success</li>
                        </div>
                    </div>
                    <div class="col-sm-3 ">
                        <p class="navbar-text">
                            <span><i class="fa fa-phone fa-3x" aria-hidden="true"></i></span> Need Help? Call us!<br /> <a href="#" class="navbar-link">+8801860-130003</a>
                        </p>
                    </div>
                </div>
            </div>
        </nav>
    </header>

    <!-- create category -->

    <main>
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-3">
                    <div class="list-group list-unstyled categories-list megamenu">
                        <ul class="list-group">
                            <a class="list-group-item active text-light">
                                <i class="fa fa-bars" aria-hidden="true"></i>Parent-Categories
                            </a>
                            <li>
                                <a href="#" class="list-group-item megamenu-caret">
                                    <i class="fa fa-shopping-bag" aria-hidden="true"></i>Clothing</a>

                                <ul style="background-color:#fff;border:none;display:block" class="sub-menu1">
                                    <li><a href="#" class="list-group-item active">Category</a>
                                        <ul>
                                            <li><a class="list-group-item megamenu-caret" href="#">shirt</a></li>
                                            <li><a href="#" class="list-group-item megamenu-caret">pant</a>

                                                <ul class="sub-menu2" style="background-color:#fff;border:none;display:block">
                                                    <li><a href="#" class="list-group-item active">Sub-Category</a>
                                                        <ul>
                                                            <li><a class="list-group-item megamenu-caret" href="<?php echo e(route('create_product2')); ?>"> piash shirt</a></li>
                                                            <li><a href="#" class="list-group-item megamenu-caret"> piash pant</a></li>
                                                            <li><a href="#" class="list-group-item megamenu-caret"> piash t-shirt</a></li>
                                                            <li><a href="#" class="list-group-item megamenu-caret"> piash shirt</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>

                                            </li>
                                            <li><a href="#" class="list-group-item megamenu-caret">t-shirt</a></li>
                                            <li><a href="#" class="list-group-item megamenu-caret">shirt</a></li>
                                        </ul>
                                    </li>
                                </ul>

                            </li>
                            <li>
                                <a href="#" class="list-group-item megamenu-caret">
                                    <i class="fa fa-laptop" aria-hidden="true"></i>Electronics</a>

                                <ul style='background-color:#fff;border:none;' class='sub-menu1'>
                                    <li><a href="#" class="list-group-item active">Category</a>
                                        <ul>
                                            <li><a class="list-group-item megamenu-caret" href="#"> piash shirt </a></li>
                                            <li><a href="#" class="list-group-item megamenu-caret"> piash pant</a>

                                                <ul class="sub-menu2" style="background-color:#fff;border:none;">
                                                    <li><a href="#" class="list-group-item active">Sub-Category</a>
                                                        <ul>
                                                            <li><a class="list-group-item megamenu-caret" href="#"> piash shirt <i class="fas fa-angle-right"></i></a></li>
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
                                    <i class="fa fa-paw" aria-hidden="true"></i>Shoes</a>
                            </li>

                            <li>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-clock-o" aria-hidden="true"></i>Watches</a>
                            </li>

                            <li>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-paper-plane" aria-hidden="true"></i>Kids and babies</a>
                            </li>

                            <li>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-heart" aria-hidden="true"></i>Health and beauty</a>
                            </li>

                            <li>
                                <a class="list-group-item megamenu-caret" href="#" class="list-group-item">
                                    <i class="fa fa-futbol-o" aria-hidden="true"></i>Sports</a>

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

                            <li>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-envira" aria-hidden="true"></i>House Hold</a>
                            </li>

                            <li>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-bullhorn" aria-hidden="true"></i>Others</a>
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

            <button type="button" class="btn btn-my pull-right float-right">Next</button>
        </div>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>