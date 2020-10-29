<template>
  <div id="cart">
    <!-- 顶部导航开始 -->
    <mt-header title="购物车" class="header">
      <mt-button slot="left" icon="back"></mt-button>
    </mt-header>
    <!-- 内容正文开始 -->
    <div class="header_btn">
      <p>登录后将同步您的购物车商品
        <span>
          <mt-button size="small" class="header_smallbtn">登录</mt-button>
        </span>
      </p>
    </div>
    <div class="matter_top">
      <img src="../assets/img/m_shopping_empty_cart.png" alt="">
      <p>购物车内暂时没有商品</p>
      <mt-button size="small" class="header_smallbtn">去逛逛</mt-button>
    </div>
    <div class="matter_bom">
      <p>猜你喜欢</p>
      <div class="matter_list">
        <div v-for="(v,i) of 6" :key="i">
          <img src="../assets/img/9010966.jpg" alt="">
          <p>一往情深·精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎</p>
          <p class="price">¥236</p>
        </div>
      </div>
      <p>已经到底喽…</p>
    </div>
    
    <!-- 内容正文结束 -->
    <!-- 顶部导航结束 -->
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
      active:'cart'
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
#cart .header{
  background-color: #fff !important;
  color: #000;
}
.header h1{
  font-size: 16px !important;
  color: #000;
}
.header_btn{
  background: #fff0ec;
  font-size: 13px;
  text-align: center;
  line-height: 40px;
}
.header_smallbtn{
  border: 1px solid #FF734C;
  outline: 0;
  color: #FF734C;
  border-radius: 10px;
  background: #fff0ec;
  margin-left: 10px;
  padding: 0 20px;
  height: 25px;
  line-height: 25px;
}
.matter_top{
  display: flex;
  flex-flow: column nowrap;
  justify-content: space-around;
  align-items: center;
  border-bottom: 6px solid #eee;
  padding: 30px 0;
}
.matter_top img{
  width: 127px;
  margin: 20px;
}
.matter_top p{
  font-size: 13px;
  color: #000;
  margin: 10px 0;
}
.matter_top button{
  margin: 10px;
  padding: 0 30px;
  color: #fff;
  font-weight: bold;
  background: #ff734c;
}
.matter_bom{
  width: 100%;
  display: flex;
  flex-flow: column nowrap;
  margin-bottom: 55px;
}
.matter_bom>p{
  line-height: 50px;
  padding-left: 20px;
}
.matter_bom>p:nth-child(3){
  text-align: center;
  font-size: 13px;
  color: #999;
}
.matter_list{
  width: 100%;
}
.matter_list>div{
  width: 47%;
  float: left;
  margin-left: 2%;
  margin-bottom: 15px;
  border-radius: 5px;
  box-shadow: 0rem 0.28571429rem 0.42857143rem 0rem #dee2e5;
}
.matter_list>div img{
  width: 100%;
}
.matter_list>div>p{
  font-size: 13px;
  display: inline-block;
  width: 100%;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  padding-left: 10px;
  box-sizing: border-box;
  line-height: 25px;
}
.matter_list .price{
  color: #ff734c;
  font-size: 15px;
}
</style>