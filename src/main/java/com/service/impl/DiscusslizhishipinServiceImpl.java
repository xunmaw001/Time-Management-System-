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


import com.dao.DiscusslizhishipinDao;
import com.entity.DiscusslizhishipinEntity;
import com.service.DiscusslizhishipinService;
import com.entity.vo.DiscusslizhishipinVO;
import com.entity.view.DiscusslizhishipinView;

@Service("discusslizhishipinService")
public class DiscusslizhishipinServiceImpl extends ServiceImpl<DiscusslizhishipinDao, DiscusslizhishipinEntity> implements DiscusslizhishipinService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusslizhishipinEntity> page = this.selectPage(
                new Query<DiscusslizhishipinEntity>(params).getPage(),
                new EntityWrapper<DiscusslizhishipinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusslizhishipinEntity> wrapper) {
		  Page<DiscusslizhishipinView> page =new Query<DiscusslizhishipinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusslizhishipinVO> selectListVO(Wrapper<DiscusslizhishipinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusslizhishipinVO selectVO(Wrapper<DiscusslizhishipinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusslizhishipinView> selectListView(Wrapper<DiscusslizhishipinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusslizhishipinView selectView(Wrapper<DiscusslizhishipinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
