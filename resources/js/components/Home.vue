<template>
  <div class="home_content mb-4">
    <img
      class="rounded rounded"
      v-bind:src="`/dist-assets/images/background-image1.jpg`"
    />
    <router-link to="/books" id="home_btn_intro">
      <h1 class="text-white heading t-font-boldest">
        <u>Find your book now!</u>
      </h1>
    </router-link>
    <router-link to="/contacts" id="home_btn_contact">
      <h1 class="text-white heading t-font-boldest"><u>Contact us!</u></h1>
    </router-link>
    <div id="intro_content">
      <h2 class="heading display-1 text-white t-font-boldest">
        <label>Welcome to our library!</label>
      </h2>
    </div>
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
  top: 45%;
  left: 50%;
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
  top: 45%;
  left: 25%;
}

.home_content img {
  width: 100%;
}
</style>

<script>
</script>