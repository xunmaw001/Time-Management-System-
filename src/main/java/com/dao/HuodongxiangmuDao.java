package com.dao;

import com.entity.HuodongxiangmuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.HuodongxiangmuVO;
import com.entity.view.HuodongxiangmuView;


/**
 * 活动项目
 * 
 * @author 
 * @email 
 * @date 2021-03-10 14:46:26
 */
public interface HuodongxiangmuDao extends BaseMapper<HuodongxiangmuEntity> {
	
	List<HuodongxiangmuVO> selectListVO(@Param("ew") Wrapper<HuodongxiangmuEntity> wrapper);
	
	HuodongxiangmuVO selectVO(@Param("ew") Wrapper<HuodongxiangmuEntity> wrapper);
	
	List<HuodongxiangmuView> selectListView(@Param("ew") Wrapper<HuodongxiangmuEntity> wrapper);

	List<HuodongxiangmuView> selectListView(Pagination page,@Param("ew") Wrapper<HuodongxiangmuEntity> wrapper);
	
	HuodongxiangmuView selectView(@Param("ew") Wrapper<HuodongxiangmuEntity> wrapper);
	
}
