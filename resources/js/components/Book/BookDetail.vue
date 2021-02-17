<template>
  <section class="ul-product-detail__tab">
    <div class="row">
      <div class="col-lg-12 col-md-12 mt-4">
        <div class="card mt-2 mb-4">
          <div class="card-body">
            <div class="row">
              <div class="col-lg-4 col-md-4 col-sm-12">
                <img
                  class="rounded rounded"
                  v-bind:src="'/dist-assets/images/default_image.jpg'"
                  alt="alt"
                />
              </div>
              <div class="col-lg-8 col-md-8 col-sm-12">
                <h3 class="font-weight-700 mt-4 mb-2">
                  {{ book.name }}
                </h3>
                <h5 class="text-info">Author: {{ book.author }}</h5>

                <p style="white-space: pre-line">
                  {{ book.description }}
                </p>

                <div class="ul-product-detail__nested-card">
                  <div class="row text-center">
                    <div class="col-lg-3 col-sm-12 mb-2">
                      <div class="card">
                        <div class="card-body">
                          <div class="ul-product-detail__border-box">
                            <div class="ul-product-detail--icon mb-2">
                              <i
                                class="i-Car text-success text-25 font-weight-500"
                              ></i>
                            </div>
                            <h5 class="heading text-info">Publisher</h5>
                            <span class="t-font-boldest">
                              {{ book.publisher }}
                            </span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-3 col-sm-12 mb-2">
                      <div class="card">
                        <div class="card-body">
                          <div class="ul-product-detail__border-box">
                            <div class="ul-product-detail--icon mb-2">
                              <i
                                class="i-Car text-success text-25 font-weight-500"
                              ></i>
                            </div>
                            <h5 class="heading text-info">Language</h5>
                            <span class="t-font-boldest">
                              {{ book.language }}
                            </span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-3 col-sm-12 mb-2">
                      <div class="card">
                        <div class="card-body">
                          <div class="ul-product-detail__border-box">
                            <div class="ul-product-detail--icon mb-2">
                              <i
                                class="i-Car text-success text-25 font-weight-500"
                              ></i>
                            </div>
                            <h5 class="heading text-info">Publication Date</h5>
                            <span class="t-font-boldest">
                              {{ book.publication_date }}
                            </span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-3 col-sm-12 mb-2">
                      <div class="card">
                        <div class="card-body">
                          <div class="ul-product-detail__border-box">
                            <div class="ul-product-detail--icon mb-2">
                              <i
                                class="i-Car text-success text-25 font-weight-500"
                              ></i>
                            </div>
                            <h5 class="heading text-info">Requested</h5>
                            <span class="t-font-boldest">
                              {{ book.number_of_requests }}
                            </span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
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