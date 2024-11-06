package com.entity.model;

import com.entity.ShoufeijieguoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 收费结果
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-04-17 21:23:57
 */
public class ShoufeijieguoModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 手机
	 */
	
	private String shouji;
		
	/**
	 * 缴费状态
	 */
	
	private String jiaofeizhuangtai;
		
	/**
	 * 收费时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date shoufeishijian;
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：手机
	 */
	 
	public void setShouji(String shouji) {
		this.shouji = shouji;
	}
	
	/**
	 * 获取：手机
	 */
	public String getShouji() {
		return shouji;
	}
				
	
	/**
	 * 设置：缴费状态
	 */
	 
	public void setJiaofeizhuangtai(String jiaofeizhuangtai) {
		this.jiaofeizhuangtai = jiaofeizhuangtai;
	}
	
	/**
	 * 获取：缴费状态
	 */
	public String getJiaofeizhuangtai() {
		return jiaofeizhuangtai;
	}
				
	
	/**
	 * 设置：收费时间
	 */
	 
	public void setShoufeishijian(Date shoufeishijian) {
		this.shoufeishijian = shoufeishijian;
	}
	
	/**
	 * 获取：收费时间
	 */
	public Date getShoufeishijian() {
		return shoufeishijian;
	}
			
}
