package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.MubiaozhidingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.MubiaozhidingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.MubiaozhidingView;


/**
 * 目标制定
 *
 * @author 
 * @email 
 * @date 2021-03-10 14:46:26
 */
public interface MubiaozhidingService extends IService<MubiaozhidingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<MubiaozhidingVO> selectListVO(Wrapper<MubiaozhidingEntity> wrapper);
   	
   	MubiaozhidingVO selectVO(@Param("ew") Wrapper<MubiaozhidingEntity> wrapper);
   	
   	List<MubiaozhidingView> selectListView(Wrapper<MubiaozhidingEntity> wrapper);
   	
   	MubiaozhidingView selectView(@Param("ew") Wrapper<MubiaozhidingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<MubiaozhidingEntity> wrapper);
   	
}

