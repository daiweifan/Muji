package com.example;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.example.interceptor.AdminInterceptor;

@Configuration
public class InterceptorConfig extends WebMvcConfigurerAdapter {
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
	/*	registry.addInterceptor(new JadeInterceptor()).addPathPatterns("/**");*/
		registry.addInterceptor(new AdminInterceptor()).addPathPatterns("/backend/**").excludePathPatterns(
				"/backend/login", "/backend/loginPost", "/backend/logout","/backend/company/update","/backend/author/update","/backend/author/delete","/backend/case/update","/backend/case/delete",
				"/backend/companyService/update","/backend/companyCraft/update","/backend/companyCraft/delete","/backend/message/updateFlag","/backend/message/update","/backend/splitImage/update",
				"/backend/carousel/update","/backend/category/update","/backend/category/delete","/backend/category/getByParent"
				);
	}

}
