<template>
    <div>
        <my-header></my-header>
        <div class="middle33">
            <div class="middle44" > 
                 <!-- 商品分类表 -->
                <div class="middle41" >
                    <ul>
                        <li class="li1" v-for="(item,k) of ProductsList" :key="k"  :class="[currentIndex === k?'active':'']" @click="goto(k)">
                            <span  v-text="item.sname"  class="sanlei"></span>
                        </li>
                    </ul>
                </div>
                 <!-- 商品详情 -->
                <div class="middle42">
                        <ul v-for="(i,k) of proimglist" :key="k">
                            <li>
                                <div class="col-4 lie">
                                    <div class="">
                                        <router-link :to="`/details/${i.lid}`">
                                            <div>
                                                <img :src="i.simg" alt="" class="pimg">
                                            </div>
                                        </router-link>
                                    </div>
                                    <div class="spm">
                                        <router-link :to="`/details/${i.lid}`" style="text-decoration: none;">
                                            <p v-text="i.sname"></p>
                                        </router-link>
                                    </div><br>
                                    <div class="spjg">
                                        <p>
                                            价格：
                                            <span class="list-text" v-text="`¥${i.sprice.toFixed(2)}`"></span>
                                        </p>
                                    </div>
                                    <div class="ksgm">
                                        <!-- <router-link to="/login">
                                            <p>立即购买</p>
                                        </router-link> -->
                                        <router-link :to="`/details/${i.lid}`">
                                           <p>立即购买</p>
                                        </router-link>
                                    </div>
                                </div>
                            </li>
                        </ul>
                </div>
            </div>
            <!-- 分页项 -->
            <div class="sxy">
                <ul>
                    <li :class="{disabled:page==1}">
                    <a href="javascript:;" :class="{disabled:page==1}" @click="change(-1,$event)">上一页</a>
                    </li>
                    <li v-for="i of pagecount" :key='i' :class="{active:i==page}">
                    <a href="javascript:;"  v-text=i  @click="changepage(i)"></a>
                    </li>
                    <li :class="{disabled:page==pagecount}">
                    <a href="javascript:;" :class="{disabled:page==pagecount}" @click="change(+1,$event)">下一页</a>
                    </li>
                </ul>
            </div>
        </div>
        <my-footer></my-footer>
    </div>
</template>

<script>
export default {
    data(){
        return {
            //存储当前页码
            page:1,
            //存储服务器返回的总页数
            pagecount:0,
            //存储产品分类信息
            ProductsList:"",
            proimglist:"",
            // url传参,默认被选定的产品类别
            cid:'1',
            // nav表单选中的下标
            currentIndex: 0,
        }
    },
    methods:{
        // 点击商品分类列表将列表id传给url
        goto(k){
            //console.log(k);
            this.currentIndex=k;
            //页数从0开始，但分类id是从1开始的
            this.$router.push(`/products/${k+1}`);
            // console.log(this.currentIndex);
       }, 
       change(n,e){
         if(e.target.className.indexOf("disabled")==-1)
         {
           //console.log(e);
           this.changepage(this.page+parseInt(n));
         }
       },
       changepage(i){
         this.page=i;
         this.getProimgList();
       },
        getProductsList(){
            //获取产品分类信息
            this.axios.get('/pro/productslist').then(res=>{
                this.ProductsList=res.data;
                console.log( this.ProductsList);
            });
        },
        getProimgList(){
            this.axios.get('/pro/proimglist?cid='+this.cid+'&page='+this.page).then(res=>{
                //获取服务器返回的产品数据
                this.proimglist=res.data.proimglist;
                console.log(this.proimglist);
                //将服务器返回的总页数存储到pagecount变量中
                this.pagecount=res.data.pagecount;     
            });
        },
    },
    watch:{
        $route(){
            //清空之前的数组
            this.goodsall=[];
            this.cid=this.$route.params.cid;
            //  判断得到的参数 执行全局查找
            this.getProimgList();
      }
    },
    mounted(){
      this. getProductsList();
      this. getProimgList();
    }
}
</script>

<style scoped>
    .middle33{height: 1000px;width: 100%;position: relative;background-color: #f8f8f8;}
    .middle44{min-width:1200px;width: 80%;margin: 0 auto;margin-top: 100px;position: relative;}
    .middle41{width: 150px;float: left;width: 20%;}
    .middle42{width: 1000px;float: right;width: 80%;}
    .sxy{position: absolute;top:930px;left: 46%;}
    .sxy ul li{float: left;margin: 0 3px;border: 1px solid #ccc;width: 30px;height: 30px;text-align: center;border-radius: 2px;}
    .sxy ul li:first-child,.sxy ul li:last-child{width: 60px;}
    .sxy ul li a{text-decoration: none;color: black;text-align: center;line-height: 30px;}

    .my-txt{width: 300px;}
    .my-txt li{height: 100px;width: 300px;}
    .pro{color: black;font-size: 18px;width: 80px;height: 80px;float: left;}
    .pimg{width: 302px;height: 280px;}
    .pimg:hover{transform: scale(1.1,1.1);}

    .sanlei{
        height: 300px;
        font-family: 'Microsoft YaHei';
        font-size: 18px;
        line-height: 102.000px;
    }
    .li1{color: #999999;} 
    ul li .lie{width: 300px; float: left;padding: 15px 10px;}
    .ksgm p{
        width: 300px;height:32px;
        display: block;
        border: 1px solid black;
        padding: 0;
        border-radius: 2px;
        font-size: 12px;
        color: black;
    }
    .ksgm p:hover{background-color: black;color: #fff;}
    .ksgm a{
        text-decoration: none;
        text-align: center;
        line-height: 32px;
    }
    .spm p,.spjg p{
        color: black;
        font-size: 14px;
        padding-bottom:0;
        padding-top:5px;
        padding-left: 15px; 
        padding-right: 60px; 
        text-align: left;
        display: block;
        margin-top: 8px;
    }
    
    .spjg p{font-size: 15px;padding-top:0;margin-bottom: 20px;margin-top: 0;}
    .active{color: black;}
</style>