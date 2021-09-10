package com.entity.view;

import com.entity.BangfuwuziEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 帮扶物资
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-01 19:53:04
 */
@TableName("bangfuwuzi")
public class BangfuwuziView  extends BangfuwuziEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public BangfuwuziView(){
	}
 
 	public BangfuwuziView(BangfuwuziEntity bangfuwuziEntity){
 	try {
			BeanUtils.copyProperties(this, bangfuwuziEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
