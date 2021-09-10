package com.entity.model;

import com.entity.LiushouertongEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 留守儿童
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-03-01 19:53:04
 */
public class LiushouertongModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
