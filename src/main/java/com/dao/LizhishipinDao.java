package com.dao;

import com.entity.LizhishipinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.LizhishipinVO;
import com.entity.view.LizhishipinView;


/**
 * 励志视频
 * 
 * @author 
 * @email 
 * @date 2021-03-10 14:46:25
 */
public interface LizhishipinDao extends BaseMapper<LizhishipinEntity> {
	
	List<LizhishipinVO> selectListVO(@Param("ew") Wrapper<LizhishipinEntity> wrapper);
	
	LizhishipinVO selectVO(@Param("ew") Wrapper<LizhishipinEntity> wrapper);
	
	List<LizhishipinView> selectListView(@Param("ew") Wrapper<LizhishipinEntity> wrapper);

	List<LizhishipinView> selectListView(Pagination page,@Param("ew") Wrapper<LizhishipinEntity> wrapper);
	
	LizhishipinView selectView(@Param("ew") Wrapper<LizhishipinEntity> wrapper);
	
}
