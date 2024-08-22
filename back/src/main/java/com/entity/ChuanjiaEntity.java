package com.entity;

import com.annotation.ColumnInfo;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;
import java.io.Serializable;
import java.util.*;
import org.apache.tools.ant.util.DateUtils;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.utils.DateUtil;


/**
 * 船家
 *
 * @author 
 * @email
 */
@TableName("chuanjia")
public class ChuanjiaEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public ChuanjiaEntity() {

	}

	public ChuanjiaEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @ColumnInfo(comment="主键",type="int(11)")
    @TableField(value = "id")

    private Integer id;


    /**
     * 账户
     */
    @ColumnInfo(comment="账户",type="varchar(200)")
    @TableField(value = "username")

    private String username;


    /**
     * 密码
     */
    @ColumnInfo(comment="密码",type="varchar(200)")
    @TableField(value = "password")

    private String password;


    /**
     * 船家编号
     */
    @ColumnInfo(comment="船家编号",type="varchar(200)")
    @TableField(value = "chuanjia_uuid_number")

    private String chuanjiaUuidNumber;


    /**
     * 船家姓名
     */
    @ColumnInfo(comment="船家姓名",type="varchar(200)")
    @TableField(value = "chuanjia_name")

    private String chuanjiaName;


    /**
     * 船家手机号
     */
    @ColumnInfo(comment="船家手机号",type="varchar(200)")
    @TableField(value = "chuanjia_phone")

    private String chuanjiaPhone;


    /**
     * 船家身份证号
     */
    @ColumnInfo(comment="船家身份证号",type="varchar(200)")
    @TableField(value = "chuanjia_id_number")

    private String chuanjiaIdNumber;


    /**
     * 船家头像
     */
    @ColumnInfo(comment="船家头像",type="varchar(200)")
    @TableField(value = "chuanjia_photo")

    private String chuanjiaPhoto;


    /**
     * 性别
     */
    @ColumnInfo(comment="性别",type="int(11)")
    @TableField(value = "sex_types")

    private Integer sexTypes;


    /**
     * 船家邮箱
     */
    @ColumnInfo(comment="船家邮箱",type="varchar(200)")
    @TableField(value = "chuanjia_email")

    private String chuanjiaEmail;


    /**
     * 账户状态
     */
    @ColumnInfo(comment="账户状态",type="int(11)")
    @TableField(value = "jinyong_types")

    private Integer jinyongTypes;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @ColumnInfo(comment="创建时间",type="timestamp")
    @TableField(value = "create_time",fill = FieldFill.INSERT)

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
	 * 获取：船家编号
	 */
    public String getChuanjiaUuidNumber() {
        return chuanjiaUuidNumber;
    }
    /**
	 * 设置：船家编号
	 */

    public void setChuanjiaUuidNumber(String chuanjiaUuidNumber) {
        this.chuanjiaUuidNumber = chuanjiaUuidNumber;
    }
    /**
	 * 获取：船家姓名
	 */
    public String getChuanjiaName() {
        return chuanjiaName;
    }
    /**
	 * 设置：船家姓名
	 */

    public void setChuanjiaName(String chuanjiaName) {
        this.chuanjiaName = chuanjiaName;
    }
    /**
	 * 获取：船家手机号
	 */
    public String getChuanjiaPhone() {
        return chuanjiaPhone;
    }
    /**
	 * 设置：船家手机号
	 */

    public void setChuanjiaPhone(String chuanjiaPhone) {
        this.chuanjiaPhone = chuanjiaPhone;
    }
    /**
	 * 获取：船家身份证号
	 */
    public String getChuanjiaIdNumber() {
        return chuanjiaIdNumber;
    }
    /**
	 * 设置：船家身份证号
	 */

    public void setChuanjiaIdNumber(String chuanjiaIdNumber) {
        this.chuanjiaIdNumber = chuanjiaIdNumber;
    }
    /**
	 * 获取：船家头像
	 */
    public String getChuanjiaPhoto() {
        return chuanjiaPhoto;
    }
    /**
	 * 设置：船家头像
	 */

    public void setChuanjiaPhoto(String chuanjiaPhoto) {
        this.chuanjiaPhoto = chuanjiaPhoto;
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
	 * 获取：船家邮箱
	 */
    public String getChuanjiaEmail() {
        return chuanjiaEmail;
    }
    /**
	 * 设置：船家邮箱
	 */

    public void setChuanjiaEmail(String chuanjiaEmail) {
        this.chuanjiaEmail = chuanjiaEmail;
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

    @Override
    public String toString() {
        return "Chuanjia{" +
            ", id=" + id +
            ", username=" + username +
            ", password=" + password +
            ", chuanjiaUuidNumber=" + chuanjiaUuidNumber +
            ", chuanjiaName=" + chuanjiaName +
            ", chuanjiaPhone=" + chuanjiaPhone +
            ", chuanjiaIdNumber=" + chuanjiaIdNumber +
            ", chuanjiaPhoto=" + chuanjiaPhoto +
            ", sexTypes=" + sexTypes +
            ", chuanjiaEmail=" + chuanjiaEmail +
            ", jinyongTypes=" + jinyongTypes +
            ", createTime=" + DateUtil.convertString(createTime,"yyyy-MM-dd") +
        "}";
    }
}
