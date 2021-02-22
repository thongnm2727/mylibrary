<template>
  <div
    class="auth-layout-wrap"
    style="background-image: url('dist-assets/images/photo-wide-4.jpg')"
  >
    <div class="auth-content">
      <div class="card o-hidden">
        <div class="row">
          <div class="col-md-6">
            <div class="p-4">
              <div class="auth-logo text-center mb-4">
                <img v-bind:src="'/dist-assets/images/logo.jpg'" alt="" />
              </div>
              <h1 class="mb-3 text-18">Sign In</h1>
              <form class="login" @submit.prevent="login">
                <div class="form-group">
                  <label for="email">Email address</label>
                  <input
                    class="form-control form-control-rounded"
                    id="email"
                    type="email"
                    v-model="email"
                    required
                    name="email"
                  />
                </div>
                <div class="form-group">
                  <label for="password">Password</label>
                  <input
                    class="form-control form-control-rounded"
                    id="password"
                    type="password"
                    v-model="password"
                    required
                    name="password"
                  />
                </div>
                <button
                  class="btn btn-rounded btn-primary btn-block mt-2"
                  type="submit"
                >
                  Sign In
                </button>
              </form>
              <div class="mt-3 text-center">
                <a class="text-muted" href="#"> <u>Forgot Password?</u></a>
              </div>
            </div>
          </div>
          <div
            class="col-md-6 text-center"
            style="
              background-size: cover;
              background-image: url('dist-assets/images/photo-long-3.jpg');
            "
          >
            <div class="pr-3 auth-right t-font-boldest">
              <a
                class="btn btn-rounded btn-outline-primary btn-block btn-icon-text"
                href="http://localhost:8000/home"
              >
                <i class="i-Back1 text-20"></i> Home</a
              >
              <a
                class="btn btn-rounded btn-outline-primary mb-4 btn-block btn-icon-text"
                href="http://localhost:8000/books"
              >
                <i class="i-Back1 text-20"></i> Books</a
              >
            </div>
          </div>
        </div>
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
export default {
  data() {
    return {
      email: "",
      password: "",
    };
  },
  methods: {
    login: function () {
      console.log(this.$store);
      let email = this.email;
      let password = this.password;
      this.$store
        .dispatch("login", { email, password })
        .then(window.location.replace('http://localhost:8000'))
        .catch((err) => console.log(err));
    },
  },
};
</script>