<!DOCTYPE html>
<html lang="en" dir="">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>My Library</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet" />
    <!-- <link href="../dist-assets/css/themes/lite-purple.min.css" rel="stylesheet" />
    <link href="../dist-assets/css/plugins/perfect-scrollbar.min.css" rel="stylesheet" /> -->

    <link rel="shortcut icon" type="image/x-icon" href="{{ URL::asset('dist-assets/images/page_icon.png')}}" />
    <link rel="stylesheet" href="{{ URL::asset('dist-assets/css/themes/lite-purple.min.css') }}">
    <link rel="stylesheet" href="{{ URL::asset('dist-assets/css/plugins/perfect-scrollbar.min.css') }}">
</head>

<body class="text-left">
    <div class="app-admin-wrap layout-horizontal-bar">
        <div class="main-header">
            <div class="logo"><img src="{{URL::asset('dist-assets/images/logo.png')}}" alt="" /></div>
            <div class="menu-toggle">
                <div></div>
                <div></div>
                <div></div>
            </div>
            <div class="d-flex align-items-center">
                <!-- Mega menu-->
                <!-- / Mega menu-->
                <div class="search-bar">
                    <input type="text" placeholder="Search" /><i class="search-icon text-muted i-Magnifi-Glass1"></i>
                </div>
            </div>
            <div style="margin: auto"></div>
            <div class="header-part-right">
                <a href="#">Login</a>
            </div>
        </div>
        <!-- header top menu end-->
        <div class="horizontal-bar-wrap">
            <div class="header-topnav">
                <div class="container-fluid">
                    <div class="topnav rtl-ps-none" id="" data-perfect-scrollbar="" data-suppress-scroll-x="true">
                        <ul class="menu float-left">
                            <li>
                                <a href="#">Home</a>
                            </li>
                            <li>
                                <a href="#">About Us</a>
                            </li>
                            <li>
                                <a href="#">Opening Hours</a>
                            </li>
                            <li>
                                <a href="#">Books</a>
                            </li>
                            <li>
                                <a href="#">BookRequests</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- =============== Horizontal bar End ================-->
        <div class="main-content-wrap d-flex flex-column">
            <!-- ============ Body content start ============= -->
            <div class="main-content">
            </div>
            <!-- Footer Start -->
            <div class="flex-grow-1"></div>
            <div class="app-footer">
                <div class="row">
                    <div class="col-md-9">
                        <p><strong>Gull - Laravel + Bootstrap 4 admin template</strong></p>
                        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Libero quis beatae officia saepe perferendis voluptatum minima eveniet voluptates dolorum, temporibus nisi maxime nesciunt totam repudiandae commodi sequi dolor quibusdam
                            <sunt></sunt>
                        </p>
                    </div>
                </div>
                <div class="footer-bottom border-top pt-3 d-flex flex-column flex-sm-row align-items-center">
                    <a class="btn btn-primary text-white btn-rounded" href="https://themeforest.net/item/gull-bootstrap-laravel-admin-dashboard-template/23101970" target="_blank">Buy Gull HTML</a>
                    <span class="flex-grow-1"></span>
                    <div class="d-flex align-items-center">
                        <img class="logo" src="../../dist-assets/images/logo.png" alt="">
                        <div>
                            <p class="m-0">&copy; 2018 Gull HTML</p>
                            <p class="m-0">All rights reserved</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- fotter end -->
        </div>
    </div><!-- ============ Search UI Start ============= -->
    <!-- ============ Search UI End ============= -->
    <script src="{{URL::asset('dist-assets/js/plugins/jquery-3.3.1.min.js')}}"></script>
    <script src="{{URL::asset('dist-assets/js/plugins/bootstrap.bundle.min.js')}}"></script>
    <script src="{{URL::asset('dist-assets/js/plugins/perfect-scrollbar.min.js')}}"></script>
    <script src="{{URL::asset('dist-assets/js/scripts/script.min.js')}}"></script>
    <script src="{{URL::asset('dist-assets/js/scripts/sidebar-horizontal.script.js')}}"></script>
</body>

</html>