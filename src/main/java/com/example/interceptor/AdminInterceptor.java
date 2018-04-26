package com.example.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.User;

public class AdminInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object arg2, 
			ModelAndView modelAndView)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>adminInpt");
		Object o = request.getSession().getAttribute("currentAdmin");
		if(o!=null){
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>用户不为空");
			User admin = (User) o;
			modelAndView.addObject("currentAdmin", admin);
		}else{
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>用户为空");
			response.sendRedirect(request.getContextPath()+"/backend/login");
		}

	}

	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		return true;
	}

}
