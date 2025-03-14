package com.dao;

import com.entity.DiscusslizhishipinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusslizhishipinVO;
import com.entity.view.DiscusslizhishipinView;


/**
 * 励志视频评论表
 * 
 * @author 
 * @email 
 * @date 2021-03-10 14:46:26
 */
public interface DiscusslizhishipinDao extends BaseMapper<DiscusslizhishipinEntity> {
	
	List<DiscusslizhishipinVO> selectListVO(@Param("ew") Wrapper<DiscusslizhishipinEntity> wrapper);
	
	DiscusslizhishipinVO selectVO(@Param("ew") Wrapper<DiscusslizhishipinEntity> wrapper);
	
	List<DiscusslizhishipinView> selectListView(@Param("ew") Wrapper<DiscusslizhishipinEntity> wrapper);

	List<DiscusslizhishipinView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusslizhishipinEntity> wrapper);
	
	DiscusslizhishipinView selectView(@Param("ew") Wrapper<DiscusslizhishipinEntity> wrapper);
	
}
