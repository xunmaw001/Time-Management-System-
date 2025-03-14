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


import com.dao.DiscusshuodongxiangmuDao;
import com.entity.DiscusshuodongxiangmuEntity;
import com.service.DiscusshuodongxiangmuService;
import com.entity.vo.DiscusshuodongxiangmuVO;
import com.entity.view.DiscusshuodongxiangmuView;

@Service("discusshuodongxiangmuService")
public class DiscusshuodongxiangmuServiceImpl extends ServiceImpl<DiscusshuodongxiangmuDao, DiscusshuodongxiangmuEntity> implements DiscusshuodongxiangmuService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusshuodongxiangmuEntity> page = this.selectPage(
                new Query<DiscusshuodongxiangmuEntity>(params).getPage(),
                new EntityWrapper<DiscusshuodongxiangmuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusshuodongxiangmuEntity> wrapper) {
		  Page<DiscusshuodongxiangmuView> page =new Query<DiscusshuodongxiangmuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusshuodongxiangmuVO> selectListVO(Wrapper<DiscusshuodongxiangmuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusshuodongxiangmuVO selectVO(Wrapper<DiscusshuodongxiangmuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusshuodongxiangmuView> selectListView(Wrapper<DiscusshuodongxiangmuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusshuodongxiangmuView selectView(Wrapper<DiscusshuodongxiangmuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
