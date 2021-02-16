<template>
  <div class="app-admin-wrap layout-horizontal-bar">
    <div class="main-header">
      <div class="logo">
        <img v-bind:src="'dist-assets/images/logo.png'" alt="" />
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
          <div
            class="topnav rtl-ps-none"
            id=""
            data-perfect-scrollbar=""
            data-suppress-scroll-x="true"
          >
            <ul class="menu float-left">
              <li>
                <router-link to="/home">Home</router-link>
              </li>
              <li>
                <router-link to="/about">About Us</router-link>
              </li>
              <li>
                <router-link to="/openinghours">Opening Hours</router-link>
              </li>
              <li>
                <router-link to="/books">Books</router-link>
              </li>
              <li>
                <router-link to="/bookrequests">Book Requests</router-link>
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
        <transition name="fade">
          <router-view></router-view>
        </transition>
      </div>
    </div>
  </div>
</template>

<script>
</script>