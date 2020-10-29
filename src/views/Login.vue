<template>
  <div>
    <mt-header title="登录">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <router-link to="" slot="right">
        <mt-button icon="more"></mt-button>
      </router-link>
    </mt-header>
    <mt-field type="text" label="用户名:" placeholder="请输入用户名" v-model="username" :state="namestate" @blur.native.capture="checkname"></mt-field>
    <mt-field type="password" label="密码:" placeholder="请输入密码" v-model="upwd" :state="upwdsate" @blur.native.capture="checkupwd"></mt-field>

    <mt-button size="large" type="primary" @click="login">登录</mt-button>
  </div>
</template>
<script>
export default {
  data(){
    return{
      username:'',
      upwd:'',
      //状态
      namestate:'',
      upwdsate:''
    }
  },
  methods:{
    checkname(){
      let reg = /^\w{6,20}$/
      if(reg.test(this.username.trim())){
        this.namestate = "success"
        return true
      }else{
        this.namestate = "error"
        this.$toast({
          message:'请输入合法的用户名',
          position:'middle',
          ducation:1500
        })
        return false
      }
    },
    checkupwd(){
      let reg = /^\w{6,20}$/
      if(reg.test(this.upwd.trim())){
        this.upwdsate = "success"
        return true
      }else{
        this.upwdsate = "error"
        this.$toast({
          message:'密码不正确',
          position:'middle',
          ducation:1500
        })
        return false
      }
    },
    login(){
      if(checkname() && checkupwd()){
        // this.axios.post('/login',`username=${this.username}&password=${this.upwd}`).then(res=>{
        //   if(res.data.code){
        //     this.$store.commit('login_mutation',res.data.results)
        //     sessionStorage.setItem('isLogin',true)
        //     sessionStorage.setItem('userId',res.data.results.id)
        //     sessionStorage.setItem('username',res.data.results.username)
        //     this.$router.push('/')
        //   }else{
        //     this.$massagebox("提示信息","账号或者密码错误")
        //   }
        // })
      }
    }
  }
}
</script>
<style lang="stylus">

</style>