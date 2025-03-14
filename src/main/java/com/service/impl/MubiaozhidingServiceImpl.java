package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.MubiaozhidingDao;
import com.entity.MubiaozhidingEntity;
import com.service.MubiaozhidingService;
import com.entity.vo.MubiaozhidingVO;
import com.entity.view.MubiaozhidingView;

@Service("mubiaozhidingService")
public class MubiaozhidingServiceImpl extends ServiceImpl<MubiaozhidingDao, MubiaozhidingEntity> implements MubiaozhidingService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<MubiaozhidingEntity> page = this.selectPage(
                new Query<MubiaozhidingEntity>(params).getPage(),
                new EntityWrapper<MubiaozhidingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<MubiaozhidingEntity> wrapper) {
		  Page<MubiaozhidingView> page =new Query<MubiaozhidingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<MubiaozhidingVO> selectListVO(Wrapper<MubiaozhidingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public MubiaozhidingVO selectVO(Wrapper<MubiaozhidingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<MubiaozhidingView> selectListView(Wrapper<MubiaozhidingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public MubiaozhidingView selectView(Wrapper<MubiaozhidingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
