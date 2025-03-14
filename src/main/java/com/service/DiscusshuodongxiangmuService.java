package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusshuodongxiangmuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusshuodongxiangmuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusshuodongxiangmuView;


/**
 * 活动项目评论表
 *
 * @author 
 * @email 
 * @date 2021-03-10 14:46:26
 */
public interface DiscusshuodongxiangmuService extends IService<DiscusshuodongxiangmuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusshuodongxiangmuVO> selectListVO(Wrapper<DiscusshuodongxiangmuEntity> wrapper);
   	
   	DiscusshuodongxiangmuVO selectVO(@Param("ew") Wrapper<DiscusshuodongxiangmuEntity> wrapper);
   	
   	List<DiscusshuodongxiangmuView> selectListView(Wrapper<DiscusshuodongxiangmuEntity> wrapper);
   	
   	DiscusshuodongxiangmuView selectView(@Param("ew") Wrapper<DiscusshuodongxiangmuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusshuodongxiangmuEntity> wrapper);
   	
}

