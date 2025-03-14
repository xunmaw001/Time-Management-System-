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

import com.entity.MubiaozhidingEntity;
import com.entity.view.MubiaozhidingView;

import com.service.MubiaozhidingService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 目标制定
 * 后端接口
 * @author 
 * @email 
 * @date 2021-03-10 14:46:26
 */
@RestController
@RequestMapping("/mubiaozhiding")
public class MubiaozhidingController {
    @Autowired
    private MubiaozhidingService mubiaozhidingService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,MubiaozhidingEntity mubiaozhiding, HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			mubiaozhiding.setZhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<MubiaozhidingEntity> ew = new EntityWrapper<MubiaozhidingEntity>();
    	PageUtils page = mubiaozhidingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, mubiaozhiding), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,MubiaozhidingEntity mubiaozhiding, HttpServletRequest request){
        EntityWrapper<MubiaozhidingEntity> ew = new EntityWrapper<MubiaozhidingEntity>();
    	PageUtils page = mubiaozhidingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, mubiaozhiding), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( MubiaozhidingEntity mubiaozhiding){
       	EntityWrapper<MubiaozhidingEntity> ew = new EntityWrapper<MubiaozhidingEntity>();
      	ew.allEq(MPUtil.allEQMapPre( mubiaozhiding, "mubiaozhiding")); 
        return R.ok().put("data", mubiaozhidingService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(MubiaozhidingEntity mubiaozhiding){
        EntityWrapper< MubiaozhidingEntity> ew = new EntityWrapper< MubiaozhidingEntity>();
 		ew.allEq(MPUtil.allEQMapPre( mubiaozhiding, "mubiaozhiding")); 
		MubiaozhidingView mubiaozhidingView =  mubiaozhidingService.selectView(ew);
		return R.ok("查询目标制定成功").put("data", mubiaozhidingView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        MubiaozhidingEntity mubiaozhiding = mubiaozhidingService.selectById(id);
        return R.ok().put("data", mubiaozhiding);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        MubiaozhidingEntity mubiaozhiding = mubiaozhidingService.selectById(id);
        return R.ok().put("data", mubiaozhiding);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody MubiaozhidingEntity mubiaozhiding, HttpServletRequest request){
    	mubiaozhiding.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(mubiaozhiding);

        mubiaozhidingService.insert(mubiaozhiding);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody MubiaozhidingEntity mubiaozhiding, HttpServletRequest request){
    	mubiaozhiding.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(mubiaozhiding);

        mubiaozhidingService.insert(mubiaozhiding);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody MubiaozhidingEntity mubiaozhiding, HttpServletRequest request){
        //ValidatorUtils.validateEntity(mubiaozhiding);
        mubiaozhidingService.updateById(mubiaozhiding);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        mubiaozhidingService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<MubiaozhidingEntity> wrapper = new EntityWrapper<MubiaozhidingEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			wrapper.eq("zhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = mubiaozhidingService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	


}
