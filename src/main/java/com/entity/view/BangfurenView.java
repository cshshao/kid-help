package com.entity.view;

import com.entity.BangfurenEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 帮扶人
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-01 19:53:04
 */
@TableName("bangfuren")
public class BangfurenView  extends BangfurenEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public BangfurenView(){
	}
 
 	public BangfurenView(BangfurenEntity bangfurenEntity){
 	try {
			BeanUtils.copyProperties(this, bangfurenEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
