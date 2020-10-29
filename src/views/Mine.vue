<template>
  <div id="mine">
    <!-- 顶部导航开始 -->
    <mt-header title="购物车" class="header">
      <mt-button slot="left" icon="back"></mt-button>
    </mt-header>
    <!-- 顶部导航结束 -->
    <!-- 内容正文开始 -->
    <div class="matter">
      <div>
        <div class="matter_flex">
          <p>Hi,欢迎来到花礼网</p>
          <mt-button>登录/注册</mt-button>
        </div>
      </div>
      <div class="matter_list">
        <div>
          <span>我的订单</span>
          <span>全部订单></span>
        </div>
        <div>
          <div v-for="(v,i) of 3" :key="i">
            <img src="../assets/img/myinfo_pendingpay.png" alt="">
            <p>待付款</p>
          </div>
        </div>
      </div>
    </div>
    <div class="matter_item">
      <div>
        <div v-for="(v,i) of 4" :key="i">
          <img src="../assets/img/coupon.png" alt="">
          <p>优惠券</p>
        </div>
      </div>
      <div>
        <div v-for="(v,i) of 4" :key="i">
          <img src="../assets/img/coupon.png" alt="">
          <p>优惠券</p>
        </div>
      </div>
    </div>
    <div class="matter_item">
      <div>
        <div v-for="(v,i) of 4" :key="i">
          <img src="../assets/img/coupon.png" alt="">
          <p>优惠券</p>
        </div>
      </div>
    </div>
    <!-- 内容正文结束 -->
    <!-- 底部导航开始 -->
      <mt-tabbar v-model="active" class="tabbar" fixed>
      <mt-tab-item id="index">
        <img src="../assets/home_enable.png" alt="" slot="icon" v-if="this.active == 'index'">
        <img src="../assets/home_disable.png" alt="" slot="icon" v-else>
        首页
      </mt-tab-item>
      <mt-tab-item id="classify"> 
        <img src="../assets/img/classify_disable.png" alt="" slot="icon" v-if="this.active == 'classify'">
        <img src="../assets/img/classify.png" alt="" slot="icon" v-else>
        分类
      </mt-tab-item>
      <mt-tab-item id="cart"> 
        <img src="../assets/cart_enable.png" alt="" slot="icon" v-if="this.active == 'cart'">
        <img src="../assets/cart_disable.png" alt="" slot="icon" v-else>
        购物车
      </mt-tab-item>
      <mt-tab-item id="mine"> 
        <img src="../assets/me_enable.png" alt="" slot="icon" v-if="this.active == 'mine'">
        <img src="../assets/me_disable.png" alt="" slot="icon" v-else>
        购物车
      </mt-tab-item>
    </mt-tabbar>
    <!-- 底部导航结束 -->
  </div>
</template>
<script>
export default {
  data(){
    return{
      active:'mine'
    }
  },
  watch:{
    active(){
      switch (this.active){
        case 'index':
          this.$router.push('/')
          break;
        case 'classify':
          this.$router.push('/classify')
          break;
        case 'cart':
          this.$router.push('/cart')
          break;
        case 'mine':
          this.$router.push('/mine')
          break;
      }
    }
  },
}
</script>
<style scoped>
#mine .header{
  background-color: #fff !important;
  color: #000;
}
.header h1{
  font-size: 16px !important;
  color: #000;
}
.matter{
  width: 100%;
  background-image: url('../assets/img/backgroundv3.png');
  background-size: 100%;
  background-repeat: no-repeat;
}
.matter_flex{
  display: flex;
  flex-flow: column nowrap;
  justify-content: space-around;
  align-items: center;
  text-align: center;
  padding: 30px 0 30px 0;
 
}
.matter_flex p{
  margin-bottom: 10px;
  font-size: 14px;
  color:#fff;
}
.matter_flex button{
  width: 35%;
  outline: 0;
  color: #000;
  background: #fff;
  border-radius: 20px;
  font-size: 14px;
}
.matter_list{
  width: 94%;
  margin: 0 auto;
  background: #fff;
  border:1px solid #fff;
  border-radius: 5px;
  margin-top: -5px;
  font-size: 15px;
  box-shadow: 0 0.28571429rem 0.42857143rem 0 #DEE2E5;
}
.matter_list>div:nth-child(1){
  border-bottom: 1px solid #eee;
}
.matter_list>div{
  display: flex;
  flex-flow: row nowrap;
  justify-content: space-between;
  align-items: center;
}
.matter_list>div>span{
  line-height: 20px;
  margin: 10px;
}
.matter_list>div:nth-child(2){
  padding: 10px 30px;
}
.matter_list>div img{
  width: 50%;
  padding-left: 25%;
  text-align: center;
}
.matter_list>div p{
  text-align: center;
  line-height: 24px;
}
.matter_item{
  width: 96%;
  width: 94%;
  margin: 0 auto;
  box-shadow: 0 0.28571429rem 0.42857143rem 0 #DEE2E5;
  margin-top: 20px;
}
.matter_item>div{
  display: flex;
  flex-flow: row nowrap;
  justify-content: space-between;
}
.matter_item>div:nth-child(1){
  border-bottom: 1px solid #eee;
}
.matter_item>div>div{
  text-align: center;
  padding: 20px;
  font-size: 13px;
}
.matter_item>div>div>p{
  line-height: 25px;
}
</style>