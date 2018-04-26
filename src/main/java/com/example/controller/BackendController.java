package com.example.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.Carousel;
import com.example.model.Company;
import com.example.model.CompanyService;
import com.example.model.SplitImage;
import com.example.model.User;
import com.example.utils.Result;

/** * @author  david:
 * @date 创建时间：2016年5月27日 下午3:12:58
 * @version 1.0
 * @parameter
  * @since 
 * @return 
 */
@RestController
@RequestMapping("/backend")
public class BackendController extends BaseController{	
	
	/**
	 * 后台登陆
	 * @param model
	 * @return
	 */
	@RequestMapping("/login")
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView();
		long userCount = userRep.count();
		long companyCount = companyRep.count();
		long serviceCount = companyServiceRep.count();
		long splitImageCount = splitImageRep.count();
		long carouselCount = carouselRep.count();
		if(userCount<1){
			//创建用户
			User user = new User();
			user.setUsername("admin");
			user.setPassword("1234qwer");
			userRep.save(user);
		}
		if(serviceCount<1){
			//创建服务
			for(int i=0;i<3;i++){
				CompanyService cs = new CompanyService();
				companyServiceRep.save(cs);
			}
		}
		if(carouselCount<1){
			//创建轮播图
			for(int i=0;i<3;i++){
				Carousel cs = new Carousel();
				carouselRep.save(cs);
			}
		}
		if(splitImageCount<1){
			//创建两个封面图片
			for(int i=0;i<2;i++){
				SplitImage cs = new SplitImage();
				splitImageRep.save(cs);
			}
		}
		if(companyCount<1){
			//创建企业
			Company company = new Company();
			companyRep.save(company);
		}
		mav.setViewName("backend/login");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="loginPost")
	public Result login_post(@RequestParam("username") String username,@RequestParam("password") String password){
		User user = userRep.findByUsername(username);
		if(user==null){
			return new Result(false, "该用户名不存在！");
		}
		try {
			if(user.getPassword().equals(password)){		
					req.getSession().setAttribute("currentAdmin", user);
					return new Result(true,  "登录成功");
			}else{
				return new Result(false,  "用户名或密码错误");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return new Result(false, "异常");
		}
	}
	
	
	@ResponseBody
	@RequestMapping(value="logout")
	public Result logout(){	
		req.getSession().setAttribute("currentAdmin", null);
		return new Result(true, "退出成功");
	}
}
