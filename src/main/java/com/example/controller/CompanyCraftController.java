package com.example.controller;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.CompanyCraft;
import com.example.utils.Qiniu;
import com.example.utils.Result;
import com.mysql.jdbc.StringUtils;

/** * @companyCraft  david:
 * @date 创建时间：2016年5月27日 下午3:12:58
 * @version 1.0
 * @parameter
  * @since 
 * @return 
 */
@RestController
@RequestMapping("/backend/companyCraft")
public class CompanyCraftController extends BaseController{	
	
	/**
	 * 后台登陆
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView();
		List<CompanyCraft> list = (List<CompanyCraft>) companyCraftRep.findAll();
		mav.addObject("companyCrafts", list);
		mav.setViewName("backend/companyCraft/list");
		return mav;
	}
	
	
	/**
	 * 新增和编辑页面
	 * 方法功能说明
	 * 创建时间 2017年3月28日 下午11:43:59
	 * 开发者 david
	 * @参数： @param id
	 * @参数： @return	
	 * @return： ModelAndView
	 */
	@RequestMapping("/form")
	public ModelAndView form(String id){
		ModelAndView mav = new ModelAndView();
		if(StringUtils.isNullOrEmpty(id)){
			mav.addObject("companyCraft", null);
		}else{
			CompanyCraft companyCraft = companyCraftRep.findOne(Integer.parseInt(id));
			mav.addObject("companyCraft", companyCraft);
		}
		Qiniu qiniu = new Qiniu();
		mav.addObject("uptoken", qiniu.getUploadToken());
		mav.addObject("qiniu_url", Qiniu.qiniu_url);
		mav.setViewName("backend/companyCraft/form");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/update")
	public Result update(CompanyCraft companyCraft){
		CompanyCraft companyCraft1 = companyCraftRep.findOne(companyCraft.getId());
		if(companyCraft1==null){
			companyCraft1= new CompanyCraft();
		}
		companyCraft1 = companyCraft;
		companyCraftRep.save(companyCraft1);
		return new Result(true, "更新成功！");		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/delete")
	public Result delete(String id){
		CompanyCraft companyCraft = companyCraftRep.findOne(Integer.parseInt(id));
		companyCraftRep.delete(companyCraft);
		return new Result(true, "删除成功！");		
	}
	
}
