import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    isLogin:sessionStorage.getItem('isLogin') || false,
    userId:sessionStorage.getItem('userId') || 0,
    username:sessionStorage.getItem('username') || ''
  },
  mutations: {
    login_mutation(state,payload){
      state.isLogin = true;
      state.userId = payload.id;
      state.username = payload.username;
    }
  },
  actions: {
  },
  modules: {
  }
})
