<template>
  <div class="home_content">
    <img
      class="rounded rounded"
      v-bind:src="`/dist-assets/images/background-image1.jpg`"
    />
    <router-link to="/books" class="btn btn-xl btn-info" id="home_btn_intro">
      Find your book now!
    </router-link>
    <router-link to="/contacts" id="home_btn_contact" class="btn btn-xl btn-info">
      Contact us!
    </router-link>
    <div id="intro_content">
      <h3 class="heading display-1 text-white t-font-boldest">Welcome to our library!</h3></div>
  </div>
</template>

<style>
.home_content {
  /* position: relative; */
  width: 100%;
  /* max-width: 400px; */
}

#intro_content {
  /* color: white; */
  position: absolute;
  top: 20%;
  left: 15%;
  /* transform: translate(-50%, -50%); */
}

.home_content #home_btn_contact {
  position: absolute;
  top: 40%;
  left: 40%;
  /* transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%); */
  /* background-color: #555; */
  /* color: white; */
  /* font-size: 16px;
  padding: 12px 24px; */
  /* border: none; */
  /* cursor: pointer; */
  /* border-radius: 5px; */
  /* text-align: center; */
}

.home_content #home_btn_intro {
  position: absolute;
  top: 40%;
  left: 20%;
}

.home_content img {
  width: 100%;
}

</style>

<script>
</script>