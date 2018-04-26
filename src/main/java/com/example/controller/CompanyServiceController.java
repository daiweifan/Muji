package com.example.controller;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.CompanyService;
import com.example.utils.Qiniu;
import com.example.utils.Result;
import com.mysql.jdbc.StringUtils;

/**
 * 
 * @author david
 *
 * 2017年4月2日 下午10:33:26
 */
@RestController
@RequestMapping("/backend/companyService")
public class CompanyServiceController extends BaseController{	
	
	/**
	 * 后台登陆
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView();
		List<CompanyService> list = (List<CompanyService>) companyServiceRep.findAll();
		mav.addObject("companyServices", list);
		mav.setViewName("backend/companyService/list");
		return mav;
	}
	
	
	@RequestMapping("/form")
	public ModelAndView form(String id){
		ModelAndView mav = new ModelAndView();
		if(StringUtils.isNullOrEmpty(id)){
			mav.addObject("companyService", null);
		}else{
			CompanyService companyService = companyServiceRep.findOne(Integer.parseInt(id));
			mav.addObject("companyService", companyService);
		}
		Qiniu qiniu = new Qiniu();
		mav.addObject("uptoken", qiniu.getUploadToken());
		mav.addObject("qiniu_url", Qiniu.qiniu_url);
		mav.setViewName("backend/companyService/form");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/update")
	public Result update(CompanyService companyService){
		companyServiceRep.save(companyService);
		return new Result(true, "更新成功！");		
	}
	
}
