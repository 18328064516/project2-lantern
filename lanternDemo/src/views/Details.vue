<template>
    <div>
        <my-header></my-header>
        <div class="xqy">
            <!-- <ul>
                <li> -->
                   
                    <div class="xqy1">
                        <div class="mbx">
                            <ul class="mbx1">
                                <li>
                                    <a href="/">首页标题&nbsp;>&nbsp;</a>
                                </li>
                                <li>
                                    <a href="/products/1">护肤品类别&nbsp;>&nbsp;</a>
                                </li>
                                <li>
                                    <a href="#" style="color:#0b5394">{{info.title}}</a>
                                </li>
                            </ul>
                        </div><br>
                        <div class="zuoce col-6">
                            <!-- 左侧第一部分：图片 -->
                            <div class="xqimg">
                                <!-- 这里info.ximg表示 对象.ximg -->
                                <img :src="info.ximg" alt="" class="ximg">
                            </div>
                            <!-- 左侧第二部分：图片下方的轮播图 -->
                            <div class="lbt">
                                <el-carousel :interval="5000" arrow="always" height="81px" >
                                    <el-carousel-item v-for="item in 4" :key="item"  style="height:81px;width:200px;margin-left:220px">
                                    <!-- <h3>{{ item }}</h3> -->
                                    <div class="xi">
                                        <img :src="info.ximg" alt="" class="ximg2">
                                    </div>
                                    </el-carousel-item>
                                </el-carousel>
                            </div>
                        </div>
                        <div class="youce col-6">
                            <div class="xqwz">
                                <div class="tit">{{info.title}}</div>
                                <div class="pri">
                                    现价：
                                    <!-- <span v-text="`¥${info.price.toFixed(2)}`"></span> -->
                                     <span v-text="`¥${info.price.toFixed(2)}`"></span>
                                </div>
                                <hr>
                                <div class="eff">
                                    内含：<span>{{info.effect}}</span>
                                </div>
                                <div class="vol">
                                    容量：
                                </div>
                                <div class="vol2">
                                    <span>{{info.volume}}</span>
                                </div>
                                <div class="shu">
                                    数量：
                                    <button @click="minus">-</button>
                                    <span>&nbsp;{{n}}&nbsp;</span>
                                    <button @click="add">+</button>
                                </div>
                                <div class="jgwc">
                                    <a href="/cart">
                                        <p class="wc" @click="jiagou">加入购物车</p>
                                    </a>
                                </div>  
                            </div>
                        </div>
                    </div>
                <!-- </li>
            </ul> -->
        </div>
        <my-footer></my-footer>
    </div>
</template>

<script>
export default {
    data(){
        return {
            //通过数组中的一个对象来存储产品的相关详细信息
           info:{},
           n:1
        }
    },
     mounted(){
        //动态获取地址栏中的动态的参数cid
        let cid=this.$route.params.cid;//该语句截取的是index.js中的路由中后面的cid(/details/:cid)
        console.log(cid);
        //发送请求
        this.axios.get("/pro/view?id="+cid).then(res=>{
            //将返回结果存储到这个对象中
            this.info=res.data.results[0];//可以在前端取数组的一个对象，也可以直接在后台写results：results[0]。
            console.log(this.info); 
        });
    },
    methods:{
        add(){
            this.n++;
        },
        minus(){
            if(this.n>1){ this.n-- };
        },
        jiagou(){
            var gw={title:this.info.title,price:this.info.price,effect:this.info.effect,volume:this.info.volume,ximg:this.info.ximg};
            console.log(gw);
            //加入缓存
            gw=JSON.stringify(gw);//将json字符串转换为json对象。可参考https://www.cnblogs.com/showcase/p/11642986.html
            localStorage.setItem('shopcart',gw);
            
        },
        
    }
}
</script>

<style>
    .xqy{min-height:1000px;position: relative;top:100px;}
    /* .mbx{width: 200px;margin: 0 auto;} */
    .mbx1 li{float: left;margin: 0 5px;}
    .mbx1 li a{float: left;text-decoration: none;font-size: 12px;color: gray;}
    /* .breadcrumb-item+.breadcrumb-item::before{
        content: " > ";
    } */
    .xqy1{ 
        width: 1200px;height:900px;
        /* background-color: #eee; */
        position:absolute ;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%); 
    }
    .zuoce{width: 600px;float: left;}
    .youce{width: 600px;float: right;height: 400px;}
    .xqimg{width:600px;position: absolute;} 
    .ximg{display: block;width: 600px;height: 600px;}
    .xqwz{width: 500px;height: 500px;padding-top: 120px;}
    .tit{
        color: #404040;
        font-size: 24px;
        font-weight: bold;
        margin: 15px 0;
    }
    .pri,.vol,.shu{
        color: #999;
        font-size: 16px;
        margin-bottom: 20px;
        margin-top: 20px;
    }
    .pri span{color: black;font-size: 18px;font-weight: bold;margin: 10px 0;}
    .vol{margin-top: 100px;margin-bottom: 5px;}
    .vol2 span{color: black;border: 1px solid #ddd;font-size: 12px;margin-top: 0;display:block;width:120px;height: 32px;line-height: 32px;text-align: center;}
    .eff{
        color: #404040;
        font-size: 18px;
        font-family: Tahoma;
        margin: 20px 0;
    }
    .eff span{
        color: #404040;
        font-size: 14px;
        font-weight: normal;
        font-style: normal;
        line-height: 24px;
    }
    
    .jgwc{margin-top: 80px;}
    .jgwc a .wc{
        width: 200px;height:32px;
        display: block;
        border: 1px solid black;
        padding: 0;
        border-radius: 2px;
        font-size: 12px;
        color: #fff;
        background-color: black;
    }
    .jgwc a .wc:hover{background-color: rgb(6, 48, 88);}
    .jgwc a{
        text-decoration: none;
        text-align: center;
        line-height: 32px;
    }
    .shu{margin: 20px 0;}
    .lbt{margin-top: 540px;width: 520px;}
    .ximg2{width: 70px;height: 70px;}
    .xi{
        border: 2px solid red;
        width: 70px;height:70px;
        /* position: absolute; */
        /* left: 50%;
        top: 50%;
        transform: translate(-50%,-50%); */
    }
   
</style>

