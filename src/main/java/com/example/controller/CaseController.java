package com.example.controller;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.Author;
import com.example.model.Case;
import com.example.model.Category;
import com.example.utils.Qiniu;
import com.example.utils.Result;
import com.mysql.jdbc.StringUtils;

/** 
 * 
 * @case david
 *
 * 2017年3月30日 下午8:46:45
 */

@RestController
@RequestMapping("/backend/case")
public class CaseController extends BaseController{	
	
	/**
	 * 后台登陆
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView();
		List<Case> list = (List<Case>) caseRep.findAll();
		mav.addObject("cases", list);
		mav.setViewName("backend/case/list");
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
			mav.addObject("case", null);
		}else{
			Case case1 = caseRep.findOne(Integer.parseInt(id));
			if(case1.getCategory()!=null){
				//二级分类
				List<Category> seconds = (List<Category>) categoryRep.getByParent(case1.getCategory().getParent().getId());
				mav.addObject("seconds", seconds);
			}
			mav.addObject("case", case1);
		}
		Qiniu qiniu = new Qiniu();
		mav.addObject("uptoken", qiniu.getUploadToken());
		mav.addObject("qiniu_url", Qiniu.qiniu_url);
		//空间设计师
		List<Author> list = (List<Author>) authorRep.findByType("1");
		mav.addObject("authors", list);
		//软装设计师
		List<Author> softList = (List<Author>) authorRep.findByType("2");
		//分类大类
		List<Category> categorys = (List<Category>) categoryRep.getParent();
		mav.addObject("categorys", categorys);
	
		mav.addObject("softAuthors", softList);
		mav.setViewName("backend/case/form");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/update")
	public Result update(Case case1){
		Case case2 = caseRep.findOne(case1.getId());
		if(case2==null){
			case2= new Case();
		}
		case2 = case1;
		caseRep.save(case2);
		return new Result(true, "更新成功！");		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/delete")
	public Result delete(String id){
		Case case1 = caseRep.findOne(Integer.parseInt(id));
		caseRep.delete(case1);
		return new Result(true, "删除成功！");		
	}
	
}
