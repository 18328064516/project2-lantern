<template>
    <div id="my_header">
        <div id="my_header1">
            <div class="col-3 lef1">
                <a href="#">
                    <img src="../assets/logo.png" class="himg">
                </a>
            </div>
            <div class="col-6 mid2">
                <el-menu 
                :default-active="activeIndex" 
                class="el-menu-demo" 
                mode="horizontal" 
                @select="handleSelect" 
                background-color="rgb(6, 48, 88)"
                text-color="#fff" router >
                    <el-menu-item index="1" class="qyjs">
                        <a href="/" class="ha">企业介绍</a>
                    </el-menu-item>
                    <el-submenu index="2">
                        <template slot="title" style="width:60% !important">
                            <a href="/products/1" class="ha">全线产品</a>
                        </template>
                        <el-menu-item index="2-1" route="/products/1">藻白金专业版</el-menu-item>
                        <el-menu-item index="2-2" route="/products/2">藻白金精华版</el-menu-item>
                        <el-menu-item index="2-3" route="/products/3">细胞精华系列</el-menu-item>
                    </el-submenu>
                    <el-submenu index="3">
                        <template slot="title">
                            <a href="/" class="ha">关于兰亭</a>
                        </template>
                        <el-menu-item index="3-1">企业历程</el-menu-item>
                        <el-menu-item index="3-2">荣誉奖项</el-menu-item>
                        <el-menu-item index="3-3">品牌动态</el-menu-item>
                        <el-menu-item index="3-4">门店地址</el-menu-item>
                    </el-submenu>
                    <el-menu-item index="4" class="qyjs">
                        <a href="/" class="ha">联系我们</a>
                    </el-menu-item>
                </el-menu>
            </div>
            <div class="col-3 rig3"   v-if="!this.$store.state.isLogin">
                <a href="/cart" class="yca">
                    <p>购物车</p>
                </a>
                <a href="/cart" class="yca">
                    <p>
                        <img src="../assets/icon-cart.png" alt="">
                    </p>
                </a>
                <a href="/login" class="yca">
                    <p>登录</p>
                </a>
                <a href="/register" class="yca">
                   <p>注册</p>
                </a>   
            </div> 
             <div slot="right" v-else>
                 <a href="/" class="yhm">欢迎{{this.$store.state.usname}}登录</a>
                <router-link to="/">
                    <button class="tcan" @click="tuichu">
                        <img src="../assets/logout.png" slot="icon">
                    </button>
                </router-link>
            </div>
	    </div>
    </div>
</template>

<script>
  export default {
    data() {
      return {
        // activeIndex: '1',
        // activeIndex2: '1'
      };
    },
    methods: {
        handleSelect(key, keyPath) {
            console.log(key, keyPath);
        },
        tuichu(){
            this.$store.commit('logout_mutation');
        }
    }
  }
</script>

<style>
    #my_header{
        background-color:rgb(6, 48, 88);
        position:fixed;
        top:0;left:0;
        z-index: 9999;
        width: 100%;
        height: 70px;
    }
    #my_header1{
        background-color:rgb(6, 48, 88);
        position: relative;
        width: 60%;
        min-width: 1200px;
        left: 50%;
        transform: translate(-50%,0);
        height: 70px;
    }
    .rig3{
        display: inline;
        width: 100%;
        /* min-width: 600px; */
    }
    .mid2{
        display: inline-block;
        /* width: 100%; */
        min-width: 600px;
        margin-left: 50px;
    }
    .rig3{
        display: inline;
        width: 100%;
        min-width: 600px;
    }
    .el-menu-demo{
        border-bottom: 0 !important;
        margin-left: 200px !important;
        float: left;
        padding-top:5px ;
    }  
    .himg{width: 200px;height: 30px;position: absolute;top: 20px;}
    .yca{float: right;line-height: 70px;text-decoration: none;color: #fff;margin-right: 10px;font-size: 12px;}
    .qyjs{font-size: 16px !important;}

    .el-submenu__title{font-size: 16px !important;padding: 0 40px !important;}
    .el-icon-arrow-down:before {
        content: ""!important;
    }
    .el-menu-item {padding: 0 40px !important;}
    .el-menu--horizontal .el-menu-item:not(.is-disabled):focus, .el-menu--horizontal .el-menu-item:not(.is-disabled):hover {
        outline: 0;
    }
    element.style {
        border-bottom-color: transparent;
        background-color: #fff !important;
    }
    .el-menu--horizontal>.el-menu-item {
        float: left;
        margin: 0;
        border-bottom: 0 solid transparent !important;
    }
    .el-menu--horizontal>.el-submenu .el-submenu__title{
        border-bottom: 0 solid transparent !important;
    }
    .el-submenu.is-active .el-submenu__title {
        border-bottom-color: transparent !important;
        color: #fff !important;
        background-color: #ccc !important;
        text-align: right !important;
    }
    .el-menu--horizontal>.el-submenu.is-active .el-submenu__title {
        border-bottom: 0 solid transparent !important;
        color: #fff !important; 
    }
    .el-menu--horizontal>.el-submenu .el-submenu__icon-arrow {
        margin-top: 0;
    }
    .ha{text-decoration: none;color: #fff;}
    .tcan{position: absolute;top: 20px;left: 1000px;background-color: rgb(6, 48, 88);border: 0;}
    .yhm{position: absolute;text-decoration: none;color: #fff;font-size: 14px;top: 30px;left: 880px;}
</style>





