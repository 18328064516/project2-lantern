<template>
    <div>
        <my-header></my-header>
        <div class="gouwc">
            <div class="gouwc1">
                <div class="wdsj1">
                    <p class="wd">| 我的购物车</p>
                </div>
                <!-- 购物车表 -->
                <div class="wdsj2" v-for="(i,k) of shcart" :key="k">
                    <table id="data">
                        <thead>
                            <tr>
                                <th>商品</th>
                                <th>规格</th>
                                <th>单价</th>
                                <th>数量</th>
                                <th>小计</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <!--注：此处因为从缓存上拔下来的数据已经不是普通的属性了，而是对象了，所以不能再用 元素.属性名来渲染到页面，需要用 数组.对象来渲染 -->
                                <td>
                                    <div>
                                        <img :src="shcart.ximg" alt="" class="ximg3">
                                        {{shcart.title}}
                                    </div>
                                    <!-- <div>
                                        <img :src="shcart.ximg" alt="" class="ximg2">
                                    </div> -->
                                </td>
                                <td>容量：{{shcart.volume}}</td>
                                <td><span v-text="`¥${shcart.price.toFixed(2)}`"></span></td>
                                <td>
                                    <button @click="minus">-</button>
                                    <span>&nbsp;{{n}}&nbsp;</span>
                                    <button @click="add">+</button>
                                </td>
                                <td>{{shcart.price*n}}元</td>
                                <td>删除<br>移入收藏夹</td>
                            </tr>     
                        </tbody> 
                    </table>
                </div> 
                <!-- 去结算 -->
                <div class="qjs">
                    <div class="jsyc">
                        <span>
                            已选择 0 件商品 共计（不含运费）：<b style="color:red;font-size:24px">¥ 0.00</b>元
                        </span>
                        <a href="" class="qjsan">
                            <span>去结算</span>
                        </a>
                    </div>
                </div>
                <!-- 您可能喜欢 -->
                <div class="wdsj3">
                    <p class="wd3">| 您可能喜欢</p>
                </div>
                <div class="nknxh">
                    <table>
                        <tr>
                            <td>
                                <img src="../assets/qxcp/gwc1-3.png" alt="" class="nimg">
                                <div class="ncpm">水美白精纯露</div>
                                <div class="nprice">¥189.00元</div>
                            </td>
                            <td>
                                <img src="../assets/qxcp/gwc2-1.png" alt="" class="nimg">
                                <div class="ncpm">精护臻颜寡肽冻干粉</div>
                                <div class="nprice">¥198.00元</div>
                            </td>
                            <td>
                                <img src="../assets/qxcp/gwc2-2.png" alt="" class="nimg">
                                <div class="ncpm">复颜臻纯寡肽精华安瓶</div>
                                <div class="nprice">¥98.00元</div>
                            </td>
                            <td>
                                <img src="../assets/qxcp/gwc3-1.png" alt="" class="nimg">
                                <div class="ncpm">螺旋藻美白保湿套装</div>
                                <div class="nprice">¥268.00元</div>
                            </td>
                            <td>
                                <img src="../assets/qxcp/gwc3-2.png" alt="" class="nimg">
                                <div class="ncpm">水感透白BB霜</div>
                                <div class="nprice">¥78.00元</div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <my-footer></my-footer>
    </div>
</template>

<script>
export default {
    // props:['cid'],
    data(){
        return {
           n:1,
           shcart:''
        }
    },
    created(){
        let scart= localStorage.getItem('shopcart');
        console.log(JSON.parse(scart));
        this.shcart=JSON.parse(scart);
        console.log(this.shcart)
    },
    methods:{
        add(){
            this.n++;
        },
        minus(){
            if(this.n>1){ this.n-- };
        }
    }
}
</script>

<style>
    .gouwc{
        position: relative;
        width: 100%;
        height: 900px;
    }
    .gouwc1{
        position: absolute;
        width: 80%;
        height: 300px;
        top: 220px;
        left: 60%;
        transform: translate(-50%,-50%);
    }
    .wdsj1{position: absolute;top: 50px;}
    .wd{
        color: #404040;
        font-size: 14px;
        font-weight: bold;
        padding: 0;
    }
    .wdsj2{
        position: absolute;
        top: 80px;
        border: 1px #f0f0f0 solid;
        background-color: #FFF;
    }
    table{
        width:975px; text-align:center;
		border-collapse:collapse;
        color: black;
        font-size: 13px;
	}
    thead{background-color: #f8f8f8;}
	td{border: 1px #f0f0f0 solid;height: 100px;line-height: 45px;}
	/* td[colspan="3"]{text-align:right;} */
    th{color: #ccc;height: 25px;text-align: center;line-height: 24px;}
   .ximg3{
       width: 70px;height: 70px;
       margin-top: 15px;
       float: left;
       border: 1px solid #ccc;
       margin-left: 20px;
    }

    .qjs{
       border: 1px #f0f0f0 solid;
       position: absolute;
       top: 230px;
       height: 50px;
       width: 975px;
       color:gray ;
       font-size: 12px;
       line-height: 50px;
    }
    .jsyc{float: right; }
    .jsyc span{margin-right: 40px;float: left;}
    .qjsan{
        border: 1px solid #ccc;
        height: 50px;
        display: inline-block;
        width: 100px;
        text-align: center;
        line-height: 50px;
        text-decoration: none;
        font-size: 20px;
        color: #fff;
        background-color: #ccc;
    }
    .qjsan span{
        text-align: center;
        margin-right: 0;
        margin-left: 20px;
    }
    .wdsj3{position: absolute;top: 350px;}
    .wd3{
        color: #404040;
        font-size: 14px;
        font-weight: bold;
        padding: 0;
    }
    .nknxh{border: 1px solid #ccc;position: absolute;top: 380px;}
    .nimg{width: 195px;height: 195px;}
    .ncpm{height: 35px;}
    .nprice{color: red;font-size: 16px;height: 40px;}
</style>

