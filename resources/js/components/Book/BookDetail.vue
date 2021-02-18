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
                <h1 class="font-weight-700 mt-4 mb-2">
                  {{ book.name }}
                </h1>
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
          <div class="card-body">
            <h3 class="heading card-title mb-3">Book's Copies</h3>
            <p>Below is all copies belong to this book</p>
            <div class="table-responsive">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th scope="col">#ID</th>
                    <th scope="col">Requested Date</th>
                    <th scope="col">Return Date</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="book_copy in book_copies" :key="book_copy.id">
                    <td>{{ book_copy.id }}</td>
                    <td>{{ book_copy.requested_date }}</td>
                    <td>{{ book_copy.return_date }}</td>
                    <td v-if="book_copy.status == `Available`">
                      <span class="badge badge-success">{{
                        book_copy.status
                      }}</span>
                    </td>
                    <td v-else>
                      <span class="badge badge-info">{{
                        book_copy.status
                      }}</span>
                    </td>
                    <td>
                      <button
                        class="btn btn-outline-danger"
                        @click.prevent="deleteBookCopy(book_copy.id)"
                      >
                        Delete
                      </button>
                    </td>
                  </tr>
                </tbody>
              </table>
              <!-- <div class="row"> -->
              <div class="col-lg-12 text-center">
                <button
                  @click.prevent="addBookCopy(book.id)"
                  class="btn btn-success m-2"
                  type="button"
                >
                  Add Copy
                </button>
                <router-link
                  :to="{ name: 'update_book', params: { id: book.id } }"
                  class="btn btn-outline-success ul-btn-raised--v2 m-1"
                >
                  Update
                </router-link>
                <router-link to="/books" class="btn btn-outline-primary m-2">
                  Back to book list
                </router-link>
              </div>
              <!-- </div> -->
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
      book_copies: {},
    };
  },
  created() {
    this.axios
      .get(`http://localhost:8000/api/book/detail/${this.$route.params.id}`)
      .then((response) => {
        this.book = response.data.book;
        console.log(this.book);
      });
    this.axios
      .get(`http://localhost:8000/api/book_copies/${this.$route.params.id}`)
      .then((response) => {
        this.book_copies = response.data.book_copies;
      });
  },
  methods: {
    deleteBookCopy( id) {
      this.axios
        .delete(`http://localhost:8000/api/book_copy/delete/${id}`)
        .then((response) => {
          let i = this.book_copies.map((item) => item.id).indexOf(id); //fix index of objects
          this.book_copies.splice(i, 1);
        });
    },
    addBookCopy(book_id) {
      this.axios
        .post(`http://localhost:8000/api/book_copy/add/${book_id}`)
        .then((response) => {
          this.book_copies = response.data.book_copies;
          // let i = this.book_copies.map((item) => item.id).indexOf(id); //fix index of objects
          // this.book_copies.splice(i, 1);
        });
    },
  },
};
</script>