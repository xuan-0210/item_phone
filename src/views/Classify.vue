<template>
  <div>
    <!-- 底部搜索栏开始 -->
    <div class="header">
      <router-link to="/">搜索鲜花、蛋糕、礼品</router-link>
    </div>
    <!-- 底部搜索栏结束 -->
    <!-- 内容正文开始 -->
    <div class="container">
      <div>
        <mt-navbar v-model="contain" class="contain">
          <mt-tab-item class="contain_item" id="1">热门推荐</mt-tab-item>
          <mt-tab-item class="contain_item" id="2">热门推荐</mt-tab-item>
          <mt-tab-item class="contain_item" id="3">热门推荐</mt-tab-item>
        </mt-navbar>
      </div>
      <div>
        <mt-tab-container v-model="contain">
          <mt-tab-container-item v-for="(v,i) of 3" :key="i" :id="i.toString()" class="contain_room">
            <img src="../assets/img/20_chongyang_all.jpg" alt="">
            <div class="contain_list">
              <div v-for="(v,i) of 9" :key="i">
                <img src="../assets/img/m_category_hot_Lover.png" alt="">
                <p>送恋人鲜花</p>
              </div>
            </div>
          </mt-tab-container-item>
        </mt-tab-container>
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
      contain:'1',
      active:'classify'
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
.header{
  margin: 5px;
  padding: 0 .5rem;
  border-bottom: 1px solid #eee;
}
.header a{
  box-sizing: border-box;
  display: block;
  width: 100%;
  line-height: 2.2rem;
  border: 0;
  margin-bottom: 5px;
  background: #f3f5f7;
  border-radius: 15px;
  text-decoration: none;
  padding-left: 2.7rem;
  color: #666;
  font-size: 14px;
  background-image: url('../assets/icon/search.png');
  background-repeat: no-repeat;
  background-size: 15px;
  background-position: 17px center;
}
.container{
  display: flex;
  margin-bottom: 50px;
}
.container>div:nth-child(1){
  width: 20%;height: 600px;
  margin-left: 3px;
  border-right: 1px solid #eee;
}

.contain{
  display: flex;
  flex-flow: column nowrap;
}
.contain_item{
  width: 80px;
}
.mint-navbar .mint-tab-item.is-selected{
  border-bottom:none;
  border-left: 3px solid #0aa1ed;
  margin-left: -3px;
  margin-bottom: 10px;
}
.mint-navbar .mint-tab-item{
  padding:10px 0;
  margin: 10px 0; 
}
.mint-tab-item-label{
  font-size: 14px;
}
.container>div:nth-child(2){
  width: 75%;
  padding:5px 10px;
}
.contain{
  width: 100%;
}
.contain_room{
  width: 100%;
}
.contain_room>img{
  width: 100%;
}
.contain_list{
  width: 98%;
  margin: 1%;
  display: flex;
  flex-flow: row wrap ;
  justify-content: space-between;
  box-shadow: 0px 2px 6px 0px #e9ecf0;
}
.contain_list div{
  flex: 0 0 33.3%;
  padding: 5px 0;
  box-sizing: border-box;
  text-align: center;
}
.contain_list img{
  width: 80%;
}
.contain_list p{
  color: #666;
  font-size: 12px;
  line-height: 20px;
}
</style>