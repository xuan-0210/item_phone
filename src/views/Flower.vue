<template>
  <div id="flower">
    <!-- 顶部导航开始 -->
    <mt-header title="购物车" class="header">
      <!-- <mt-button slot="left" icon="back"></mt-button> -->
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <mt-button slot="right">
        <router-link to="/">
          <img src="../assets/img/service_black.png" alt="">
        </router-link>
        <router-link to="/">
          <img src="../assets/img/listicon.png" alt="">
        </router-link>
      </mt-button>
    </mt-header>
    <!-- 顶部导航结束 -->
    <!-- 顶部导航开始 -->
    <mt-navbar v-model="active" class="header">
      <mt-tab-item id="1">综合</mt-tab-item>
      <mt-tab-item id="2">销量</mt-tab-item>
      <mt-tab-item id="3">价格</mt-tab-item>
      <mt-tab-item id="4">新品</mt-tab-item>
    </mt-navbar>
    <mt-navbar v-model="select">
      <mt-tab-item id="1">送女友</mt-tab-item>
      <mt-tab-item id="2">送男友</mt-tab-item>
      <mt-tab-item id="3">送朋友</mt-tab-item>
      <mt-tab-item id="4">送长辈</mt-tab-item>
      <mt-tab-item id="5">筛选
        <mt-popup
          v-model="popup"
          position="right"
          modal="true"
          closeOnClickModal="true"
          class="popup"
         >
          <div>
            <div v-for="(v,i) of 9" :key="i">
              <p>人群</p>
              <div class="popup_full">
                <div class="popup_select">送女友</div>
                <div>送女友</div>
                <div>送女友</div>
                <div>送女友</div>
              </div>
            </div>
            <mt-button type="normal" size="large">清除选择</mt-button>
          </div>
        </mt-popup>
      </mt-tab-item>
    </mt-navbar>
    <!-- 顶部导航结束 -->
    <!-- 正文内容开始 -->
    <div class="matter_full">
      <mt-tab-container v-model="active">
        <mt-tab-container-item id="1">
          <div class="matter_list" v-for="(v,i) of 6" :key="i">
            <img src="../assets/img/9012450.jpg" alt="">
            <mt-badge type="error">全新韩式系列</mt-badge>
            <p>韩式系列/初心不负· 韩式花束系列花艺师全新打造，卡罗拉玫瑰11枝、白底粉边洋桔梗5枝、大叶尤加利10枝</p>
            <strong>¥228</strong>
          </div>
        </mt-tab-container-item>
        <mt-tab-container-item id="2">2</mt-tab-container-item>
        <mt-tab-container-item id="3">3</mt-tab-container-item>
        <mt-tab-container-item id="4">4</mt-tab-container-item>
      </mt-tab-container>
    </div>
    <!-- 正文内容结束 -->
  </div>
</template>
<script>
export default {
  data(){
    return{
      active:'1',
      select:'1',
      popup:false
    }
  },
  watch:{
    select(){
      if(this.select == '5'){
        this.popup = true
      }
    }
  }
}
</script>
<style scoped>
#flower .header{
  background-color: #fff !important;
  color: #000;
}
.header h1{
  font-size: 16px !important;
  color: #000;
}
.header img{
  margin: 10px;
}

.mint-navbar .mint-tab-item.is-selected{
  margin-bottom: 0;
  border-bottom: 1px solid #eee;
  color: #FF734C;
}
.mint-navbar .mint-tab-item{
  border-bottom: 1px solid #eee;
}
.matter_full{
  padding: 10px;
  background: #eee;
  box-sizing: border-box;
}
.matter_list{
  width: 48%;
  font-size: 13px;
  background: #fff;
  border-radius: 5px;
  float: left;
  margin-left: 2%;
  margin-bottom: 10px;
}
.matter_list img{
  width: 100%;
  border-radius: 5px;
}
.matter_list span{
  background: #fff;
  color: #FF734C;
  font-size: 13px;
  /* line-height: px; */
  margin: 5px;
  border: 1px solid #FF734C;
}
.matter_list p{
  width: 100%;
  white-space: nowrap;
  text-overflow: ellipsis;
  overflow: hidden;
  padding-left: 5px;
  /* line-height: 20px; */
}
.matter_list strong{
  color: #FF734C;
  line-height: 30px;
  padding-left: 5px;

}
.v-modal{
  width: 80%;
  margin-left: 20%;
  background: #eee;
}
.popup{
  /* top: 30px; */
  height: 667px;
  width: 90%;
  overflow:scroll ;
}
.popup>div{
  padding: 0;
  font-size: 15px;
  position: relative;
  height: 667px;
  width: 100%;
  overflow:scroll ;
}
.popup>div>button{
  position: fixed;
  left: 0;
  bottom: 0;
}
.popup>div p{
  text-align: left;
  padding: 20px;
  color: #000;
  font-size: 15px;
}
.popup_full{
  display: flex;
  padding:0px 20px 5px 20px;
  flex-flow: row wrap;
  justify-content: space-between;
}
.popup_full>div{
  margin: 5px 5px;
  padding: 10px 20px;
  font-size: 13px;
  background: #eee;
  color: #000;
}
.popup_full>div.popup_select{
  background: #fff;
  border: 1px solid #FF734C;
  color: #FF734C;
}
</style>
