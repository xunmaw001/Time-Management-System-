package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.HuodongxiangmuEntity;
import com.entity.view.HuodongxiangmuView;

import com.service.HuodongxiangmuService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 活动项目
 * 后端接口
 * @author 
 * @email 
 * @date 2021-03-10 14:46:26
 */
@RestController
@RequestMapping("/huodongxiangmu")
public class HuodongxiangmuController {
    @Autowired
    private HuodongxiangmuService huodongxiangmuService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,HuodongxiangmuEntity huodongxiangmu, HttpServletRequest request){

        EntityWrapper<HuodongxiangmuEntity> ew = new EntityWrapper<HuodongxiangmuEntity>();
    	PageUtils page = huodongxiangmuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, huodongxiangmu), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,HuodongxiangmuEntity huodongxiangmu, HttpServletRequest request){
        EntityWrapper<HuodongxiangmuEntity> ew = new EntityWrapper<HuodongxiangmuEntity>();
    	PageUtils page = huodongxiangmuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, huodongxiangmu), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( HuodongxiangmuEntity huodongxiangmu){
       	EntityWrapper<HuodongxiangmuEntity> ew = new EntityWrapper<HuodongxiangmuEntity>();
      	ew.allEq(MPUtil.allEQMapPre( huodongxiangmu, "huodongxiangmu")); 
        return R.ok().put("data", huodongxiangmuService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(HuodongxiangmuEntity huodongxiangmu){
        EntityWrapper< HuodongxiangmuEntity> ew = new EntityWrapper< HuodongxiangmuEntity>();
 		ew.allEq(MPUtil.allEQMapPre( huodongxiangmu, "huodongxiangmu")); 
		HuodongxiangmuView huodongxiangmuView =  huodongxiangmuService.selectView(ew);
		return R.ok("查询活动项目成功").put("data", huodongxiangmuView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        HuodongxiangmuEntity huodongxiangmu = huodongxiangmuService.selectById(id);
		huodongxiangmu.setClicknum(huodongxiangmu.getClicknum()+1);
		huodongxiangmuService.updateById(huodongxiangmu);
        return R.ok().put("data", huodongxiangmu);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        HuodongxiangmuEntity huodongxiangmu = huodongxiangmuService.selectById(id);
		huodongxiangmu.setClicknum(huodongxiangmu.getClicknum()+1);
		huodongxiangmuService.updateById(huodongxiangmu);
        return R.ok().put("data", huodongxiangmu);
    }
    


    /**
     * 赞或踩
     */
    @RequestMapping("/thumbsup/{id}")
    public R vote(@PathVariable("id") String id,String type){
        HuodongxiangmuEntity huodongxiangmu = huodongxiangmuService.selectById(id);
        if(type.equals("1")) {
        	huodongxiangmu.setThumbsupnum(huodongxiangmu.getThumbsupnum()+1);
        } else {
        	huodongxiangmu.setCrazilynum(huodongxiangmu.getCrazilynum()+1);
        }
        huodongxiangmuService.updateById(huodongxiangmu);
        return R.ok("投票成功");
    }

    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody HuodongxiangmuEntity huodongxiangmu, HttpServletRequest request){
    	huodongxiangmu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(huodongxiangmu);

        huodongxiangmuService.insert(huodongxiangmu);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody HuodongxiangmuEntity huodongxiangmu, HttpServletRequest request){
    	huodongxiangmu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(huodongxiangmu);

        huodongxiangmuService.insert(huodongxiangmu);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody HuodongxiangmuEntity huodongxiangmu, HttpServletRequest request){
        //ValidatorUtils.validateEntity(huodongxiangmu);
        huodongxiangmuService.updateById(huodongxiangmu);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        huodongxiangmuService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<HuodongxiangmuEntity> wrapper = new EntityWrapper<HuodongxiangmuEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = huodongxiangmuService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	


}
