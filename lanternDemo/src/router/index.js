import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'

// import Carouse from '../views/Carouse.vue'
//import Header from '../components/demo/Header.vue'
//import Footer from '../components/demo/Footer.vue'
import Register from '../views/Register.vue'
import Login from '../views/Login.vue'
import ProductInfo from '../views/ProductInfo.vue'
import Details from '../views/Details.vue'
import Cart from '../views/Cart.vue'


Vue.use(VueRouter)

const routes = [
  {
    path: '/cart', 
    component: Cart,
    // props:true
  },
  {
    path: '/details/:cid', 
    component: Details
  },
  {
    path: '/products/:cid', 
    component: ProductInfo
  },
  {
    path: '/login',
    component: Login
  },
  {
    path: '/register',
    component: Register
  },
  // {
  //   path: '/header',
  //   component: Header
  // },
  // {
  //   path: '/footer',
  //   component: Footer
  // },
  {
    path: '/',
    name: 'Home',//可以不要name
    component: Home
  },
  // {//只有当用户尝试访问/about路径时，才临时引入About组件内容
  //   path: '/about',
  //   name: 'About',//可以不要name,为分段的组件文件起名
  //   // route level code-splitting
  //   // this generates a separate chunk (about.[hash].js) for this route
  //   // which is lazy-loaded when the route is visited.
  //   //使用匿名函数方式，临时引入组件对象
  //   component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  // }
]

const router = new VueRouter({
  mode: 'history',//该模式对应的浏览器中网址后面就不用跟#，例如http://localhost:8080/header
  base: process.env.BASE_URL,
  routes
})



export default router
