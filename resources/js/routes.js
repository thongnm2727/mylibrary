import Home from "./components/Home.vue";
import About from "./components/About.vue";
import OpeningHours from "./components/OpeningHours.vue";
import AddBook from "./components/Book/AddBook.vue";
import Books from "./components/Book/Books.vue";
import BookDetail from "./components/Book/BookDetail.vue";
import UpdateBook from "./components/Book/UpdateBook.vue";
import BookRequests from "./components/BookRequest/BookRequests.vue";
import Contacts from "./components/Contacts.vue"
// import Router from "vue-router";
// import Vue from "vue";


export const routes = [
    {
        name: 'contacts',
        path: '/contacts',
        component: Contacts,
    },
    {
        name: "default",
        path: '/',
        redirect : {name : 'home'}
    },
    {
        name: "home",
        path: "/home",
        component: Home,
    },
    {
        name: "about",
        path: "/about",
        component: About,
    },
    {
        name: "openinghours",
        path: "/openinghours",
        component: OpeningHours,
    },
    {
        name: "add_book",
        path: "/add_book",
        component: AddBook,
    },
    {
        name: "books",
        path: "/books",
        component: Books,
    },
    {
        name:"book_detail",
        path: "/book/detail/:id",
        component: BookDetail,
    },
    {
        name:"update_book",
        path: "/book/update/:id",
        component: UpdateBook,
    },
    {
        name:"book_requests",
        path: "/book_requests",
        component: BookRequests,
    },
]