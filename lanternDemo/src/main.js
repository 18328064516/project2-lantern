import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
// import qs from './qs'
// 全局 引入 axios 使用方法 
import axios from 'axios'
// 全局 配置 axios 默认地址
axios.defaults.baseURL = 'http://127.0.0.1:3303'
// 将 axios 放到 原型链上 供全局使用
Vue.prototype.axios = axios



// 引入 VueAwesomeswiper
import VueAwesomeswiper from 'vue-awesome-swiper'
Vue.use(VueAwesomeswiper)

import Carouse from './views/Carouse.vue'
Vue.component("my-carouse",Carouse)

import Backtop from './components/Backtop.vue'
Vue.component("my-backtop",Backtop)

import MH from './components/Header.vue'
Vue.component("my-header",MH)
import MF from './components/Footer.vue'
Vue.component("my-footer",MF)

import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(ElementUI);

//1.导入MintUI
import MintUI from 'mint-ui'
//2.导入MintUI的样式表文件
import 'mint-ui/lib/style.min.css'
//3.通过Vue.use()方法注册为插件
Vue.use(MintUI)


Vue.config.productionTip = false


new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
