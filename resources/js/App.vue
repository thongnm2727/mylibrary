<template>
    <div class="app-admin-wrap layout-horizontal-bar">
        <div class="main-header">
            <div class="logo"><img v-bind:src="'dist-assets/images/logo.png'" alt="" /></div>
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
                                <a href="#1">Home</a>
                            </li>
                            <li>
                                <a href="#2">About Us</a>
                            </li>
                            <li>
                                <a href="#3">Opening Hours</a>
                            </li>
                            <li>
                                <a href="#4">Books</a>
                            </li>
                            <li>
                                <a href="#5">BookRequests</a>
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
                <div id="app">

                </div>
            </div>
            <!-- Footer Start -->
            <div class="flex-grow-1"></div>
            <div class="app-footer">
                <div class="row">
                    <div class="col-md-9">
                        <p><strong>Gull - Laravel + Bootstrap 4 admin template</strong></p>
                        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Libero quis beatae officia saepe perferendis voluptatum minima eveniet voluptates dolorum, temporibus nisi maxime nesciunt totam repudiandae commodi sequi dolor quibusdam
                            <!-- <sunt></sunt> -->
                        </p>
                    </div>
                </div>
                <div class="footer-bottom border-top pt-3 d-flex flex-column flex-sm-row align-items-center">
                    <a class="btn btn-primary text-white btn-rounded" href="https://themeforest.net/item/gull-bootstrap-laravel-admin-dashboard-template/23101970" target="_blank">Buy Gull HTML</a>
                    <span class="flex-grow-1"></span>
                    <div class="d-flex align-items-center">
                        <img class="logo" v-bind:src="'dist-assets/images/logo.png'" alt="">
                        <div>
                            <p class="m-0">&copy; 2018 Gull HTML</p>
                            <p class="m-0">All rights reserved</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- fotter end -->
        </div>
    </div>
</template>

<script>
</script>