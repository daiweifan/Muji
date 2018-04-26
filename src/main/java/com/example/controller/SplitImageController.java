package com.example.controller;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.SplitImage;
import com.example.utils.Qiniu;
import com.example.utils.Result;

/**
 * 
 * @author david
 *
 * 2017年4月6日 下午10:07:31
 */
@RestController
@RequestMapping("/backend/splitImage")
public class SplitImageController extends BaseController{	
	
	/**
	 * 列表
	 * 方法功能说明
	 * 创建时间 2017年4月6日 下午10:10:10
	 * 开发者 david
	 * @参数： @return	
	 * @return： ModelAndView
	 */
	@RequestMapping("/list")
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView();
		List<SplitImage> list = (List<SplitImage>) splitImageRep.findAll();
		mav.addObject("splitImages", list);
		mav.setViewName("backend/splitImage/list");
		return mav;
	}
	
	
	/**
	 * 修改页面
	 * 方法功能说明
	 * 创建时间 2017年4月6日 下午10:10:20
	 * 开发者 david
	 * @参数： @param id
	 * @参数： @return	
	 * @return： ModelAndView
	 */
	@RequestMapping("/form")
	public ModelAndView form(String id){
		ModelAndView mav = new ModelAndView();
		SplitImage splitImage = splitImageRep.findOne(Integer.parseInt(id));
		mav.addObject("splitImage", splitImage);
		Qiniu qiniu = new Qiniu();
		mav.addObject("uptoken", qiniu.getUploadToken());
		mav.addObject("qiniu_url", Qiniu.qiniu_url);
		mav.setViewName("backend/splitImage/form");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/update")
	public Result update(SplitImage splitImage){
		splitImageRep.save(splitImage);
		return new Result(true, "更新成功！");		
	}
	
	
}
