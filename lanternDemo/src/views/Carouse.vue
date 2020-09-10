<template>
  <div class="carouse">
    <!--vue-awesome-swiper 文档copy-->
    <swiper ref="mySwiper" :options="swiperOptions" class="swiper">
      <swiper-slide v-for="(i,k) in imgList" :key="k">
        <img class="img2" :src="i.img" alt="">
      </swiper-slide>
      <div class="swiper-pagination" slot="pagination"></div>
    </swiper>
  </div>
</template>

<script>
// 官方文档 参数及各项api配置的使用 https://www.swiper.com.cn/api/index.html
// 安装 npm i vue-awesome-swiper -S \ npm i swiper -S
import 'swiper/css/swiper.css' // 组件引入
import { swiper, swiperSlide } from 'vue-awesome-swiper'  // 组件样式
 
export default {
  data(){
    return{
      imgList:[],
      swiperOptions: {
        pagination: {
          el: '.swiper-pagination'
        },
        autoplay:{
          delay:2000  // 1秒时长切换
        },
        loop: true
      }
    }  
  },
  methods:{
    getBannerList(){
      this.axios.get('/user/bannerList')
      .then(res=>{
        console.log(res.data)
        this.imgList = res.data
      })
    }
  },
  mounted(){
    this.getBannerList()
  }
}
</script>

<style scoped>
  .img2{width: 100%;min-width: 1200px;}
  .carouse{
    width: 100%;
  }
  /*样式穿透*/
  .swiper >>> .swiper-pagination-bullet{
    background-color:blue;
  }
</style>
