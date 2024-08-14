package com.entity.model;

import com.entity.GongzuorenyuanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 工作人员
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class GongzuorenyuanModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 账户
     */
    private String username;


    /**
     * 密码
     */
    private String password;


    /**
     * 工作人员编号
     */
    private String gongzuorenyuanUuidNumber;


    /**
     * 工作人员姓名
     */
    private String gongzuorenyuanName;


    /**
     * 工作人员手机号
     */
    private String gongzuorenyuanPhone;


    /**
     * 工作人员身份证号
     */
    private String gongzuorenyuanIdNumber;


    /**
     * 工作人员头像
     */
    private String gongzuorenyuanPhoto;


    /**
     * 性别
     */
    private Integer sexTypes;


    /**
     * 检验工种
     */
    private Integer jianyangongzhongTypes;


    /**
     * 工作人员邮箱
     */
    private String gongzuorenyuanEmail;


    /**
     * 账户状态
     */
    private Integer jinyongTypes;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：账户
	 */
    public String getUsername() {
        return username;
    }


    /**
	 * 设置：账户
	 */
    public void setUsername(String username) {
        this.username = username;
    }
    /**
	 * 获取：密码
	 */
    public String getPassword() {
        return password;
    }


    /**
	 * 设置：密码
	 */
    public void setPassword(String password) {
        this.password = password;
    }
    /**
	 * 获取：工作人员编号
	 */
    public String getGongzuorenyuanUuidNumber() {
        return gongzuorenyuanUuidNumber;
    }


    /**
	 * 设置：工作人员编号
	 */
    public void setGongzuorenyuanUuidNumber(String gongzuorenyuanUuidNumber) {
        this.gongzuorenyuanUuidNumber = gongzuorenyuanUuidNumber;
    }
    /**
	 * 获取：工作人员姓名
	 */
    public String getGongzuorenyuanName() {
        return gongzuorenyuanName;
    }


    /**
	 * 设置：工作人员姓名
	 */
    public void setGongzuorenyuanName(String gongzuorenyuanName) {
        this.gongzuorenyuanName = gongzuorenyuanName;
    }
    /**
	 * 获取：工作人员手机号
	 */
    public String getGongzuorenyuanPhone() {
        return gongzuorenyuanPhone;
    }


    /**
	 * 设置：工作人员手机号
	 */
    public void setGongzuorenyuanPhone(String gongzuorenyuanPhone) {
        this.gongzuorenyuanPhone = gongzuorenyuanPhone;
    }
    /**
	 * 获取：工作人员身份证号
	 */
    public String getGongzuorenyuanIdNumber() {
        return gongzuorenyuanIdNumber;
    }


    /**
	 * 设置：工作人员身份证号
	 */
    public void setGongzuorenyuanIdNumber(String gongzuorenyuanIdNumber) {
        this.gongzuorenyuanIdNumber = gongzuorenyuanIdNumber;
    }
    /**
	 * 获取：工作人员头像
	 */
    public String getGongzuorenyuanPhoto() {
        return gongzuorenyuanPhoto;
    }


    /**
	 * 设置：工作人员头像
	 */
    public void setGongzuorenyuanPhoto(String gongzuorenyuanPhoto) {
        this.gongzuorenyuanPhoto = gongzuorenyuanPhoto;
    }
    /**
	 * 获取：性别
	 */
    public Integer getSexTypes() {
        return sexTypes;
    }


    /**
	 * 设置：性别
	 */
    public void setSexTypes(Integer sexTypes) {
        this.sexTypes = sexTypes;
    }
    /**
	 * 获取：检验工种
	 */
    public Integer getJianyangongzhongTypes() {
        return jianyangongzhongTypes;
    }


    /**
	 * 设置：检验工种
	 */
    public void setJianyangongzhongTypes(Integer jianyangongzhongTypes) {
        this.jianyangongzhongTypes = jianyangongzhongTypes;
    }
    /**
	 * 获取：工作人员邮箱
	 */
    public String getGongzuorenyuanEmail() {
        return gongzuorenyuanEmail;
    }


    /**
	 * 设置：工作人员邮箱
	 */
    public void setGongzuorenyuanEmail(String gongzuorenyuanEmail) {
        this.gongzuorenyuanEmail = gongzuorenyuanEmail;
    }
    /**
	 * 获取：账户状态
	 */
    public Integer getJinyongTypes() {
        return jinyongTypes;
    }


    /**
	 * 设置：账户状态
	 */
    public void setJinyongTypes(Integer jinyongTypes) {
        this.jinyongTypes = jinyongTypes;
    }
    /**
	 * 获取：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
