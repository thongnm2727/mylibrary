<template>
  <div>
    <h3>Book Detail</h3>
    <section class="ul-product-detail">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <div class="ul-product-detail__image">
                    <img
                      v-bind:src="'dist-assets/images/mac_book.jpg'"
                      alt="alt"
                    />
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="ul-product-detail__brand-name mb-4">
                    <h1 class="heading">{{ book.name }}</h1>
                    <mark>{{ book.author }}</mark>
                  </div>
                  <div
                    class="ul-product-detail__price-and-rating d-flex align-items-baseline"
                  >
                    <h5> Publisher: {{ book.publisher }}</h5> 
                  </div>

                  <div class="ul-product-detail__features mt-3">
                    <h6 class="font-weight-700">Features:</h6>
                    <ul class="m-0 p-0">
                      <li>
                        <i
                          class="i-Right1 text-primary text-15 align-middle font-weight-700"
                        ></i
                        ><span class="align-middle"
                          >This Refurbished product is tested to work and look
                          like new with minimal to no signs of wear & tear</span
                        >
                      </li>
                      <li>
                        <i
                          class="i-Right1 text-primary text-15 align-middle font-weight-700"
                        ></i
                        ><span class="align-middle"
                          >This Refurbished product is tested to work and look
                          like new with minimal to no signs of wear & tear</span
                        >
                      </li>
                      <li>
                        <i
                          class="i-Right1 text-primary text-15 align-middle font-weight-700"
                        ></i
                        ><span class="align-middle"
                          >This Refurbished product is tested to work and look
                          like new with minimal to no signs of wear & tear</span
                        >
                      </li>
                      <li>
                        <i
                          class="i-Right1 text-primary text-15 align-middle font-weight-700"
                        ></i
                        ><span class="align-middle"
                          >This Refurbished product is tested to work and look
                          like new with minimal to no signs of wear & tear</span
                        >
                      </li>
                      <li>
                        <i
                          class="i-Right1 text-primary text-15 align-middle font-weight-700"
                        ></i
                        ><span class="align-middle"
                          >This Refurbished product is tested to work and look
                          like new with minimal to no signs of wear & tear</span
                        >
                      </li>
                      <li>
                        <i
                          class="i-Right1 text-primary text-15 align-middle font-weight-700"
                        ></i
                        ><span class="align-middle"
                          >This Refurbished product is tested to work and look
                          like new with minimal to no signs of wear & tear</span
                        >
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  data() {
    return {
      book: {},
    };
  },
  created() {
    this.axios
      .get(`http://localhost:8000/api/book/detail/${this.$route.params.id}`)
      .then((response) => {
        this.book = response.data.book;
        console.log(this.book);
      });
  },
};
</script>