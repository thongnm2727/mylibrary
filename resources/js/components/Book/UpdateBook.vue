<template>
  <div>
    <h3>Edit Book</h3>
    <form @submit.prevent="updateBook">
      <section class="ul-product-detail">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-body">
                <div class="row">
                  <div class="col-lg-4">
                    <div class="col-md-6 form-group mb-3">
                      <img
                        class="d-block w-100 rounded rounded"
                        v-bind:src="'/dist-assets/images/default_image.jpg'"
                        alt="alt"
                      />
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6 form-group mb-3">
                    <label>Name: </label>
                    <input
                      class="form-control"
                      id="name"
                      type="text"
                      placeholder="book's name"
                      v-model="book.name"
                    />
                  </div>
                  <div class="col-md-6 form-group mb-3">
                    <label>Author: </label>
                    <input
                      class="form-control"
                      id="author"
                      type="text"
                      placeholder="book's author"
                      v-model="book.author"
                    />
                  </div>
                  <div class="col-md-6 form-group mb-3">
                    <label>Publisher: </label>
                    <input
                      class="form-control"
                      id="publisher"
                      type="text"
                      placeholder="publisher"
                      v-model="book.publisher"
                    />
                  </div>
                  <div class="col-md-6 form-group mb-3">
                    <label>Publication date: </label>
                    <input
                      class="form-control"
                      id="publisher"
                      type="text"
                      placeholder="publication date (e.g: Aug 27, 1992)"
                      v-model="book.publication_date"
                    />
                  </div>
                  <div class="col-md-6 form-group mb-3">
                    <label>Language: </label>
                    <input
                      class="form-control"
                      id="publisher"
                      type="text"
                      placeholder="book's language"
                      v-model="book.language"
                    />
                  </div>
                  <div class="col-md-6 form-group mb-3"></div>
                  <div class="col-md-6 form-group mb-3">
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">Description</span>
                      </div>
                      <textarea
                        rows="4"
                        class="form-control"
                        placeholder="book's description"
                        v-model="book.description"
                      >
                      
                      </textarea>
                    </div>
                  </div>
                  <div class="col-md-6 form-group mb-3"></div>
                </div>

                <div class="row">
                  <div class="col-lg-12 text-center">
                    <button class="btn btn-outline-success m-1">
                      Save Changes
                    </button>
                    <router-link to="/books" class="btn btn-outline-danger m-1"
                      >Cancel</router-link
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </form>
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
  methods: {
    updateBook() {
      this.axios
        .post(
          `http://localhost:8000/api/book/update/${this.$route.params.id}`,
          this.book
        )
        .then((response) => {
          this.$router.push({ name: "book_detail", params: {id: this.book.id} });
        });
    },
  },
};
</script>