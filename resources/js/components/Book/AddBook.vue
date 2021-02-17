<template>
  <div class="col-lg-8 mb-3">
    <!-- begin::form 2-->
    <form @submit.prevent="addBook" method="POST">
      <!-- start card  Horizontal Form Layout-->
      <div class="card ul-card__margin-25">
        <div class="card-header bg-transparent">
          <h1 class="heading">Add Book</h1>
        </div>
        <div class="card-body">
          <div class="form-group row">
            <label
              class="action-bar-horizontal-label col-lg-4 col-form-label"
              for="staticEmail"
              >Name:</label
            >
            <div class="col-lg-6 mb-4">
              <input
                class="form-control"
                type="text"
                placeholder="book's name"
                v-model="book.name"
              /><small class="ul-form__text form-text">Enter book's name</small>
            </div>
            <label
              class="action-bar-horizontal-label col-lg-4 col-form-label"
              for="staticEmail"
              >Author:
            </label>
            <div class="col-lg-6 mb-4">
              <input
                class="form-control"
                type="text"
                placeholder="book's author"
                v-model="book.author"
              /><small class="ul-form__text form-text"
                >Enter author of the book</small
              >
            </div>
            <label
              class="action-bar-horizontal-label col-lg-4 col-form-label"
              for="staticEmail"
              >Publisher:
            </label>
            <div class="col-lg-6 mb-4">
              <input
                class="form-control"
                id="staticEmail"
                type="text"
                placeholder="book's publisher"
                v-model="book.publisher"
              /><small class="ul-form__text form-text"
                >Enter publisher of the book</small
              >
            </div>
            <label
              class="action-bar-horizontal-label col-lg-4 col-form-label"
              for="staticEmail"
              >Publication date:
            </label>
            <div class="col-lg-6 mb-4">
              <input
                class="form-control"
                id="staticEmail"
                type="text"
                placeholder="publication_date"
                v-model="book.publication_date"
              /><small class="ul-form__text form-text"
                >Enter publication date of the book (E.g: Dec 12 1992)</small
              >
            </div>
            <label
              class="action-bar-horizontal-label col-lg-4 col-form-label"
              for="staticEmail"
              >Description:
            </label>
            <div class="col-lg-8 mb-4">
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">Description</span>
                </div>
                <textarea
                  rows="4"
                  class="form-control"
                  placeholder="book's description"
                  v-model="book.description"
                ></textarea>
              </div>
            </div>
            <label
              class="action-bar-horizontal-label col-lg-4 col-form-label"
              for="staticEmail"
              >Book's image:
            </label>
            <div class="col-lg-8 mb-4">
              <div class="card text-left">
                <div class="card-body">
                  <form class="dropzone" id="single-file-upload" action="#">
                    <div class="fallback">
                      <input name="file" type="file" />
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card-footer">
          <div class="mc-footer">
            <div class="row text-right">
              <div class="col-lg-4"></div>
              <div class="col-lg-6 text-left">
                <button class="btn btn-primary m-1" type="submit">Save</button>
                <router-link to="/books" class="btn btn-outline-danger m-1"
                  >Cancel</router-link
                >
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- end card  Horizontal Form Layout-->
    </form>
    <!-- end::form 2-->
  </div>
</template>

<script>
export default {
  data() {
    return {
      book: {},
    };
  },
  methods: {
    addBook() {
      this.axios
        .post("http://localhost:8000/api/book/add_book", this.book)
        .then((response) => this.$router.push({ name: "books" }))
        .catch((error) => console.log(error))
        .finally(() => (this.loading = false));
    },
  },
};
</script>