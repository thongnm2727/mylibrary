<template>
  <div class="app-admin-wrap layout-horizontal-bar">
    <div class="main-header">
      <div class="logo">
        <a href="http://localhost:8000">
          <img
            class="rounded rounded"
            v-bind:src="'/dist-assets/images/logo.jpg'"
            alt=""
          />
        </a>
      </div>
      <div class="d-flex align-items-center">
        <!-- Mega menu-->
        <!-- / Mega menu-->
        <div class="search-bar">
          <input type="text" placeholder="Search" /><i
            class="search-icon text-muted i-Magnifi-Glass1"
          ></i>
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
          <!-- <div
            class="topnav"
          > -->
          <ul class="nav nav-pills" role="tablist">
            <li class="nav-item">
              <router-link data-toggle="pill" class="nav-link" to="/home">
                <i class="nav-icon i-Home1 mr-1"></i>Home
              </router-link>
            </li>
            <li class="nav-item">
              <router-link data-toggle="pill" class="nav-link" to="/about"
                ><i class="nav-icon i-Right mr-1"></i>About Us</router-link
              >
            </li>
            <li class="nav-item">
              <router-link data-toggle="pill" class="nav-link" to="/contacts"
                ><i class="nav-icon i-Telephone mr-1"></i>Contact
                us</router-link
              >
            </li>
            <li class="nav-item">
              <router-link
                data-toggle="pill"
                class="nav-link"
                to="/openinghours"
                ><i class="nav-icon i-Clock mr-1"></i>Opening Hours</router-link
              >
            </li>
            <li class="nav-item">
              <router-link data-toggle="pill" class="nav-link" to="/books"
                ><i class="nav-icon i-Book mr-1"></i>Books</router-link
              >
            </li>

            <li class="nav-item">
              <router-link
                data-toggle="pill"
                class="nav-link"
                to="/book_requests"
                ><i class="nav-icon i-Flag-2 mr-1"></i>Book
                Requests</router-link
              >
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- </div> -->
    <!-- =============== Horizontal bar End ================-->
    <div class="main-content-wrap d-flex flex-column">
      <!-- ============ Body content start ============= -->
      <div class="main-content">
        <transition name="fade">
          <router-view></router-view>
        </transition>
      </div>
    </div>
  </div>
</template>

<style>
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.5s;
}
.fade-enter,
.fade-leave-active {
  opacity: 0;
}
</style>

<script>
</script>