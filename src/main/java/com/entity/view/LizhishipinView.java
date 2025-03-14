package com.entity.view;

import com.entity.LizhishipinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 励志视频
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-10 14:46:25
 */
@TableName("lizhishipin")
public class LizhishipinView  extends LizhishipinEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public LizhishipinView(){
	}
 
 	public LizhishipinView(LizhishipinEntity lizhishipinEntity){
 	try {
			BeanUtils.copyProperties(this, lizhishipinEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
