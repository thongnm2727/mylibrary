<template>
  <table class="table table-striped">
    <thead>
      <tr>
        <th scope="col">#ID</th>
        <th scope="col">#Copy ID</th>
        <th scope="col">Requested Date</th>
        <th scope="col">Return Date</th>
        <th scope="col">Status</th>
        <th scope="col">Action</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="book_request in book_requests" :key="book_request.id">
        <td>{{ book_request.id }}</td>
        <td>{{ book_request.book_copy_id }}</td>
        <td>{{ book_request.requested_date }}</td>
        <td>{{ book_request.return_date }}</td>
        <td v-if="book_request.status == `Returned`">
          <span class="badge badge-success">{{ book_request.status }}</span>
        </td>
        <td v-else>
          <span class="badge badge-info">{{ book_request.status }}</span>
        </td>
        <td>
          <!-- <button
            class="btn btn-outline-danger"
            @click.prevent="returnBookCopy(book_request.id)" 
          >
            Return
          </button> -->
        </td>
      </tr>
    </tbody>
  </table>
</template>

<script>
export default {
  data() {
    return {
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
};
</script>