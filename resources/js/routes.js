import Home from "./components/Home.vue";
import About from "./components/About.vue";
import OpeningHours from "./components/OpeningHours.vue";
import AddBook from "./components/Book/AddBook.vue";
import Books from "./components/Book/Books.vue";
// import Router from "vue-router";
// import Vue from "vue";


export const routes = [
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
]