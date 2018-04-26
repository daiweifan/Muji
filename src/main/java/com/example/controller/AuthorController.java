package com.example.controller;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.Author;
import com.example.utils.Qiniu;
import com.example.utils.Result;
import com.mysql.jdbc.StringUtils;

/** * @author  david:
 * @date 创建时间：2016年5月27日 下午3:12:58
 * @version 1.0
 * @parameter
  * @since 
 * @return 
 */
@RestController
@RequestMapping("/backend/author")
public class AuthorController extends BaseController{	
	
	/**
	 * 后台登陆
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView();
		List<Author> list = (List<Author>) authorRep.findAll();
		mav.addObject("authors", list);
		mav.setViewName("backend/author/list");
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
			mav.addObject("author", null);
		}else{
			Author author = authorRep.findOne(Integer.parseInt(id));
			mav.addObject("author", author);
		}
		Qiniu qiniu = new Qiniu();
		mav.addObject("uptoken", qiniu.getUploadToken());
		mav.addObject("qiniu_url", Qiniu.qiniu_url);
		mav.setViewName("backend/author/form");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/update")
	public Result update(Author author){
		Author author1 = authorRep.findOne(author.getId());
		if(author1==null){
			author1= new Author();
		}
		author1 = author;
		authorRep.save(author1);
		return new Result(true, "更新成功！");		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/delete")
	public Result delete(String id){
		Author author = authorRep.findOne(Integer.parseInt(id));
		authorRep.delete(author);
		return new Result(true, "删除成功！");		
	}
	
	
}
