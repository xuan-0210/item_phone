<template>
  <div id="productpj">
    <!-- 顶部导航开始 -->
    <mt-header title="最近评价" class="header">
      <mt-button slot="left" icon="back"></mt-button>
      <mt-button slot="right">
        <!-- <router-link to="/">
          <img src="../assets/img/service_black.png" alt="">
        </router-link> -->
        <router-link to="/">
          <img src="../assets/img/listicon.png" alt="">
        </router-link>
      </mt-button>
    </mt-header>
    <!-- 顶部导航结束 -->
    <!-- 用户评价列表开始 -->
    <div class="estimate" v-for="(v,i) of 6" :key="i">
      <div>
        <div class="estimate_head">
          <p>
            <!-- 用户的头像、用户名 -->
            <img src="../assets/img/avatar_default.jpg" alt="">
            <span>童*莎</span>
            <span class="right"><img src="../assets/img/star5.png" alt=""></span>
          </p>
        </div>
        <div class="estimate_matter">
          <!-- 评价内容开始 -->
          <p>蛋糕还不错</p>
          <img src="../assets/img/f0fde369517845e2a01d35c379061e38.png" alt="">
          <!-- 评价内容结束 -->
        </div>
        <div class="estimate_head">
          <p>
            <!-- 用户的头像、用户名 -->
            <img src="../assets/img/position.png" alt="">
            <span class="color">湖南长沙市长沙县</span>
            <span class="right">2020-10-25</span>
          </p>
        </div>
      </div>
    </div>
    <!-- 用户评价列表结束 -->
    <div class="position">
      <router-link to="/productpj">
        <img src="../assets/img/Up_arrow.png"  alt="">
      </router-link>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{

    }
  }
}
</script>
<style scoped>

#productpj .header{
  background-color: rgb(250 250 250) !important;
  color: #000;
}
.header{
  border-bottom: 1px solid #eee;
}
.header h1{
  font-size: 16px !important;
  color: #000;
}
.header img{
  margin: 10px;
}
.estimate{
  width: 100%;
  padding: 15px;
  box-sizing: border-box;
}
.estimate_head{
  width: 100%;
}
.estimate_head p{
  line-height: 20px;
  font-size: 11px;
}
.estimate_head>p>img{
  width:20px;
  border-radius: 50%;
  vertical-align: middle;
  margin-right: 5px;
}
.estimate_head .right{
   float: right;
}
.estimate_head .right img{
  width: 60px;
 
  margin-top: 5px;
  /* color: #; */
}
.estimate_matter{
  margin: 5px 0;
}
.estimate_matter p{
  line-height: 30px;
  font-size: 11px;
  /* color: ; */
}
.estimate_matter img{
  width: 25%;
}
.estimate_head .color{
  color: #777;
}
.position{
  position: fixed;
  bottom: 60px;
  right: 15px;
  width: 34px;
  height: 34px;
  border: 1px solid #999;
  background: #fff;
  border-radius: 50%;
  overflow: hidden;
}
.position img{
  width: 100%;
  padding: 3px;
  box-sizing: border-box;
}
</style>