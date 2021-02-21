require("./bootstrap");
import Vue from "vue";

import Login from './components/Login.vue';
import VueRouter from 'vue-router';
import VueAxios from 'vue-axios';
import axios from 'axios';
import {routes} from './routes';
import Store from './store';
 
Vue.prototype.$http = axios;
// const token = localStorage.getItem('token')
// if (token) {
//   Vue.prototype.$http.defaults.headers.common['Authorization'] = `Bearer ${token}`;
// }
Vue.use(VueRouter);
Vue.use(VueAxios, axios);

const router = new VueRouter({
    mode: "history",
    routes: routes
});

const app2 = new Vue({
    el: "#login_container",
    router: router,
    store: Store,
    render: h => h(Login),
});
