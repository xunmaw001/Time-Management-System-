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


import com.dao.HuodongxiangmuDao;
import com.entity.HuodongxiangmuEntity;
import com.service.HuodongxiangmuService;
import com.entity.vo.HuodongxiangmuVO;
import com.entity.view.HuodongxiangmuView;

@Service("huodongxiangmuService")
public class HuodongxiangmuServiceImpl extends ServiceImpl<HuodongxiangmuDao, HuodongxiangmuEntity> implements HuodongxiangmuService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<HuodongxiangmuEntity> page = this.selectPage(
                new Query<HuodongxiangmuEntity>(params).getPage(),
                new EntityWrapper<HuodongxiangmuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<HuodongxiangmuEntity> wrapper) {
		  Page<HuodongxiangmuView> page =new Query<HuodongxiangmuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<HuodongxiangmuVO> selectListVO(Wrapper<HuodongxiangmuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public HuodongxiangmuVO selectVO(Wrapper<HuodongxiangmuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<HuodongxiangmuView> selectListView(Wrapper<HuodongxiangmuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public HuodongxiangmuView selectView(Wrapper<HuodongxiangmuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
