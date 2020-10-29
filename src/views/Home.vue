<template>
  <div class="home">
    <!-- <mt-header title="前端学院">
      <div slot="right" class="header" v-if="!this.$store.state.isLogin">
        <router-link to="/login">登录</router-link>
        <router-link to="/register">注册</router-link>
      </div>
      <div slot="right" v-else>
        <router-link>
          <mt-button type="primary">
            {{this.$store.state.username}}
            <img src="../assets/退出.png" alt="">
          </mt-button>
        </router-link>
      </div>
    </mt-header> -->
    <!-- 头部开始 -->
    <mt-header title="Hua.com花礼网" class="header">
      <router-link to="/search" slot="left">
        <img src="../assets/img/search.png" alt="">
      </router-link>
      <!-- <mt-button slot="left">
        <img src="../assets/img/search.png" alt="">
      </mt-button> -->
      <mt-button slot="right">
        <img src="../assets/img/service.png" alt="">
      </mt-button>
    </mt-header>
    <!-- 头部结束 -->
    <!-- 轮播图开始 -->
    <mt-swipe :auto="3000" class="swipe">
      <mt-swipe-item v-for="(v,i) of artical" :key="i">
        <img :src="v.filenam" alt="">
      </mt-swipe-item>
      <!-- <mt-swipe-item>
        <img src="../assets/img/20_zhongqiu_banner_m.jpg" alt="">
      </mt-swipe-item>
       <mt-swipe-item>
        <img src="../assets/img/19_birthday_banner_m.jpg" alt="">
      </mt-swipe-item>
      <mt-swipe-item>
        <img src="../assets/img/17_banner_tc_m.jpg" alt="">
      </mt-swipe-item> -->
      <!-- <mt-swipe-item>
        <img src="../assets/img/18_youflower_m.jpg" alt="">
      </mt-swipe-item> -->
    </mt-swipe>
    <!-- 轮播图结束 -->
    <!-- 内容开始 -->
    <div class="content">
      <ul>
        <li v-for="(v,i) of text" :key="i">
          <img src="../assets/success.png" alt="">
          <span>{{v.title}}</span>
        </li>
        <!-- <li>
          <img src="../assets/success.png" alt="">
          <span>15年品牌</span>
        </li>
        <li>
          <img src="../assets/success.png" alt="">
          <span>3小时送达</span>
        </li> -->
        <li>
          <img src="../assets/success.png" alt="">
          <span>最近<span><router-link to="/productpj">3987994</router-link></span>条好评</span>
        </li>
      </ul>
      <div>
        <div v-for="(v,i) of procate" :key="i" class="content_list">
          <router-link to="/flower">
            <img :src="v.img" alt="">
            <span>{{v.title}}</span>
          </router-link>
        </div>
      </div>
    </div>
    <div class="details">
      <p>一秒选花</p>
      <div class="details_item">
        <div v-for="(v,i) of 3" :key="i">
          <router-link to="/flower">
            <img src="../assets/img/m_home_use_lover.png" alt="">
            <span>送恋人</span>
          </router-link>
        </div>
      </div>
      <div class="details_item details_top">
        <div v-for="(v,i) of 4" :key="i">
          <router-link to="/flower">
            <img src="../assets/img/m_home_use_birthday2.png" alt="">
            <span>送恋人</span>
          </router-link>
        </div>
      </div>
      <div class="details_item details_reset">
        <div v-for="(v,i) of 2" :key="i">
          <router-link to="/flower">
            <img src="../assets/img/m_home_ranklist2.png" alt="">
            <span>热销榜</span>
            <span>集万千宠爱</span>
            <button>大家都在买</button>
            <p>热销22.1万束</p>
          </router-link>
        </div>
      </div>
      <div class="details_item details_pange">
        <div v-for="(v,i) of 3" :key="i">
          <router-link to="/flower">
            <img src="../assets/img/xinpinlaixi.jpg" alt="">
            <span>新品来袭</span>
          </router-link>
        </div>
      </div>
      <div class="details_lists">
        <p>送恋人/爱情鲜花</p>
        <div v-for="(v,i) of 8" :key="i">
          <router-link to="/flower">
            <div>
              <img src="../assets/img/9010966.jpg_220x240.jpg" alt="">
            </div>
            <div class="details_info">
              <div>
                <p>一往情深</p>
                <span>精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎</span>
                <mt-badge type="error">年销售冠军</mt-badge>
              </div>
              <p>经典爆款,年受销售总冠军</p>
              <div class="details_info_bottom">
                <div>
                  <p>¥235 <span><s>¥315</s></span></p>
                  <p>已销售12.8万件</p>
                </div>
                <div>
                  <img src="../assets/img/cart.png" alt="">
                </div>
              </div>
            </div>
          </router-link>
        </div>
        <button>查看更多</button>
      </div>
      <div class="details_lists" v-for="(v,i) of 2" :key="i">
        <p>永生花推荐</p>
        <router-link to="/flower">
          <div class="product-list-vertical">
            <div v-for="(v,i) of 4" :key="i">
              <img src="../assets/img/1073263.jpg_220x240.jpg" alt="">
              <mt-badge type="warning" size="normal">创意新品</mt-badge>
              <h6>永生花满月艺术台灯/朦胧粉·永生花台灯</h6>
              <div class="details_info_bottom">
                <div>
                  <p>¥235 <span><s>¥315</s></span></p>
                  <p>已销售12.8万件</p>
                </div>
                <div>
                  <img src="../assets/img/cart.png" alt="">
                </div>
              </div>
            </div>
          </div>
        </router-link>
        <button>查看更多</button>
      </div>
      <div>
        <router-link to="/">
          <img width="100%" src="../assets/img/m_home_qiyetuangou.png" alt="">
        </router-link>
      </div>
      <div class="details_brand">
        <p class="title">为什么选择我们</p>
        <div class="details_brand_lists">
          <div v-for="(v,i) of 6" :key="i">
            <img src="../assets/img/m_details_brand_02.png" alt="">
            <p>获评鲜花龙头企业</p>
          </div>
        </div>
      </div>
      <div class="details_footer">
        <div class="flex">
          <div v-for="(v,i) of 8" :key="i">
            <router-link to="/login">企业团购</router-link>
          </div>
        </div>
        <div class="footer_flex">
          <div v-for="(v,i) of 2" :key="i">
            <div>
              <img src="../assets/img/Phone.png" alt="">
            </div>
            <p>客户端</p>
          </div>
        </div>
        <p>Copyright © 2005~2020 花礼网（中国鲜花礼品网）版权所有</p>
        <p>中国鲜花网领先品牌，鲜花速递专家！</p>
        <p>深圳市百易信息技术有限公司  粤ICP备09171662号</p>
      </div>
    </div>
    <!-- 内容结束 -->
    <!-- 尾部开始 -->
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
    <!-- 尾部结束 -->
  </div>
</template>
<script>
export default {
  data(){
    return{
      active:'index',
      artical:[],
      text:[],
      procate:[]
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
  // methods(){

  // },
  mounted(){
    this.axios.get('/swiper').then(res=>{
      let data = res.data.result
      data.forEach(item => {
        if(item.filenam != null){
          item.filenam = require("../assets/img/" + item.filenam)
        }
        this.artical.push(item)
      });
    })
    this.axios.get('/text').then(res=>{
      this.text = res.data.result
    }),
    this.axios.get('/procate').then(res=>{
      let data = res.data.result;
      data.forEach(item=>{
        if(item.img != null){
          item.img = require('../assets/img/' + item.img)
        }
        this.procate.push(item)
      })
    })
  }
}
</script>
<style>
.details_brand{
  width: 100%;
  padding: 5px 0;
}
.details_brand>p.title{
  text-align: center;
  border: 0;
  padding: 0;
  font-size: 15px;
}
.details_brand_lists{
  display: flex;
  flex-flow: row wrap;
  justify-content: space-between;
}
.details_brand_lists div{
  flex: 0 0 32%;
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 10px;
}
.details_brand_lists div img{
  width:50%;
  text-align: center;
}
.details_brand_lists div p{
  border: 0;
  margin-top: 10px;
  padding: 0;
  font-size: 12px;
  text-align: center;
}
.details{
  margin-bottom: 55px;
}
.home header{
  height: 48px;
  background-color: #435448;
}
.header h1{
  font-family: Raleway;
  font-size: 20px;
  color: #e66f4c;
}
.home .swipe{
  width: 100%;
  height: 180px;
}
.home .swipe img{
  width: 100%;
}
.home .mint-swipe-indicator{
  background: #fff;
  opacity: 1;
}
.home .mint-swipe-indicator.is-active{
  background: wheat;
  width: 50px;
  height: 8px;
  border-radius: 15px;
}
.content ul{
  display: flex;
  flex-flow: nowrap row;
  font-size: 10px;
  justify-content: space-between;
  padding: 5px;
  margin: 5px 0;
}
.content ul li img{
  vertical-align: middle;
}
.content ul li span{
  line-height: 15px;
}
.content>div{
  /* width: 100%; */
  display: flex;
  flex-flow:row nowrap;
  justify-content: space-between;
}
.content_list a{
  display: flex;
  flex-flow: column nowrap;
  align-items: center;
  font-size: 12px;
  text-decoration: none;
  color: #333;
}
.content_list img{
  width: 50%;
  margin: 10px 15px 0;
}
.details{
  padding: 5px;
  font-size: 14px;
}
.details p{
  border-left: 3px solid #435448;
  margin: 10px 10px;
  padding-left: 15px;
}
.details_item{
  display: flex;
  flex-flow: row nowrap;
  justify-content: space-around;
  /* border: 1px solid red; */
}
.details_item div{
  flex: 0 0 33.3%;
  padding: 5px;
  box-sizing: border-box;
  position: relative;
}
.details_item div img{
  width: 100%;
}
.details_item div span{
  display:inline-block;
  /* border: 1px solid #f00; */
  /* margin-left: 30%; */
  position: absolute;
  bottom: 12px;
  left:35%;
  text-align: center;
  color: white;
}
/* .details_top{
  margin: 0;
} */
.details_top div{
  flex: 0 0 25%;
}
.details_top div span{
  top: 15px;
  left: 30%;
  color: #000;
}
.details_reset div{
  flex:0 0 47%;
  margin: 3px 5px;
}
.details_reset div span{
  top: 30px;
  left: 15px;
  color: #666;
  font-size: 12px;
}
.details_reset div{
  border: 1px solid #eee;
}
.details_reset div span:nth-child(2){
  top: 10px;
  font-size: 14px;
  color: #000;
}
.details_reset div button{
  outline: 0;
  border: 0;
  border-radius: 10px;
  color: white;
  background: #FF734C;
  position: absolute;
  bottom: 5px;
  left: 5px;
}
.details_reset div p{
  border: 0;
  padding: 0;
  margin: 0;
  position: absolute;
  bottom: 5px;
  right: 5px;
  font-size: 12px;
}
.details_pange{
  padding-bottom: 10px;
}
.details_pange div span{
  left: 6px;
  bottom: 7px;
  width: 82%;
  padding: 5px;
  font-size: 12px;
  background: rgba(35, 38, 40, 0.8);
}
.details_lists{
  width: 100%;
  border-top: 5px solid #eee;
}
.details_lists a{
  text-decoration: none;
  color: #333;
}
.details_lists p{
  border: 0;
  text-align: center;
  line-height: 20px;
}
.details_lists>div a{
  width: 100%;
  display: flex;
  flex-flow: row nowrap;
  padding: 5px;
  border-radius: 5px;
  margin: 10px 0;
  box-sizing: border-box;
  box-shadow: 0 5px 10px #eee;
  text-decoration: none;
  color: #333;
}
.details_lists>div>a>div{
  flex: 0 0 50%;
}
.details_lists div img{
  width: 100%;
}
.details_info{
  width: 100%;
  display: flex;
  flex-flow: column wrap;
  padding: 0 10px;
  box-sizing: border-box;
}
.details_info>div{
  width: 100%;
}
.details_info>div p{
  border: 0;
  padding: 0;
  margin: 5px 0;
  text-align: left;
}
.details_info div span:nth-child(2){
  margin: 5px 0;
  font-size: 13px;
  display: inline-block;
  width: 130px;
  overflow: hidden;
  white-space:nowrap;
  text-overflow: ellipsis;
}
.home .mint-badge.is-size-normal{
  font-size: 13px;
  margin-top: 7px;
}
.details_info p:nth-child(2){
  text-align: left;
  margin: 10px 0;
  font-size: 13px;
  padding: 10px 0;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}
.details_info_bottom{
  display: flex;
}

.home .details_info_bottom>div>p{
  margin: 0;
  padding: 0;
  border: 0;
}
.details_info_bottom>div>p:nth-child(1){
  font-size: 17px;
  color: #FF734C;
}
.details_info_bottom>div>p:nth-child(1) span,.details_info_bottom>div>p:nth-child(2){
  font-size: 13px;
  color: #71797F;
}
.details_info_bottom>div:nth-child(2) img{
  width: 20px;
  margin: 10px 0 0 30px;
}
.details_lists button{
  outline: 0;
  border:1px solid #000;
  padding: 5px 10px;
  margin-left: 40%;
  margin-top: 15px;
  margin-bottom: 15px;
}
.details_lists .product-list-vertical{
  width: 100%;
  display: flex;
  flex-flow: row wrap;
  justify-content: space-around;
  box-sizing: border-box;
  background: #fafafb;
}
.details_lists  .product-list-vertical>div{
  flex: 0 0 45%;
  margin: 5px;
  box-sizing: border-box;
  background: #fff;
}
.product-list-vertical>div>img{
  width: 100%;
}
.product-list-vertical h6{
  margin: 5px 0;
  padding: 0 5px;
  font-size: 13px;
  width: 157px;
  display: block;
  overflow: hidden;
  white-space:nowrap;
  text-overflow: ellipsis;
}
.product-list-vertical .details_info_bottom{
  padding: 5px;
}
.details_info_bottom p{
  text-align: left;
}
.details_footer{
  border-top: 5px solid #eee;
  padding-top: 1rem;
}
.details_footer .flex{
  display: flex;
  flex-flow: row wrap;
  justify-content: space-between;
}
.flex>div{
  margin: 10px 10px;
}
.flex a{
  color: #000;
  padding: 5px 10px;
  font-size:12px;
  text-decoration: none;
  /* padding: 10px; */
  background: #eee;
}
.footer_flex{
  display: flex;
  flex-flow: row nowrap;
  justify-content: space-around;
  padding-top: 1rem;
}
.footer_flex>div{
  display: flex;
  flex-flow: column nowrap;
  justify-content: flex-start;
  align-items: center;
  
}
.footer_flex>div div{
  border-radius: 50%;
  background: #eee;
  padding: 10px;
}
.footer_flex>div p{
  padding: 0;
  border: 0;
}
.details_footer>p{
  border: 0;
  font-size: 12px;
  text-align: center;
  padding: 0;
  color: #aaa;
}
</style>


