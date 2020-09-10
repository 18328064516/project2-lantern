<template> 
    <div id="my_footer">
        <div id="my_footer1">
		    <p class="bqsy">版权所有： 深圳市兰亭科技股份有限公司</p>
		    <a href="">
			    <img class="m1" src="../assets/govIcon.gif" >
		    </a>
        </div>
	    <div id="my_footer2">
		    <div id="d1">
			    <a href="" class="fd">粤ICP备05146850号</a>
		    </div>
		    <div id="d2">
			    <a href="" class="fd">本网站由阿里云提供云计算及安全服务 | Powered By CloudDream</a>
		    </div>		
	    </div>
    </div>  
</template>

<style>
    /* *{margin:0;padding:0} */
    #my_footer{background-color: black;width: 100%; float: left;position: relative; z-index: 3;}
    #my_footer1{background-color: black;width: 60%;min-width: 1200px;height: 75px;}
    .bqsy{
        float: left; 
        color: #999999;
        font-size: 12px;
        padding: 30px 30px;
        /* height: 60px; */
    }
    .m1{
        float: right;
        width: 36px;
        height: 50px;
        margin: 20px -300px 13px 10px;     
    }
    #my_footer2{background-color: #fff;width: 100%; min-width: 1200px;float: left;height: 75px; }

    #my_footer2  a{
        font-size: 12px;;
        color: rgb(152, 152, 152);
    }
    #d1,#d2{text-align: center;margin-bottom: 10px;}
    #d1{margin-top: 5px;}
    .fd{text-decoration: none;}
</style>