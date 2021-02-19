<template>
  <div class="main-content">
    <div class="breadcrumb">
      <h1>Book Requests</h1>
    </div>
    <div class="separator-breadcrumb border-top"></div>
    <!-- content goes here-->
    <section class="ul-todo-list-content">
      <div class="ul-todo-sidebar">
        <div class="card">
          <div class="card-body">
            <div class="pr-3 pb-3">
              <i
                class="todo-sidebar-close i-Close pb-3 text-right"
                data-sidebar-toggle="main"
              ></i>
              <!-- Large modal-->
              <button
                class="btn btn-success btn-block mb-4"
                type="button"
                data-toggle="modal"
                data-target="#modal-add-book-request"
              >
                Add Request
              </button>
              <div>
                <p class="text-muted mb-2">Status:</p>
                <ul class="list-group">
                  <li class="list-group-item border-0">
                    <a href=""
                      ><i class="icon-regular i-Find-User mr-2"></i> Returned</a
                    >
                  </li>
                  <li class="list-group-item border-0">
                    <a href=""
                      ><i class="icon-regular i-Favorite-Window mr-2"></i>
                      Unreturned</a
                    >
                  </li>
                  <li class="list-group-item border-0">
                    <a href=""
                      ><i class="icon-regular i-Delete-File mr-2"></i>
                      Overdue</a
                    >
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Modal -->
      <div
        class="modal fade"
        id="modal-add-book-request"
        tabindex="-1"
        role="dialog"
        aria-labelledby="verifyModalContent"
        aria-hidden="true"
      >
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="verifyModalContent_title">
                Add book request
              </h5>
              <button
                class="close"
                type="button"
                data-dismiss="modal"
                aria-label="Close"
              >
                <span aria-hidden="true">×</span>
              </button>
            </div>
            <div class="modal-body">
              <form
                @submit.prevent="addBookRequest"
                id="form-add-book-request"
                method="POST"
              >
                <div class="form-group">
                  <label class="col-form-label" for="recipient-name-2"
                    >Book copy's Id:</label
                  >
                  <input
                    class="form-control"
                    type="number"
                    required
                    v-model="book_request.book_copy_id"
                  />
                </div>
                <div class="form-group">
                  <label class="col-form-label" for="recipient-name-2"
                    >Request date:</label
                  >
                  <input
                    class="form-control"
                    type="text"
                    required
                    v-model="book_request.requested_date"
                  />
                </div>
                <div class="form-group">
                  <label class="col-form-label" for="recipient-name-2"
                    >Return date:</label
                  >
                  <input
                    class="form-control"
                    type="text"
                    required
                    v-model="book_request.return_date"
                  />
                </div>

                <span id="message"></span>
              </form>
            </div>
            <div class="modal-footer">
              <button
                class="btn btn-secondary"
                type="button"
                data-dismiss="modal"
              >
                Close
              </button>
              <button
                form="form-add-book-request"
                class="btn btn-primary"
                type="submit"
              >
                Create Request
              </button>
            </div>
          </div>
        </div>
      </div>
      <!-- Request List -->
      <div class="ul-todo-content-right">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-body">
                <div class="ul-todo-body">
                  <table
                    class="table table-striped"
                  >
                    <thead>
                      <tr>
                        <th scope="col">#Request ID</th>
                        <th scope="col">#Book's Copy ID</th>
                        <th scope="col">Requested Date</th>
                        <th scope="col">Return Date</th>
                        <th scope="col">Status</th>
                        <th scope="col">Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <!-- FIXED DATA  -->
                      <!-- <tr>
                        <td>Tiger Nixon</td>
                        <td>System Architect</td>
                        <td>Edinburgh</td>
                        <td>61</td>
                        <td>2011/04/25</td>
                        <td>$320,800</td>
                      </tr>
                      <tr>
                        <td>Garrett Winters</td>
                        <td>Accountant</td>
                        <td>Tokyo</td>
                        <td>63</td>
                        <td>2011/07/25</td>
                        <td>$170,750</td>
                      </tr> -->
                      <!-- RESPONSE DATA  -->
                      <tr
                        v-for="book_request in book_requests"
                        :key="book_request.id"
                      >
                        <td>{{ book_request.id }}</td>
                        <td>{{ book_request.book_copy_id }}</td>
                        <td>{{ book_request.requested_date }}</td>
                        <td>{{ book_request.return_date }}</td>
                        <td v-if="book_request.status == `Returned`">
                          <span class="badge badge-success">{{
                            book_request.status
                          }}</span>
                        </td>
                        <td v-else-if="book_request.status == `Overdue`">
                          <span class="badge badge-warning">{{
                            book_request.status
                          }}</span>
                        </td>
                        <td v-else>
                          <span class="badge badge-info">{{
                            book_request.status
                          }}</span>
                        </td>
                        <td>
                          <button
                            v-if="book_request.status == `Returned`"
                            class="btn btn-outline-danger"
                            @click.prevent="deleteBookRequest(book_request.id)"
                          >
                            Delete
                          </button>
                          <button
                            v-else
                            class="btn btn-outline-success"
                            @click.prevent="returnBook(book_request.id)"
                          >
                            Return
                          </button>
                        </td>
                      </tr>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th scope="col">#Request ID</th>
                        <th scope="col">#Book's Copy ID</th>
                        <th scope="col">Requested Date</th>
                        <th scope="col">Return Date</th>
                        <th scope="col">Status</th>
                        <th scope="col">Action</th>
                      </tr>
                    </tfoot>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- end of main-content -->
  </div>
  <!-- Footer Start -->
</template>

<script>
export default {
  data() {
    return {
      book_request: {},
      book_requests: [],
    };
  },
  created() {
    this.axios
      .get("http://localhost:8000/api/book_requests")
      .then((response) => {
        this.book_requests = response.data.book_requests;
      });
  },
  methods: {
    addBookRequest() {
      this.axios
        .post(`http://localhost:8000/api/book_request/add`, this.book_request)
        .then((response) => {
          this.book_requests = response.data.book_requests;
          if (response.data.status == "success") {
            $("#message")
              .text("Add request success!")
              .addClass(" text-success");
          }
        });
    },
    returnBook(book_request_id) {
      this.axios
        .post(
          `http://localhost:8000/api/book_request/return/${book_request_id}`
        )
        .then((response) => {
          // let i = this.books.map((item) => item.id).indexOf(id); //fix index of objects
          // this.books.splice(i, 1);
          this.book_requests = response.data.book_requests;
        });
    },
    deleteBookRequest(id) {
      this.axios
        .delete(`http://localhost:8000/api/book_request/delete/${id}`)
        .then((response) => {
          let i = this.book_requests.map((item) => item.id).indexOf(id); //fix index of objects
          this.book_requests.splice(i, 1);
        });
    },
  },
};
</script>