<template>
  <div> 
    <my-header></my-header>
    <my-carouse></my-carouse>
    <div class="middle">
      <div class="middle1">
        <div class="hhh">
          <div class="hh"></div>
          <div class="h"></div>
          <div class="p1">PRODUCT RANGERS</div>
          <div class="s1">产品系列</div>
        </div> 
        <p class="p2"></p> 
        <span class="d1">藻白金专业版</span>
        <ul  class="my-img01"  style="margin-top:50px">
          <!--方法1：截取前5条数据 <li  v-for="(i,k) of CpqxzbjimgList" :key="k" v-if='k<5'> -->
          <li  v-for="(i,k) of CpqxzbjimgList.slice(0,5)" :key="k">
            <!-- <router-link :to="i.href" v-if="i.href!=undefined"> -->
               <router-link to="/products/1">
                <img :src="i.pic" alt="图片未加载" class="m1"><br>
                <p class="p8">{{CpqxzbjimgList[k].title}}</p> 
            </router-link> 
          </li>
        </ul>
        <div>
          <router-link to="/">
                <img src="../assets/qxcp/m1.jpg" alt="图片未加载" class="mm1">
            </router-link> 
        </div>
        <p class="p3"></p> 
        <span class="d2">细胞精华系列</span>
        <ul  class="my-img01"  style="margin-top:50px">
          <li  v-for="(i,k) of CpqxzbjimgList.slice(5,9)" :key="k">
            <!-- <router-link :to="i.href" v-if="i.href!=undefined"> -->
              <router-link to="/products/2">
                <img :src="i.pic" alt="图片未加载" class="m2"><br>
                <p class="p9">{{CpqxzbjimgList.slice(5,9)[k].title}}</p> 
            </router-link> 
          </li>
        </ul>
        <div>
          <router-link to="/">
                <img src="../assets/qxcp/m2.jpg" alt="图片未加载" class="mm2">
            </router-link> 
        </div>
        <!--方法2：解构 <ul>
          <li>
            <router-link :to="i01.href" v-if="i01.href!=undefined">
              <img :src="i01.pic" alt="图片未加载" class="m1">
            </router-link>
          </li>
          <li>
            <router-link :to="i02.href" v-if="i02.href!=undefined">
              <img :src="i02.pic" alt="图片未加载" class="m1">
            </router-link>
          </li>
          <li>
            <router-link :to="i03.href" v-if="i03.href!=undefined">
              <img :src="i03.pic" alt="图片未加载" class="m1">
            </router-link>
          </li>
          <li>
            <router-link :to="i04.href" v-if="i04.href!=undefined">
              <img :src="i04.pic" alt="图片未加载" class="m1">
            </router-link>
          </li>
          <li>
            <router-link :to="i05.href" v-if="i05.href!=undefined">
              <img :src="i05.pic" alt="图片未加载" class="m1">
            </router-link>
          </li> 
        </ul>  -->
        
      </div>
    </div>
    <div class="middle2"  >
      <img class="img3" src="../assets/qxcp/m3.jpg" alt="">
      <div class="middle21">
        <div class="s1">科研实力</div>
        <div class="p1">SCIENTIFIC RESEARCH CAPABILITIE</div>
        <div class="kysl">
      <!--此方法行不通，只能准确控制数据库中的第一条数据中的数据显示情况，待解决。目前暂实现静态的。
          <div v-for="(i,k) of CpqkyslList.slice(0,1)" :key="k"> 
            <p class="k1">
                <b>{{CpqkyslList[k].pro.slice(0,3)}}</b>
                {{CpqkyslList[k].pro.slice(3,7)}}<br>
                {{CpqkyslList[k].pro.slice(7,16)}}<br>
                {{CpqkyslList[k].pro.slice(16,24)}}<br>
                {{CpqkyslList[k].pro.slice(24,39)}}<br>
            </p>
          </div> -->
          <div  class="k1"><b>广东省</b>名牌产品<br>国家高新技术企业<br>“FDA”认证<br>广东省化妆品不良反应监测哨点</div>
          <div  class="k2"><b>1993年</b>成立<br>已有26年护肤品市场经验<br>护肤领域的核心科技,<br>拥有三大发明专利,<br>核心产品系列：“螺旋藻<br>产品线”03年诞生至今已<br>经过6次升级换代</div>
          <div  class="k3"><b>兰亭</b>时刻紧跟最新的<br>肌肤护理科技，<br>并与诸多大学研究团队<br>的优秀科学家紧密合作<br>在全球各地广布研究生<br>产实验室<br>以几十年如一日的匠心<br>打磨每一份产品<br>务求研发更加理想的护<br>肤品<br>在兰亭，只有经过长期<br>研发测试，<br>并且确保安全有效的产<br>品才能投放市场</div>
          <div  class="k4"><b>国际化</b>实验室<br>兰亭引进专业化设备<br>从原料的实验分析<br>到产品配方的调配实验分析<br>都以国际实验室标准执行</div>
          <div  class="k5"><b>标准化</b>生产流程<br>国家药监认证的20000多平方<br>GMP10万级净化生产车间，清一<br>色的日本美贺生产设备<br>全现代化自动生产灌装线以及专业<br>RO反渗水处理系统<br>采用高规格的冷链，先进的灭菌工<br>艺全程生产中料液通过内外全抛光<br>316L不锈钢管传输，确保全生产<br>罐装过程 无人为接触、无菌、无<br>任何污染作业<br>运用HACCP标准建立来料验收、<br>灭菌、灯检三个关键控制点</div>
        </div>
      </div>
    </div>   
    <!-- 引入回到顶部的组件-->
    <my-backtop></my-backtop>
    <!-- 也可以直接放下面这段代码在此处，无需引入组件 -->
    <!-- <el-backtop :bottom="60">
            <div
                style="{
                height: 100%;
                width: 100%;
                background-color: #f2f5f6;
                box-shadow: 0 0 6px rgba(0,0,0, .12);
                text-align: center;
                line-height: 40px;
                color: #1989fa;
                }"
            >
                top
            </div>
    </el-backtop>  -->
    <my-footer></my-footer>
  </div>
</template>

<script>
  import Carouse from './Carouse.vue'
  import Backtop from '../components/Backtop.vue'
  export default {
    name: 'Home',
    components: {
      Carouse,
      Backtop
    },
    //全线产品-产品系列(藻白金专业版&细胞精华系列)
    data(){
      return {
        CpqxzbjimgList:[]
        //对应上面的方法2：解构
        // CpqxzbjimgList:[],
        // i01:{},
        // i02:{},
        // i03:{},
        // i04:{},
        // i05:{}
      }
    },
    methods:{
      getCpqxzbjList(){
        this.axios.get('/user/cpqxzbjList')
        .then(res=>{
          // console.log(res.data)
          this.CpqxzbjimgList = res.data;
          //[this.i01,this.i02,this.i03,this.i04,this.i05]=res.data;
          this.CpqxzbjimgList = res.data;
        })
      },
      // getCpqxzbjList(){
      //   this.axios.get('/user/cpqxzbjList')
      //   .then(res=>{
      //     // console.log(res.data)
      //     this.CpqxzbjimgList = res.data;
      //     //[this.i01,this.i02,this.i03,this.i04,this.i05]=res.data;
      //     this.CpqxzbjimgList = res.data;
      //   })
      // }
    },
    mounted(){
      this.getCpqxzbjList();
      // this.getCpqxzbjList();
    }
    
  }

</script>

<style>
  /* 中间第1部分 */
  .middle{height: 1330px;background-color: #fff; width: 100%;}
  .middle1{background-color: #fff; width: 100%;max-width: 1200px;margin:0 auto;}
  .hh{
    width: 180px;height: 8px;
    margin-top: 40px;
    background-color: rgb(6, 48, 88);
    display: block;
  }
  .h{
    width: 1200px;
    height: 1px;
    /* margin-top: 20px; */
    background-color: rgb(6, 48, 88);  
    /* display: block; */
  }
  /* .hhh{display: inlile;} */
  
.s1{
  display: block;
  float: left;
  font-size:46px;
  font-family:'Microsoft YaHei';
  line-height:1.2;
  width: 100%;
}

.p1{
    font-size: 14px;
    margin: 10px 0;
    display: block;
}
.p2{
  margin-top: 100px;
  margin-left: 80px;
  border-bottom:1px dashed lightblue;
  width: 900px;
  display: block;
  }
.p3{
  margin-top: 75px;
  margin-left: 80px;
  border-bottom:1px dashed lightblue;
  width: 900px;
  display: block;
  }
.d1{
  background-color: lightblue;
  width:210px; height: 40px;
  display: block;
  margin-left: 80px; 
  /* margin-top: 100px; */
  text-align: center;
  line-height: 35px;
  font-size: 20px;
}
.d2{
  background-color: lightblue;
  width:210px; height: 40px;
  display: block;
  margin-left: 80px; 
  /* margin-top: 60px; */
  text-align: center;
  line-height: 35px;
  font-size: 20px;
}
.my-img01 li{height: 0;width: 1400px;}
.my-img01 li a .m1{
  width:200px;height:230px;margin-left:30px;margin-right:3px;float:left;
}
.my-img01 li a{float: left;}
.my-img01 li a  .p8,.my-img01 li a  .p9{
  color: #fff;
  font-size: 14px;;
  /* margin:0 0 20px 90px; */
  padding: 3px;
  background-color:rgb(61, 133, 198); 
  display: inline-block;
}
.my-img01 li a  .p8{margin:0 0 40px 80px;}
.my-img01 li a  .p9{margin:0 0 40px 120px;}
.my-img01 li a .m2{width:200px;height:230px;margin-left:65px;margin-right:20px;float:left;}

.mm1,.mm2{width: 1200px;height: 140px;}

/* 中间第二部分 */
.middle2{width: 100%;position: relative;}
.middle21{
  /* background-color: pink;  */
  width: 80%;
  max-width: 1200px;  
  /* height: 100px; */
  position:absolute;
  /* z-indent:2; */
  left:50%;
  top:370px;
  transform: translate(-50%,-50%);
}
.img3{width: 100%; min-width: 1200px;}
.kysl{position: relative;width: 100%;min-width: 1500px;height: 600px;}
.k1,.k2,.k3,.k4,.k5{
  color:#555555;
  font-size:14px;
  padding:0;
  margin-left:120px;
  margin-top:40px;
  width: 240px;
  /* height: 123px; */
  position: absolute;
}
.k1{margin-top:60px;}
.k2{margin-left:780px;margin-top:90px;}
.k3{margin-left:200px;margin-top:330px;}
.k4{margin-left:520px;margin-top:350px;}
.k5{margin-left:860px;margin-top:350px;}
</style>
