package com.example.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.Company;
import com.example.utils.Result;

/** * @author  david:
 * @date 创建时间：2016年5月27日 下午3:12:58
 * @version 1.0
 * @parameter
  * @since 
 * @return 
 */
@RestController
@RequestMapping("/backend/company")
public class CompanyController extends BaseController{	
	
	/**
	 * 后台登陆
	 * @param model
	 * @return
	 */
	@RequestMapping("/info")
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView();
		Company company = companyRep.findOne(1);
		mav.addObject("company", company);
		mav.setViewName("backend/company/info");
		return mav;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/update")
	public Result update(Company company){
		companyRep.save(company);
		return new Result(true, "更新成功！");
	}
	
}
