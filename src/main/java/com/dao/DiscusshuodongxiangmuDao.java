package com.dao;

import com.entity.DiscusshuodongxiangmuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusshuodongxiangmuVO;
import com.entity.view.DiscusshuodongxiangmuView;


/**
 * 活动项目评论表
 * 
 * @author 
 * @email 
 * @date 2021-03-10 14:46:26
 */
public interface DiscusshuodongxiangmuDao extends BaseMapper<DiscusshuodongxiangmuEntity> {
	
	List<DiscusshuodongxiangmuVO> selectListVO(@Param("ew") Wrapper<DiscusshuodongxiangmuEntity> wrapper);
	
	DiscusshuodongxiangmuVO selectVO(@Param("ew") Wrapper<DiscusshuodongxiangmuEntity> wrapper);
	
	List<DiscusshuodongxiangmuView> selectListView(@Param("ew") Wrapper<DiscusshuodongxiangmuEntity> wrapper);

	List<DiscusshuodongxiangmuView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusshuodongxiangmuEntity> wrapper);
	
	DiscusshuodongxiangmuView selectView(@Param("ew") Wrapper<DiscusshuodongxiangmuEntity> wrapper);
	
}
