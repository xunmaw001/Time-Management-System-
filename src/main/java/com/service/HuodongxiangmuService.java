package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.HuodongxiangmuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.HuodongxiangmuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.HuodongxiangmuView;


/**
 * 活动项目
 *
 * @author 
 * @email 
 * @date 2021-03-10 14:46:26
 */
public interface HuodongxiangmuService extends IService<HuodongxiangmuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<HuodongxiangmuVO> selectListVO(Wrapper<HuodongxiangmuEntity> wrapper);
   	
   	HuodongxiangmuVO selectVO(@Param("ew") Wrapper<HuodongxiangmuEntity> wrapper);
   	
   	List<HuodongxiangmuView> selectListView(Wrapper<HuodongxiangmuEntity> wrapper);
   	
   	HuodongxiangmuView selectView(@Param("ew") Wrapper<HuodongxiangmuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<HuodongxiangmuEntity> wrapper);
   	
}

