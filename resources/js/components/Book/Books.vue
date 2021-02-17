<template>
  <div>
    <router-link :to="{ name: 'add_book' }" class="btn btn-outline-primary m-1">
      Add Book
    </router-link>

    <section class="widget-card">
      <div class="row">
        <div
          v-for="book in books"
          :key="book.id"
          class="col-lg-4 col-xl-3 mt-3"
        >
          <div class="card">
            <img
              class="d-block w-100 rounded rounded"
              v-bind:src="'dist-assets/images/products/iphone-1.jpg'"
              alt="First slide"
            />
            <div class="card-body">
              <h5 class="card-title mb-2">{{ book.name }}</h5>
              <p class="card-text text-mute">{{ book.author }}</p>
              <router-link
                :to="{ name: 'book_detail', params: { id: book.id } }"
                class="btn btn-outline-success ul-btn-raised--v2 m-1"
              >
                Detail
              </router-link>
              <router-link
                :to="{ name: 'edit_book', params: { id: book.id } }"
                class="btn btn-outline-success ul-btn-raised--v2 m-1"
              >
                Edit
              </router-link>
              <button
                class="btn btn-outline-danger ul-btn-raised--v2 m-1 float-right"
                type="button"
                @click.prevent="deleteBook(book.id)"
              >
                Delete
              </button>
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
      books: [],
    };
  },
  created() {
    this.axios.get("http://localhost:8000/api/books").then((response) => {
      this.books = response.data.books;
    });
  },
  methods:{
    deleteBook(id){
      this.axios
      .delete(`http://localhost:8000/api/book/delete/${id}`)
      .then((response) => {
        let i = this.books.map((item) => item.id).indexOf(id);//fix index of objects
        this.books.splice(i, 1);
      });
    }
  }
};
</script>