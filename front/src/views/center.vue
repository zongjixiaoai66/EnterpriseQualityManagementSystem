<template>
  <div>
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      label-width="auto"
    >  
     <el-row>
                    <el-col :span="12">
           <el-form-item v-if="flag=='gongzuorenyuan'"  label='工作人员编号' prop="gongzuorenyuanUuidNumber">
               <el-input v-model="ruleForm.gongzuorenyuanUuidNumber"disabled="true"   placeholder='工作人员编号' clearable></el-input>
           </el-form-item>
         </el-col>
         <el-col :span="12">
           <el-form-item v-if="flag=='gongzuorenyuan'"  label='工作人员姓名' prop="gongzuorenyuanName">
               <el-input v-model="ruleForm.gongzuorenyuanName"  placeholder='工作人员姓名' clearable></el-input>
           </el-form-item>
         </el-col>
         <el-col :span="12">
           <el-form-item v-if="flag=='gongzuorenyuan'"  label='工作人员手机号' prop="gongzuorenyuanPhone">
               <el-input v-model="ruleForm.gongzuorenyuanPhone"  placeholder='工作人员手机号' clearable></el-input>
           </el-form-item>
         </el-col>
         <el-col :span="12">
           <el-form-item v-if="flag=='gongzuorenyuan'"  label='工作人员身份证号' prop="gongzuorenyuanIdNumber">
               <el-input v-model="ruleForm.gongzuorenyuanIdNumber"  placeholder='工作人员身份证号' clearable></el-input>
           </el-form-item>
         </el-col>
         <el-col :span="12">
             <el-form-item v-if="flag=='gongzuorenyuan'" label='工作人员头像' prop="gongzuorenyuanPhoto">
                 <file-upload
                         tip="点击上传照片"
                         action="file/upload"
                         :limit="3"
                         :multiple="true"
                         :fileUrls="ruleForm.gongzuorenyuanPhoto?$base.url+ruleForm.gongzuorenyuanPhoto:''"
                         @change="gongzuorenyuanPhotoUploadChange"
                 ></file-upload>
             </el-form-item>
         </el-col>
         <el-col :span="12">
             <el-form-item v-if="flag=='gongzuorenyuan'"  label='检验工种' prop="jianyangongzhongTypes">
                 <el-select v-model="ruleForm.jianyangongzhongTypes" disabled  placeholder='请选择检验工种'>
                     <el-option
                             v-for="(item,index) in jianyangongzhongTypesOptions"
                             v-bind:key="item.codeIndex"
                             :label="item.indexName"
                             :value="item.codeIndex">
                     </el-option>
                 </el-select>
             </el-form-item>
         </el-col>
         <el-col :span="12">
           <el-form-item v-if="flag=='gongzuorenyuan'"  label='工作人员邮箱' prop="gongzuorenyuanEmail">
               <el-input v-model="ruleForm.gongzuorenyuanEmail"  placeholder='工作人员邮箱' clearable></el-input>
           </el-form-item>
         </el-col>
         <el-form-item v-if="flag=='users'" label="用户名" prop="username">
             <el-input v-model="ruleForm.username"
                       placeholder="用户名"></el-input>
         </el-form-item>
         <el-col :span="12">
             <el-form-item v-if="flag!='users' &&( 1==2|| flag=='gongzuorenyuan')"  label="性别" prop="sexTypes">
                 <el-select v-model="ruleForm.sexTypes" placeholder="请选择性别">
                     <el-option
                             v-for="(item,index) in sexTypesOptions"
                             v-bind:key="item.codeIndex"
                             :label="item.indexName"
                             :value="item.codeIndex">
                     </el-option>
                 </el-select>
             </el-form-item>
         </el-col>
         <el-col :span="24">
             <el-form-item>
                 <el-button type="primary" @click="onUpdateHandler">修 改</el-button>
             </el-form-item>
         </el-col>
     </el-row>
    </el-form>
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isPhone,isURL,checkIdCard } from "@/utils/validate";

export default {
  data() {
    return {
        ruleForm: {},
        flag: '',
        usersFlag: false,
        // sexTypesOptions : [],
// 注册表 工作人员
    // 注册的类型字段 工作人员
        // 性别
        sexTypesOptions : [],
        // 检验工种
        jianyangongzhongTypesOptions : [],
        // 账户状态
        jinyongTypesOptions : [],
    };
  },
  mounted() {
    //获取当前登录用户的信息
    var table = this.$storage.get("sessionTable");
    this.sessionTable = this.$storage.get("sessionTable");
    this.role = this.$storage.get("role");
    if (this.role != "管理员"){
    }

    this.flag = table;
    this.$http({
      url: `${this.$storage.get("sessionTable")}/session`,
      method: "get"
    }).then(({ data }) => {
      if (data && data.code === 0) {
        this.ruleForm = data.data;
// 注册表 工作人员
      } else {
        this.$message.error(data.msg);
      }
    });

// 注册表 工作人员 的级联表

      this.$http({
          url: `dictionary/page?page=1&limit=100&sort=&order=&dicCode=sex_types`,
          method: "get"
      }).then(({ data }) => {
          if (data && data.code === 0) {
              this.sexTypesOptions = data.data.list;
          } else {
              this.$message.error(data.msg);
          }
      });
   this.$http({
       url: `dictionary/page?page=1&limit=100&sort=&order=&dicCode=jianyangongzhong_types`,
       method: "get"
   }).then(({ data }) => {
       if (data && data.code === 0) {
          this.jianyangongzhongTypesOptions = data.data.list;
      } else {
          this.$message.error(data.msg);
      }
    });
   this.$http({
       url: `dictionary/page?page=1&limit=100&sort=&order=&dicCode=jinyong_types`,
       method: "get"
   }).then(({ data }) => {
       if (data && data.code === 0) {
          this.jinyongTypesOptions = data.data.list;
      } else {
          this.$message.error(data.msg);
      }
    });
  },
  methods: {
    chongzhi() {
      this.$router.replace({ path: "/pay" });
    },
    tixian() {
      let _this=this;
      this.$confirm(`确定要提现么?`, "提示", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
      }).then(() => {
          _this.ruleForm.newMoney=0;
          _this.$http({
              url: `${this.$storage.get("sessionTable")}/update`,
              method: "post",
              data: this.ruleForm
          }).then(({ data }) => {
              if (data && data.code === 0) {
                  _this.$message({message: "提现成功",type: "success",duration: 1500,onClose: () => {}});
              } else {this.$message.error(data.msg);}
          });
      });
    },
    gongzuorenyuanPhotoUploadChange(fileUrls) {
        this.ruleForm.gongzuorenyuanPhoto = fileUrls;
    },


    onUpdateHandler() {
                         if((!this.ruleForm.gongzuorenyuanUuidNumber)&& 'gongzuorenyuan'==this.flag){
                             this.$message.error('工作人员编号不能为空');
                             return
                         }

                         if((!this.ruleForm.gongzuorenyuanName)&& 'gongzuorenyuan'==this.flag){
                             this.$message.error('工作人员姓名不能为空');
                             return
                         }

                             if( 'gongzuorenyuan' ==this.flag && this.ruleForm.gongzuorenyuanPhone&&(!isMobile(this.ruleForm.gongzuorenyuanPhone))){
                                 this.$message.error(`手机应输入手机格式`);
                                 return
                             }
                         if((!this.ruleForm.gongzuorenyuanIdNumber)&& 'gongzuorenyuan'==this.flag){
                             this.$message.error('工作人员身份证号不能为空');
                             return
                         }

                         if((!this.ruleForm.gongzuorenyuanPhoto)&& 'gongzuorenyuan'==this.flag){
                             this.$message.error('工作人员头像不能为空');
                             return
                         }

                         if((!this.ruleForm.jianyangongzhongTypes)&& 'gongzuorenyuan'==this.flag){
                             this.$message.error('检验工种不能为空');
                             return
                         }

                             if( 'gongzuorenyuan' ==this.flag && this.ruleForm.gongzuorenyuanEmail&&(!isEmail(this.ruleForm.gongzuorenyuanEmail))){
                                 this.$message.error(`邮箱应输入邮箱格式`);
                                 return
                             }
                         if((!this.ruleForm.jinyongTypes)&& 'gongzuorenyuan'==this.flag){
                             this.$message.error('账户状态不能为空');
                             return
                         }

        if((!this.ruleForm.sexTypes) && (1==2|| this.flag=='gongzuorenyuan')){
            this.$message.error('性别不能为空');
            return
        }
      if('users'==this.flag && this.ruleForm.username.trim().length<1) {
        this.$message.error(`用户名不能为空`);
        return	
      }
      this.$http({
        url: `${this.$storage.get("sessionTable")}/update`,
        method: "post",
        data: this.ruleForm
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.$message({
            message: "修改信息成功",
            type: "success",
            duration: 1500,
            onClose: () => {
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
</style>
