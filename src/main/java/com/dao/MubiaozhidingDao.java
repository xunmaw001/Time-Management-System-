package com.dao;

import com.entity.MubiaozhidingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.MubiaozhidingVO;
import com.entity.view.MubiaozhidingView;


/**
 * 目标制定
 * 
 * @author 
 * @email 
 * @date 2021-03-10 14:46:26
 */
public interface MubiaozhidingDao extends BaseMapper<MubiaozhidingEntity> {
	
	List<MubiaozhidingVO> selectListVO(@Param("ew") Wrapper<MubiaozhidingEntity> wrapper);
	
	MubiaozhidingVO selectVO(@Param("ew") Wrapper<MubiaozhidingEntity> wrapper);
	
	List<MubiaozhidingView> selectListView(@Param("ew") Wrapper<MubiaozhidingEntity> wrapper);

	List<MubiaozhidingView> selectListView(Pagination page,@Param("ew") Wrapper<MubiaozhidingEntity> wrapper);
	
	MubiaozhidingView selectView(@Param("ew") Wrapper<MubiaozhidingEntity> wrapper);
	
}
