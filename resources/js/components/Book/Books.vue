<template>
  <div>
    <div class="breadcrumb">
      <h1>Books at library</h1>
    </div>
    <div class="separator-breadcrumb border-top"></div>
    <!-- <router-link :to="{ name: 'add_book' }" class="btn btn-outline-primary m-1">
      Add Book
    </router-link> -->

    <section class="widget-card">
      <div class="ul-todo-sidebar">
        <div class="card">
          <div class="card-body">
            <div class="pr-3 pb-3">
              <i
                class="todo-sidebar-close i-Close pb-3 text-right"
                data-sidebar-toggle="main"
              ></i>
              <!-- Large modal-->
              <router-link
                :to="{ name: 'add_book' }"
                class="btn btn-success btn-block mb-4"
              >
                Add Book
              </router-link>
              <div>
                <h4>
                  <strong>Language:</strong>
                </h4>
                <ul class="list-group">
                  <li class="list-group-item border-0">
                    <a href=""> English</a>
                  </li>
                  <li class="list-group-item border-0">
                    <a href=""> French</a>
                  </li>
                  <li class="list-group-item border-0">
                    <a href=""> Chinese (Traditional) </a>
                  </li>
                  <li class="list-group-item border-0">
                    <a href=""> German </a>
                  </li>
                </ul>
              </div>
              <div>
                <h4>
                  <strong>Author:</strong>
                </h4>
                <ul class="list-group">
                  <li class="list-group-item border-0">
                    <a href=""> Bill Bryson</a>
                  </li>
                  <li class="list-group-item border-0">
                    <a href=""> Kristin Hannah</a>
                  </li>
                  <li class="list-group-item border-0">
                    <a href=""> Sarah J. Maas </a>
                  </li>
                  <li class="list-group-item border-0">
                    <a href=""> Adam Grant </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row mb-4">
        <div class="col">
          <div class="dropdown">
            <button
              class="btn btn-success dropdown-toggle float-right"
              id="dropdownMenuButton"
              type="button"
              data-toggle="dropdown"
            >
              Sort by
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
              <a class="dropdown-item" href="#">Requested Number</a>
              <a class="dropdown-item" href="#">Publication Date</a>
            </div>
          </div>
        </div>
        <!-- </div> -->
      </div>
      <div class="row mb-4">
        <div
          v-for="book in books"
          :key="book.id"
          class="col-lg-4 col-xl-3 mt-3"
        >
          <div class="card">
            <div class="card-body">
              <router-link
                :to="{ name: 'book_detail', params: { id: book.id } }"
              >
                <img
                style="margin:auto"
                  class="d-block w-75 rounded rounded"
                  v-bind:src="`/images/${book.image}`"
                  alt="First slide"
                />
              </router-link>
              <h5 class="heading mt-2 mb-2">{{ book.name }}</h5>
              <p>
                <mark>{{ book.author }}</mark> -
                <mark>{{ book.publication_date }}</mark>
              </p>

              <router-link
                :to="{ name: 'book_detail', params: { id: book.id } }"
                class="btn btn-success ul-btn-raised--v2 m-1"
              >
                Detail
              </router-link>
              <router-link
                :to="{ name: 'update_book', params: { id: book.id } }"
                class="btn btn-outline-success ul-btn-raised--v2 m-1"
              >
                Update
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
      <div class="row mb-4">
        <div class="col-md-12 mb-4">
          <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
              <li class="page-item">
                <a class="page-link" href="#" tabindex="-1">Previous</a>
              </li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item active">
                <a class="page-link" href="#"
                  >2 <span class="sr-only">(current)</span></a
                >
              </li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item">
                <a class="page-link" href="#">Next</a>
              </li>
            </ul>
          </nav>
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
  methods: {
    deleteBook(id) {
      this.axios
        .delete(`http://localhost:8000/api/book/delete/${id}`)
        .then((response) => {
          let i = this.books.map((item) => item.id).indexOf(id); //fix index of objects
          this.books.splice(i, 1);
        });
    },
  },
};
</script>