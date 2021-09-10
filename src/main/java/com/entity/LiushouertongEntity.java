package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 留守儿童
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-01 19:53:04
 */
@TableName("liushouertong")
public class LiushouertongEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public LiushouertongEntity() {
		
	}
	
	public LiushouertongEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 儿童姓名
	 */
					
	private String ertongxingming;
	
	/**
	 * 性别
	 */
					
	private String xingbie;
	
	/**
	 * 头像
	 */
					
	private String touxiang;
	
	/**
	 * 年龄
	 */
					
	private String nianling;
	
	/**
	 * 学校
	 */
					
	private String xuexiao;
	
	/**
	 * 年级
	 */
					
	private String nianji;
	
	/**
	 * 父母
	 */
					
	private String fumu;
	
	/**
	 * 联系电话
	 */
					
	private String lianxidianhua;
	
	/**
	 * 家庭住址
	 */
					
	private String jiatingzhuzhi;
	
	/**
	 * 现居人口
	 */
					
	private String xianjurenkou;
	
	/**
	 * 家庭描述
	 */
					
	private String jiatingmiaoshu;
	
	/**
	 * 是否帮扶
	 */
					
	private String shifoubangfu;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：儿童姓名
	 */
	public void setErtongxingming(String ertongxingming) {
		this.ertongxingming = ertongxingming;
	}
	/**
	 * 获取：儿童姓名
	 */
	public String getErtongxingming() {
		return ertongxingming;
	}
	/**
	 * 设置：性别
	 */
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}
	/**
	 * 设置：头像
	 */
	public void setTouxiang(String touxiang) {
		this.touxiang = touxiang;
	}
	/**
	 * 获取：头像
	 */
	public String getTouxiang() {
		return touxiang;
	}
	/**
	 * 设置：年龄
	 */
	public void setNianling(String nianling) {
		this.nianling = nianling;
	}
	/**
	 * 获取：年龄
	 */
	public String getNianling() {
		return nianling;
	}
	/**
	 * 设置：学校
	 */
	public void setXuexiao(String xuexiao) {
		this.xuexiao = xuexiao;
	}
	/**
	 * 获取：学校
	 */
	public String getXuexiao() {
		return xuexiao;
	}
	/**
	 * 设置：年级
	 */
	public void setNianji(String nianji) {
		this.nianji = nianji;
	}
	/**
	 * 获取：年级
	 */
	public String getNianji() {
		return nianji;
	}
	/**
	 * 设置：父母
	 */
	public void setFumu(String fumu) {
		this.fumu = fumu;
	}
	/**
	 * 获取：父母
	 */
	public String getFumu() {
		return fumu;
	}
	/**
	 * 设置：联系电话
	 */
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
	/**
	 * 设置：家庭住址
	 */
	public void setJiatingzhuzhi(String jiatingzhuzhi) {
		this.jiatingzhuzhi = jiatingzhuzhi;
	}
	/**
	 * 获取：家庭住址
	 */
	public String getJiatingzhuzhi() {
		return jiatingzhuzhi;
	}
	/**
	 * 设置：现居人口
	 */
	public void setXianjurenkou(String xianjurenkou) {
		this.xianjurenkou = xianjurenkou;
	}
	/**
	 * 获取：现居人口
	 */
	public String getXianjurenkou() {
		return xianjurenkou;
	}
	/**
	 * 设置：家庭描述
	 */
	public void setJiatingmiaoshu(String jiatingmiaoshu) {
		this.jiatingmiaoshu = jiatingmiaoshu;
	}
	/**
	 * 获取：家庭描述
	 */
	public String getJiatingmiaoshu() {
		return jiatingmiaoshu;
	}
	/**
	 * 设置：是否帮扶
	 */
	public void setShifoubangfu(String shifoubangfu) {
		this.shifoubangfu = shifoubangfu;
	}
	/**
	 * 获取：是否帮扶
	 */
	public String getShifoubangfu() {
		return shifoubangfu;
	}

}
