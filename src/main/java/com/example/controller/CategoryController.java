package com.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.Category;
import com.example.utils.Result;
import com.mysql.jdbc.StringUtils;

/** * @Category  david:
 * @date 创建时间：2016年5月27日 下午3:12:58
 * @version 1.0
 * @parameter
  * @since 
 * @return 
 */
@RestController
@RequestMapping("/backend/category")
public class CategoryController extends BaseController{	
	
	/**
	 * 后台登陆
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView();
		List<Category> list = (List<Category>) categoryRep.findAll();
		mav.addObject("categorys", list);
		mav.setViewName("backend/category/list");
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
			mav.addObject("category", null);
		}else{
			Category category = categoryRep.findOne(Integer.parseInt(id));
			mav.addObject("category", category);
		}
		List<Category> list = (List<Category>) categoryRep.getParent();
		mav.addObject("categorys", list);
		mav.setViewName("backend/category/form");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/update")
	public Result update(Category category){
		
		Category category1 = categoryRep.findOne(category.getId());
		if(category1==null){
			category1= new Category();
		}
		category1 = category;
		categoryRep.save(category1);
		return new Result(true, "更新成功！");		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/delete")
	public Result delete(String id){
		Category category = categoryRep.findOne(Integer.parseInt(id));
		categoryRep.delete(category);
		return new Result(true, "删除成功！");		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/getByParent")
	public Map<String,Object> getByParent(int parent){
		Map<String,Object> map = new HashMap<String,Object>();
		List<Category> list = (List<Category>) categoryRep.getByParent(parent);
		map.put("categorys", list);
		return map;		
	}
	
}
