<template>
    <div>
        <div class="container">
            <div class="login-form">
                <h1 class="h1" style="color:#000;fontSize:28px;">中小型制造企业质量管理注册</h1>
                <el-form class="rgs-form">
                    <el-form-item label="账号" class="input">
                        <el-input v-model="ruleForm.username" autocomplete="off" placeholder="账号"  />
                    </el-form-item>
                    <el-form-item label="密码" class="input">
                        <el-input type="password" v-model="ruleForm.password" autocomplete="off" show-password/>
                    </el-form-item>
                    <el-form-item label="重复密码" class="input">
                        <el-input type="passwo   rd" v-model="ruleForm.repetitionPassword" autocomplete="off" show-password/>
                    </el-form-item>
                        <!--
                            <el-form-item label="工作人员编号" class="input" v-if="tableName=='gongzuorenyuan'">
                                <el-input v-model="ruleForm.gongzuorenyuanUuidNumber" autocomplete="off" placeholder="工作人员编号"  />
                           </el-form-item>
                        -->
                        <el-form-item label="工作人员姓名" class="input" v-if="tableName=='gongzuorenyuan'">
                            <el-input v-model="ruleForm.gongzuorenyuanName" autocomplete="off" placeholder="工作人员姓名"  />
                        </el-form-item>
                        <el-form-item label="工作人员手机号" class="input" v-if="tableName=='gongzuorenyuan'">
                            <el-input v-model="ruleForm.gongzuorenyuanPhone" autocomplete="off" placeholder="工作人员手机号"  />
                        </el-form-item>
                        <el-form-item label="工作人员身份证号" class="input" v-if="tableName=='gongzuorenyuan'">
                            <el-input v-model="ruleForm.gongzuorenyuanIdNumber" autocomplete="off" placeholder="工作人员身份证号"  />
                        </el-form-item>
                        <!--
                            <el-form-item v-if="gongzuorenyuanPhotoFlag">
                            </el-form-item>
                            <el-form-item label="工作人员头像" class="input" v-if="tableName=='gongzuorenyuan'">
                                    <file-upload
                                        tip="点击上传工作人员头像"
                                        action="file/upload"
                                        :limit="1"
                                        :multiple="true"
                                        :fileUrls="ruleForm.gongzuorenyuanPhoto?$base.url+ruleForm.gongzuorenyuanPhoto:''"
                                        @change="gongzuorenyuanPhotoUploadChange"
                                    ></file-upload>
                           </el-form-item>
                        -->
                        <!--
                            <el-form-item label="检验工种" class="input" v-if="tableName=='gongzuorenyuan'">
                                <el-input v-model="ruleForm.jianyangongzhongTypes" autocomplete="off" placeholder="检验工种"  />
                           </el-form-item>
                        -->
                        <el-form-item label="工作人员邮箱" class="input" v-if="tableName=='gongzuorenyuan'">
                            <el-input v-model="ruleForm.gongzuorenyuanEmail" autocomplete="off" placeholder="工作人员邮箱"  />
                        </el-form-item>
                        <!--
                            <el-form-item label="账户状态" class="input" v-if="tableName=='gongzuorenyuan'">
                                <el-input v-model="ruleForm.jinyongTypes" autocomplete="off" placeholder="账户状态"  />
                           </el-form-item>
                        -->
                        <!--
                            <el-form-item label="创建时间" class="input" v-if="tableName=='gongzuorenyuan'">
                                <el-input v-model="ruleForm.createTime" autocomplete="off" placeholder="创建时间"  />
                           </el-form-item>
                        -->
                    <div style="display: flex;flex-wrap: wrap;width: 100%;justify-content: center;">
                        <el-button class="btn" type="primary" @click="login()">注册</el-button>
                        <el-button class="btn close" type="primary" @click="close()">取消</el-button>
                    </div>
                </el-form>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                ruleForm: {
                },
                tableName:"",
                rules: {},
                sexTypesOptions : [],
                gongzuorenyuanPhotoFlag:false,//用于刷新文件上传
            };
        },
        mounted(){
            let table = this.$storage.get("loginTable");
            this.tableName = table;

            //级联表的下拉框查询

        },
        methods: {
            // 获取uuid
            getUUID () {
                return new Date().getTime();
            },
            gongzuorenyuanPhotoUploadChange(fileUrls) {
               this.ruleForm.gongzuorenyuanPhoto = fileUrls;
                if(this.gongzuorenyuanPhotoFlag){
                    this.gongzuorenyuanPhotoFlag=false;
                }else{
                    this.gongzuorenyuanPhotoFlag=true;
                }
            },
            close(){
                this.$router.push({ path: "/login" });
            },
            // 注册
            login() {

                            if((!this.ruleForm.username)){
                                this.$message.error('账号不能为空');
                                return
                            }
                            if((!this.ruleForm.password)){
                                this.$message.error('密码不能为空');
                                return
                            }
                            if((!this.ruleForm.repetitionPassword)){
                                this.$message.error('重复密码不能为空');
                                return
                            }
                            if(this.ruleForm.repetitionPassword != this.ruleForm.password){
                                this.$message.error('密码和重复密码不一致');
                                return
                            }
                            // gongzuorenyuan 中的 工作人员编号 判空处理
                            // if('gongzuorenyuan' == this.tableName && (this.ruleForm.gongzuorenyuanUuidNumber== null ||this.ruleForm.gongzuorenyuanUuidNumber== "")){
                            //     this.$message.error("工作人员编号不能为空");
                            //     return
                            // }
                            if((!this.ruleForm.gongzuorenyuanName)&& 'gongzuorenyuan'==this.tableName){
                                this.$message.error('工作人员姓名不能为空');
                                return
                            }
                             if('gongzuorenyuan' == this.tableName && this.ruleForm.gongzuorenyuanPhone&&(!this.$validate.isMobile(this.ruleForm.gongzuorenyuanPhone))){
                                 this.$message.error('手机应输入手机格式');
                                 return
                             }
                            if((!this.ruleForm.gongzuorenyuanIdNumber)&& 'gongzuorenyuan'==this.tableName){
                                this.$message.error('工作人员身份证号不能为空');
                                return
                            }
                            // gongzuorenyuan 中的 工作人员头像 判空处理
                            // if('gongzuorenyuan' == this.tableName && (this.ruleForm.gongzuorenyuanPhoto== null ||this.ruleForm.gongzuorenyuanPhoto== "")){
                            //     this.$message.error("工作人员头像不能为空");
                            //     return
                            // }
                            // gongzuorenyuan 中的 检验工种 判空处理
                            // if('gongzuorenyuan' == this.tableName && (this.ruleForm.jianyangongzhongTypes== null ||this.ruleForm.jianyangongzhongTypes== "")){
                            //     this.$message.error("检验工种不能为空");
                            //     return
                            // }
                            if('gongzuorenyuan' == this.tableName && this.ruleForm.gongzuorenyuanEmail&&(!this.$validate.isEmail(this.ruleForm.gongzuorenyuanEmail))){
                                this.$message.error("邮箱应输入邮件格式");
                                return
                            }
                            // gongzuorenyuan 中的 账户状态 判空处理
                            // if('gongzuorenyuan' == this.tableName && (this.ruleForm.jinyongTypes== null ||this.ruleForm.jinyongTypes== "")){
                            //     this.$message.error("账户状态不能为空");
                            //     return
                            // }
                            // gongzuorenyuan 中的 创建时间 判空处理
                            // if('gongzuorenyuan' == this.tableName && (this.ruleForm.createTime== null ||this.ruleForm.createTime== "")){
                            //     this.$message.error("创建时间不能为空");
                            //     return
                            // }
                this.$http({
                    url: `${this.tableName}/register`,
                    method: "post",
                    data:this.ruleForm
                }).then(({ data }) => {
                    if (data && data.code === 0) {
                    this.$message({
                        message: "注册成功,请登录后在个人中心页面补充个人数据",
                        type: "success",
                        duration: 1500,
                        onClose: () => {
                        this.$router.replace({ path: "/login" });
                }
                });
                } else {
                    this.$message.error(data.msg);
                }
            });
            }
        }
    };
</script>
<style lang="scss" scoped>
.el-radio__input.is-checked .el-radio__inner {
    border-color: #00c292;
    background: #00c292;
}

.el-radio__input.is-checked .el-radio__inner {
    border-color: #00c292;
    background: #00c292;
}

.el-radio__input.is-checked+.el-radio__label {
    color: #00c292;
}

.el-radio__input.is-checked+.el-radio__label {
    color: #00c292;
}

.el-radio__input.is-checked+.el-radio__label {
    color: #00c292;
}

.h1 {
    margin-top: 10px;
}

body {
    padding: 0;
    margin: 0;
}


.nk-navigation {
    margin-top: 15px;

a {
    display: inline-block;
    color: #fff;
    background: rgba(255, 255, 255, .2);
    width: 100px;
    height: 50px;
    border-radius: 30px;
    text-align: center;
    display: flex;
    align-items: center;
    margin: 0 auto;
    justify-content: center;
    padding: 0 20px;
}

.icon {
    margin-left: 10px;
    width: 30px;
    height: 30px;
}
}

.register-container {
    margin-top: 10px;

a {
    display: inline-block;
    color: #fff;
    max-width: 500px;
    height: 50px;
    border-radius: 30px;
    text-align: center;
    display: flex;
    align-items: center;
    margin: 0 auto;
    justify-content: center;
    padding: 0 20px;

div {
    margin-left: 10px;
}
}
}

.container {
    height: 100vh;
    background-position: center center;
    background-size: cover;
    background-repeat: no-repeat;
        background-image: url(/qiyezhiliangguanli/img/back-img-bg.jpg);

.login-form {
    right: 50%;
    top: 50%;
    height: auto;
    transform: translate3d(50%, -50%, 0);
    border-radius: 10px;
    background-color: rgba(255,255,255,.5);
    width: 420px;
    padding: 30px 30px 40px 30px;
    font-size: 14px;
    font-weight: 500;

.h1 {
    margin: 0;
    text-align: center;
    line-height: 54px;
    font-size: 24px;
    color: #000;
}

.rgs-form {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;

.input {
    width: 95%;

& /deep/ .el-form-item__label {
      line-height: 40px;
      color: rgba(17, 16, 16, 1);
      font-size: #606266;
  }

& /deep/ .el-input__inner {
      height: 40px;
      color: rgba(23, 24, 26, 1);
      font-size: 14px;
      border-width: 1px;
      border-style: solid;
      border-color: #606266;
      border-radius: 22px;
      background-color: #fff;
  }
}

.btn {
    margin: 0 10px;
    width: 88px;
    height: 44px;
    color: #fff;
    font-size: 14px;
    border-width: 1px;
    border-style: solid;
    border-color: #409EFF;
    border-radius: 22px;
    background-color: #409EFF;
}

.close {
    margin: 0 10px;
    width: 88px;
    height: 44px;
    color: #409EFF;
    font-size: 14px;
    border-width: 1px;
    border-style: solid;
    border-color: #409EFF;
    border-radius: 22px;
    background-color: #FFF;
}

}
}
}
</style>




