<template>
  <div>
    <router-link :to="{ name: 'add_book' }" class="btn btn-outline-primary m-1">
      Add Book
    </router-link>

    <table class="table">
      <thead>
        <tr>
          <th>Name</th>
          <th>Author</th>
          <th>Publisher</th>
          <th>Number of requests</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="book in books" :key="book.id">
          <td>{{ book.name }}</td>
          <td>{{ book.author }}</td>
          <td>{{ book.publisher }}</td>
          <td>{{ book.number_of_requests}}</td>
          <!-- <td>
            <router-link
              :to="{ name: 'edit', params: { id: appuser.id } }"
              class="btn btn-primary"
              >Edit</router-link
            >
            <button
              class="btn btn-danger"
              @click.prevent="deleteAppUser(appuser.id)"
            >
              Delete
            </button>
          </td> -->
        </tr>
      </tbody>
    </table>
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
      this.books = response.data.data;
    });
  },
};
</script>