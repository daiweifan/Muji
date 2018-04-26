package com.example.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/** * @author  david:
 * @date 创建时间：2016年6月4日 下午4:21:11
 * @version 1.0
 * @parameter
  * @since 
 * @return 
 */
@RestController
@RequestMapping("/backend/user")
public class UserController extends BaseController {

	/**
	 * 修改个人信息
	 * @param model
	 * @return
	 */
	@RequestMapping("/editPassword")
	public ModelAndView editPassword(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("backend/user/editPassword");
		return mav;
	}
	
	
	/**
	 * 保存字典信息(新增/编辑)
	 * @param o
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/updatePassword")
	public Map<String,Object> save(@RequestParam Map<String,Object> map) {
		Map<String,Object> tmap = new HashMap<String,Object>();
		
		return tmap;
	}
}
