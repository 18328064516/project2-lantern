<template>
    <div>
        <my-header></my-header>
        <div class="pm">
            <div class="ss">
            <div class="tt">
                <div class="cc">
                    <p class="c1">
                        <span >兰亭会员注册</span>
                    </p>
                    <input class="inp1" type="text" placeholder="用户名" @blur="checkUsname()" :state="usnameState" v-model="usname"><br>
                    <input class="inp1" type="text" placeholder="密码" @blur="checkPasswd()" :state="passwdState" v-model="passwd"><br>
                    <input class="inp1" type="text" placeholder="确认密码" @blur="checkConPasswd()" :state="passwd2State" v-model="passwd2"> <br>
                    <button class="btn1" @click="onRegister">注册</button><br>
                    <button class="btn2" @click="onLogin">已有账号，去登录</button>
                    <p class="butt1">
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
     	return{
                //保存用户名
                usname:'',
                // //保存验证码
                // yanzhengma:'',
                //保存密码
                passwd:'',
                //保存确认密码
                passwd2:'',
                //保存用户名的状态
                usnameState:'',
                // //保存验证码的状态
                // yanzhengmaState:'',
                //保存密码的状态
                passwdState:'',
                //保存确认密码的状态
                passwd2State:''
            }      
    },
    methods:{
        //检测用户名
        checkUsname(){
            let usname = this.usname;
            //校验用户名,用户名的规则为:字母、数字及下划线的组合,长度为6~12个字符
            let usnameRegExp = /^[0-9A-Za-z_]{6,12}$/
            if(usnameRegExp.test(usname)){
                this.usnameState = 'success';
                return true;
                } else{
                this.usnameState = 'error';
                this.$toast({
                    message:"请输入合法用户名",
                    position:"center",
                    duration:2000
                });
                // this.$messagebox({
                //     message:"请输入合法用户名"
                // });
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
                this.$toast({
                    message:"请输入合法密码",
                    position:"center",
                    duration:2000
                });
                // this.$messagebox({
                //     message:"请输入合法密码"
                // });
                return false;
            }
        },
        //检测确认密码
        checkConPasswd(){
            let passwd2 = this.passwd2;
            if(passwd2 == this.passwd){
                this.passwd2State = 'success';
                return true;
            } else {
                this.passwd2State = 'error';
                this.$toast({
                    message:"两次密码不一致",
                    position:"center",
                    duration:2000
                });
                // this.$messagebox({
                //     message:"两次密码不一致"
                // });
                return false;
            }
        },
        onRegister(){     
            //仍然进行用户名、密码及确认密码的校验
            if(this.checkUsname() && this.checkPasswd() && this.checkConPasswd()){
                //如果所有信息都为合法的信息,则进行提交;
                //this.axios.get(....).then(res=>{....}) 如果只是为了校验用户名可以只用get，但如果是真正的注册一般用post
                this.axios.post('/user/register','usname='+this.usname+'&passwd='+this.passwd).then(res=>{  //在post中'username=aaa&password=bbb'这部分为提交数据
                    if(res.data.code == 0){
                    //注册失败
                    this.$messagebox("注册提示","对不起,用户已存在");
                    }else{
                    //注册成功
                    this.$messagebox("注册提示","注册成功！");
                    this.$router.push('/');
                    }
                });
            }
        },
         onLogin(){
            this.$router.push('/login');
        },
        
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
        margin-top: -50px;
    }
    .inp1{width: 900px;height: 40px;margin: 5px 0;border: 1px solid #c3c3c3;border-radius: 5px;}
    .btn1,.btn2{width: 900px;height: 40px;margin: 5px 0;border-radius: 5px;padding: 5px 0;}
    .c1{margin:20px 360px;padding: 0;}
    .c1 span{
        width: 180PX;height: 40px;
        text-align: center; 
        color: #000;
        font-size: 30px;
        font-family: Microsoft YaHei;
        height: 40px;
    }
    .btn1{background-color: rgb(18, 73, 135);color: #fff;}
    .btn2{background-color: black;color: #fff;}
    .butt1{float: right;margin: 2px 0;padding: 0;}
    .butt1 a{color: #a8b1b7;}

</style>