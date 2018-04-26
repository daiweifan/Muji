package com.example.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class PathInterceptor extends HandlerInterceptorAdapter {

	Log log = LogFactory.getLog(PathInterceptor.class);

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		String contextPath = request.getContextPath();
		modelAndView.addObject("_base", contextPath);
		log.info("base = " + contextPath);
	}

}
