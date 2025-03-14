package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.LizhishipinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.LizhishipinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.LizhishipinView;


/**
 * 励志视频
 *
 * @author 
 * @email 
 * @date 2021-03-10 14:46:25
 */
public interface LizhishipinService extends IService<LizhishipinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<LizhishipinVO> selectListVO(Wrapper<LizhishipinEntity> wrapper);
   	
   	LizhishipinVO selectVO(@Param("ew") Wrapper<LizhishipinEntity> wrapper);
   	
   	List<LizhishipinView> selectListView(Wrapper<LizhishipinEntity> wrapper);
   	
   	LizhishipinView selectView(@Param("ew") Wrapper<LizhishipinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<LizhishipinEntity> wrapper);
   	
}

