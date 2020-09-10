<template>
    <div>
        <my-header></my-header>
        <div class="pm">
            <div class="ss">
              <div class="tt">
                  <div class="cc">
                      <p class="c1">
                          <span >兰亭会员登录</span>
                      </p>
                      <input class="inp2" type="text" placeholder="账号（邮箱/手机号）" :state="usnameState" v-model="usname" @blur="checkUsname"><br>
                      <input class="inp2" type="passwd" placeholder="密码" :state="passwdState" disableClear v-model="passwd" @blur="checkPasswd"><br>
                      <button class="btn11"  @click="handle">登录</button><br>
                      <button class="btn22">
                          <a class="btn2" href="/register">注册新用户</a>
                      </button>
                      <p class="butt">
                          <a href="" class="butta">忘记密码</a>
                      </p>
                  </div>
              </div>
          </div>
        </div>
        <my-footer></my-footer>
    </div>
</template>

<script>
export default {
  data(){
    return {
      //保存用户名
      usname:'',
      //保存密码
      passwd:'',
      //保存用户名的状态
      usnameState:'',
      //保存密码的状态
      passwdState:''
    }
  },
  methods:{
    //检测用户名
    checkUsname(){
        let usname = this.usname;
        //校验用户名,用户名的规则为:字母、数字及下划线的组合,长度为6~12个字符
        let usnameRegExp = /^[0-9A-Za-z_]{6,12}$/;
        if(usnameRegExp.test(usname)){
            this.usnameState = 'success';
            return true;
        } else{
            this.usnameState = 'error';
            this.$message.error('请输入合法用户名');
            return false;
        }
    },
    //检测密码
    checkPasswd(){
      let passwd = this.passwd;
      //校验密码,密码的规则为:字母、数字及下划线的组合,长度为8~20个字符
      let passwdRegExp = /^[0-9A-Za-z_]{8,20}$/;
      if(passwdRegExp.test(passwd)){
        this.passwdState = 'success';
        return true;
      } else {
        this.passwdState = 'error';
        this.$message.error('请输入合法密码');
        return false;
      }
    },
    
    // handle(){     
    //   //仍然进行用户名、密码的校验
    //   if(this.checkUsname() && this.checkPasswd()){
    //       //如果所有信息都为合法的信息,则进行提交;
    //       //this.axios.get(....).then(res=>{....})
    //       this.axios.post('/user/login','usname='+this.usname+'&passwd='+this.passwd).then(res=>{ 
    //         if(res.data.code == 1){
    //           //登录成功
    //           this.$router.push('/');
    //         }else{
    //           //登录失败
    //           this.$messagebox("登录提示","用户名或密码错误");
    //         }
    //       });   
    //   }
     
    // }

    handle(){     
      //仍然进行用户名、密码及确认密码的校验
      if(this.checkUsname() && this.checkPasswd()){
          //如果所有信息都为合法的信息,则进行提交;
          this.axios.post('/user/login','usname='+this.usname+'&passwd='+this.passwd).then(res=>{ 
              //登录成功
              if(res.data.code == 1){
                this.$router.push('/');
                //调用Vuex中Mutations来修改state中的状态
                this.$store.commit('login_mutation',res.data.results);
                //将用户登录的状态存储到WebStorage中
                //之所以要将用户登录的状态存储到webStorage中的
                //原因是：为防止用户刷新页面中,整个页面重新加载
                sessionStorage.setItem('isLogin',true);
                // sessionStorage.setItem('userId',res.data.results.id);
                sessionStorage.setItem('usname',res.data.results.usname);
                
              } else {
                //登录失败
                this.$messagebox("登录提示","用户名或密码错误");
              }
          });         
      }
     
    }

  }
}
</script>

<style>
    .pm{min-height:1000px;position: relative;}
    .ss{
        /* 让div元素在整个页面完全居中(四周)-方法1： */
        width: 1200px;height: 650px;
        background-color: #eaedf8;
        position: absolute ;
        top: 50%;
        left: 50%;
        margin-top: -325px;
        margin-left: -600px;

         /* 方法2： */
        /* width: 1200px;height: 650px;
        background-color: #eee;
        position:absolute ;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%); */
    }
    .tt{
        width: 1100px;height: 550px;
        background-color: #f6f8ff;
        /* position: relative; */
        position:absolute ;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
    }
    .cc{
        width: 900px;height: 336px;
        background-color: #f6f8ff;
        /* position: relative; */
        position:absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
    }
    .inp2,.btn11,.btn22{
        width: 900px;height: 40px;
        margin: 5px 0;
        border: 1px solid #c3c3c3;
        border-radius: 5px;
        font-size: 14px;
        /* font-weight: 400px;
        color: #666; */
        padding: 5px 0;
    }
    /* button{width: 900px;height: 40px;margin: 7px 0;} */
    .c1{margin:20px 360px;padding: 0;}
    .c1 span{
        width: 180PX;height: 40px;
        text-align: center; 
        color: #000;
        font-size: 30px;
        font-family: Microsoft YaHei;
        height: 40px;
    }
    .btn11{background-color: rgb(18, 73, 135);color: #fff;}
    .btn22{background-color: black;color: #fff;}
    .butt{float: right;margin: 2px 0;padding: 0;}
    .butt a{color: #a8b1b7;}
    .btn2{text-decoration: none;}
    .butta{text-decoration: none;}
</style> 