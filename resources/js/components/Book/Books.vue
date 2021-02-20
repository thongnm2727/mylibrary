<template>
  <div>
    <!-- <div class="breadcrumb">
      <h1>Books at library</h1>
    </div>
    <div class="separator-breadcrumb border-top"></div> -->

    <section class="widget-card">
      <!-- SIDE BAR  -->
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
                class="btn btn-primary btn-block mb-4"
              >
                Add Book
              </router-link>
              <div class="list-group">
                <label class="text-muted font-weight-600 py-8" for=""
                  >LANGUAGE</label
                >
                <a
                  class="list-group-item list-group-item-action border-0"
                  id="list-home-list"
                  data-toggle="list"
                  href="#list-home"
                  role="tab"
                  aria-controls="home"
                >
                  <i class="nav-icon i-At-Sign"></i> English</a
                >
                <a
                  class="list-group-item list-group-item-action border-0"
                  id="list-profile-list"
                  data-toggle="list"
                  href="#list-profile"
                  role="tab"
                  aria-controls="profile"
                >
                  <i class="nav-icon i-At-Sign"></i> French</a
                >
                <a
                  class="list-group-item list-group-item-action border-0"
                  id="list-settings-list"
                  data-toggle="list"
                  href="#list-settings"
                  role="tab"
                  aria-controls="settings"
                >
                  <i class="nav-icon i-At-Sign"></i> Japanese</a
                >
                <a
                  class="list-group-item list-group-item-action border-0"
                  id="list-settings-list"
                  data-toggle="list"
                  href="#list-settings"
                  role="tab"
                  aria-controls="settings"
                >
                  <i class="nav-icon i-At-Sign"></i> Spanish</a
                >
              
              
                <label class="text-muted font-weight-600 py-8" for=""
                  >FAVOURITE AUTHOR</label
                >
                <a
                  class="list-group-item list-group-item-action border-0"
                  id="list-home-list"
                  data-toggle="list"
                  href="#list-home"
                  role="tab"
                  aria-controls="home"
                >
                  <i class="nav-icon i-Administrator"></i> Bill Bryson</a
                >
                <a
                  class="list-group-item list-group-item-action border-0"
                  id="list-profile-list"
                  data-toggle="list"
                  href="#list-profile"
                  role="tab"
                  aria-controls="profile"
                >
                  <i class="nav-icon i-Administrator"></i> Kristin Hannah</a
                >
                <a
                  class="list-group-item list-group-item-action border-0"
                  id="list-settings-list"
                  data-toggle="list"
                  href="#list-settings"
                  role="tab"
                  aria-controls="settings"
                >
                  <i class="nav-icon i-Administrator"></i> Sarah J. Maas</a
                >
                <a
                  class="list-group-item list-group-item-action border-0"
                  id="list-settings-list"
                  data-toggle="list"
                  href="#list-settings"
                  role="tab"
                  aria-controls="settings"
                >
                  <i class="nav-icon i-Administrator"></i> Adam Grant</a
                >
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- ORDERING  -->
      <div class="row mb-4 mr-4">
        <div class="col">
          <div class="dropdown">
            <button
              class="btn btn-primary btn-lg dropdown-toggle float-right"
              id="dropdownMenuButton"
              type="button"
              data-toggle="dropdown"
            >
              Order by
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
              <a class="dropdown-item" href="#">Requested Number</a>
              <a class="dropdown-item" href="#">Publication Date</a>
            </div>
          </div>
        </div>
        <!-- </div> -->
      </div>
      <!-- BOOK LIST  -->

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
                  style="margin: auto"
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
                class="btn btn-primary ul-btn-raised--v2 m-1"
              >
                Detail
              </router-link>
              <router-link
                :to="{ name: 'update_book', params: { id: book.id } }"
                class="btn btn-outline-primary ul-btn-raised--v2 m-1"
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
      <!-- PAGINATION  -->
      <div class="row mb-4">
        <div class="col-md-12 mb-4">
          <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
              <li
                v-bind:class="[
                  pagination.current_page == 1
                    ? 'page-item disabled'
                    : 'page-item ',
                ]"
              >
                <a
                  class="page-link"
                  href="#"
                  @click.prevent="changePage(pagination.current_page - 1)"
                  tabindex="-1"
                >
                  Previous
                </a>
              </li>
              <li
                class="page-item"
                v-for="page in pagesNumber"
                :key="page"
                v-bind:class="[
                  page == isActived ? 'page-item active' : 'page-item',
                ]"
              >
                <a class="page-link" href="#" @click.prevent="changePage(page)"
                  >{{ page }}
                </a>
              </li>
              <li
                v-bind:class="[
                  pagination.current_page < pagination.last_page
                    ? 'page-item'
                    : 'page-item disabled',
                ]"
              >
                <a
                  class="page-link"
                  href="#"
                  @click.prevent="changePage(pagination.current_page + 1)"
                  tabindex="-1"
                >
                  Next
                </a>
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
      pagination: {
        total: 0,
        per_page: 2,
        from: 1,
        to: 0,
        current_page: 1,
      },
      offset: 4,
    };
  },
  computed: {
    isActived: function () {
      return this.pagination.current_page;
    },
    pagesNumber: function () {
      if (!this.pagination.to) {
        return [];
      }
      var from = this.pagination.current_page - this.offset;
      if (from < 1) {
        from = 1;
      }
      var to = from + this.offset * 2;
      if (to >= this.pagination.last_page) {
        to = this.pagination.last_page;
      }
      var pagesArray = [];
      while (from <= to) {
        pagesArray.push(from);
        from++;
      }
      return pagesArray;
    },
  },
  created() {
    this.getBooks(this.pagination.current_page);
    // this.axios.get("http://localhost:8000/api/books").then((response) => {
    //   this.books = response.data.books;
    // });
  },
  methods: {
    // isActive: function (page) {
    //   return this.pagination.current_page == $page;
    // },
    getBooks(page) {
      this.axios
        .get(`http://localhost:8000/api/books?page=${page}`)
        .then((response) => {
          this.books = response.data.books.data;
          this.pagination = response.data.pagination;
        });
    },
    changePage(page) {
      this.pagination.current_page = page;
      this.getBooks(page);
    },

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