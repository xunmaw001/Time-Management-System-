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


import com.dao.LizhishipinDao;
import com.entity.LizhishipinEntity;
import com.service.LizhishipinService;
import com.entity.vo.LizhishipinVO;
import com.entity.view.LizhishipinView;

@Service("lizhishipinService")
public class LizhishipinServiceImpl extends ServiceImpl<LizhishipinDao, LizhishipinEntity> implements LizhishipinService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<LizhishipinEntity> page = this.selectPage(
                new Query<LizhishipinEntity>(params).getPage(),
                new EntityWrapper<LizhishipinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<LizhishipinEntity> wrapper) {
		  Page<LizhishipinView> page =new Query<LizhishipinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<LizhishipinVO> selectListVO(Wrapper<LizhishipinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public LizhishipinVO selectVO(Wrapper<LizhishipinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<LizhishipinView> selectListView(Wrapper<LizhishipinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public LizhishipinView selectView(Wrapper<LizhishipinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
