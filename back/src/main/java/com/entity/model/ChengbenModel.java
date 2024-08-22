package com.entity.model;

import com.entity.ChengbenEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 维修成本
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class ChengbenModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 故障
     */
    private Integer guzhangId;


    /**
     * 维修成本编号
     */
    private String chengbenUuidNumber;


    /**
     * 维修成本类型
     */
    private Integer chengbenTypes;


    /**
     * 附件
     */
    private String chengbenFile;


    /**
     * 金额
     */
    private Double chengbenJine;


    /**
     * 花费时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date chengbenTime;


    /**
     * 备注
     */
    private String chengbenContent;


    /**
     * 录入时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date insertTime;


    /**
     * 创建时间  show1 show2 photoShow
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
	 * 获取：故障
	 */
    public Integer getGuzhangId() {
        return guzhangId;
    }


    /**
	 * 设置：故障
	 */
    public void setGuzhangId(Integer guzhangId) {
        this.guzhangId = guzhangId;
    }
    /**
	 * 获取：维修成本编号
	 */
    public String getChengbenUuidNumber() {
        return chengbenUuidNumber;
    }


    /**
	 * 设置：维修成本编号
	 */
    public void setChengbenUuidNumber(String chengbenUuidNumber) {
        this.chengbenUuidNumber = chengbenUuidNumber;
    }
    /**
	 * 获取：维修成本类型
	 */
    public Integer getChengbenTypes() {
        return chengbenTypes;
    }


    /**
	 * 设置：维修成本类型
	 */
    public void setChengbenTypes(Integer chengbenTypes) {
        this.chengbenTypes = chengbenTypes;
    }
    /**
	 * 获取：附件
	 */
    public String getChengbenFile() {
        return chengbenFile;
    }


    /**
	 * 设置：附件
	 */
    public void setChengbenFile(String chengbenFile) {
        this.chengbenFile = chengbenFile;
    }
    /**
	 * 获取：金额
	 */
    public Double getChengbenJine() {
        return chengbenJine;
    }


    /**
	 * 设置：金额
	 */
    public void setChengbenJine(Double chengbenJine) {
        this.chengbenJine = chengbenJine;
    }
    /**
	 * 获取：花费时间
	 */
    public Date getChengbenTime() {
        return chengbenTime;
    }


    /**
	 * 设置：花费时间
	 */
    public void setChengbenTime(Date chengbenTime) {
        this.chengbenTime = chengbenTime;
    }
    /**
	 * 获取：备注
	 */
    public String getChengbenContent() {
        return chengbenContent;
    }


    /**
	 * 设置：备注
	 */
    public void setChengbenContent(String chengbenContent) {
        this.chengbenContent = chengbenContent;
    }
    /**
	 * 获取：录入时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 设置：录入时间
	 */
    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 获取：创建时间  show1 show2 photoShow
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间  show1 show2 photoShow
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
