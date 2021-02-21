<template>
  <div class="main-content">
    <div class="breadcrumb">
      <h1>About Us</h1>
    </div>
    <div class="separator-breadcrumb border-top"></div>
    <div class="row t-font-boldest">
      <div class="col-lg-4 col-xl-6 mt-3">
        <div class="card bg-dark text-white o-hidden mb-4">
          <img
            class="card-img"
            v-bind:src="'/dist-assets/images/photo-wide-5.jpg'"
            alt="Card image"
          />
          <div class="card-img-overlay" style="white-space: pre">
            <h3 class=" text-white t-font-boldest"><u>Overview</u></h3>
            <ul>
              <li>                
                <u>Function:</u> 
                This website is built so that people can go checking 
                books at our library at any time, find out if we have the book 
                they want, and whether it is available or not. In addition, they 
                can get other useful information such as: opening hours, the price
                to be member, how they can contact us, etc
              </li>
              <li>
                <u>Collection: </u>
                Almost 20,000 textbooks and references;
                Updated newspapers and magazines: Making friends 
                  with computers, Computer Daily, PC world and so forth... (20 sorts);
              </li>
            </ul>
            <br />
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-xl-6 mt-3">
        <div class="card bg-dark text-white o-hidden mb-4">
          <img
            class="card-img"
            v-bind:src="'/dist-assets/images/photo-wide-5.jpg'"
            alt="Card image"
          />
          <div class="card-img-overlay t-font-boldest" style="white-space: pre">
            <h3 class=" text-white t-font-boldest"><u>Address</u></h3>
            <ul>
                <i class="i-Map-Marker text-20">#1</i> <li> <label> 23 Hoang Dao Thuy, Nhan Chinh, Thanh Xuan, Ha Noi</label></li><br>
                <i class="i-Map-Marker text-20">#2</i> <li> <label> 112 Thai Ha, Trung Liet, Dong Da, Ha Noi</label></li><br>
            </ul>
            <i class="text-20 i-Smile"></i> <i class="text-20 i-Smile"></i> <i class="text-20 i-Smile"></i>
            <br />
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
</script>