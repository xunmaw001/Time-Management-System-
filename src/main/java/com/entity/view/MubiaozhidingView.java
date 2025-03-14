package com.entity.view;

import com.entity.MubiaozhidingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 目标制定
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-10 14:46:26
 */
@TableName("mubiaozhiding")
public class MubiaozhidingView  extends MubiaozhidingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public MubiaozhidingView(){
	}
 
 	public MubiaozhidingView(MubiaozhidingEntity mubiaozhidingEntity){
 	try {
			BeanUtils.copyProperties(this, mubiaozhidingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
