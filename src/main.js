import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

// 导入mint-ui
import Mintui from 'mint-ui'
import 'mint-ui/lib/style.css'
Vue.use(Mintui)

// 导入axios
import axios from 'axios'
axios.defaults.baseURL = 'http://127.0.0.1:3000'
Vue.prototype.axios = axios;


Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
