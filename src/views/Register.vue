<template>
  <div>
    <mt-header title="注册">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <router-link to="" slot="right">
        <mt-button icon="more"></mt-button>
      </router-link>
    </mt-header>
    <div>
      <mt-field type="text" label="用户名" placeholder="请输入用户名" v-model="userphone" :state="phonestate" @blur.native.capture="checkuserphone"></mt-field>
      <mt-field type="password" label="密码" placeholder="请输入6~20位密码" v-model="upwd" :state="upwdstate" @blur.native.capture="checkupwd"></mt-field>
      <mt-field type="password" label="确认密码" placeholder="请再次输入密码" v-model="upwdagree" :state="upwdagreestate" @blur.native.capture="checkupwdagree"></mt-field>
    </div>
    <mt-button type="primary" size="large" @click="registor">提交</mt-button>
  </div>
</template>
<script>
export default {
  data(){
    return{
      userphone:'',
      upwd:'',
      upwdagree:'',
      phonestate:'',
      upwdstate:'',
      upwdagreestate:''
    }
  },
  methods:{
    checkuserphone(){
      let reg = /^[\w\d]{20}&/
      if(reg.test(this.userphone.trim())){
        this.phonestate = 'success'
        return true
      }else{
        this.phonestate = 'error'
        this.$toast({
          message:'对不起,格式错误,请重试！',
          position:'moddle',
          duration:1500
        })
        return false
      }
    },
    checkupwd(){
      let reg = /^[\w\d]{6,20}&/
      if(reg.test(this.userphone)){
        this.upwdstate = 'success'
        return true
      }else{
        this.upwdstate = 'error'
        this.$toast({
          message:'对不起,密码格式错误,请重试！',
          position:'moddle',
          duration:1500
        })
        return false
      }
    },
    checkupwdagree(){
      if(this.upwd != this.upwdagree || this.upwdagree == ''){
        this.upwdagreestate = 'error'
        this.$messagebox("提示信息","密码不一致")
      }else{
        this.upwdagreestate = 'success'
      }
    },
    registor(){
      if(this.checkuserphone() && this.checkupwd() && this.checkupwdagree()){
        // this.axios.post('/register',`rname=${this.userphone}&upwd=${this.upwd}`).then(res=>{
        //   if(res.data.code == 0){
        //     this.$messagebox("提示信息","该用户已存在")
        //   }else{
        //     this.$toast("注册成功");
        //     this.$router.push('/')
        //   }
        // })
      }
    }
  }
}
</script>
<style>
.mint-field .mint-cell-title{
  width:80px !important;
}
</style>