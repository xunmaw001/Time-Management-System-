package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusslizhishipinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusslizhishipinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusslizhishipinView;


/**
 * 励志视频评论表
 *
 * @author 
 * @email 
 * @date 2021-03-10 14:46:26
 */
public interface DiscusslizhishipinService extends IService<DiscusslizhishipinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusslizhishipinVO> selectListVO(Wrapper<DiscusslizhishipinEntity> wrapper);
   	
   	DiscusslizhishipinVO selectVO(@Param("ew") Wrapper<DiscusslizhishipinEntity> wrapper);
   	
   	List<DiscusslizhishipinView> selectListView(Wrapper<DiscusslizhishipinEntity> wrapper);
   	
   	DiscusslizhishipinView selectView(@Param("ew") Wrapper<DiscusslizhishipinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusslizhishipinEntity> wrapper);
   	
}

