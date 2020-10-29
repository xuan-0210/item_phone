import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Login from '../views/Login.vue'
import Register from '../views/Register.vue'
import Cart from '../views/Cart.vue'
import Classify from '../views/Classify.vue'
import Mine from '../views/Mine.vue'
import Flower from '../views/Flower.vue'
import Productpj from '../views/Productpj.vue'
Vue.use(VueRouter)

const routes = [
  {
    path: '/productpj',
    component: Productpj
  },
  {
    path: '/flower',
    component: Flower
  },
  {
    path: '/mine',
    component: Mine
  },
  {
    path: '/classify',
    component: Classify
  },
  {
    path: '/cart',
    component: Cart
  }, 
  {
    path: '/register',
    component: Register
  },  
  {
    path: '/login',
    component: Login
  },  
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
