package com.th.th1.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.th.th1.interceptor.HouseInterceptor;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {
/**
	
	@Autowired
	private HouseInterceptor houseInterceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		
		//1. 적용할 interceptor 등록
		registry.addInterceptor(houseInterceptor)
		//2. interceptor를 사용할 url 적용
			.addPathPatterns("/housewarming/**")
		//3. interceptor를 제외할 url 적용
			.excludePathPatterns("/housewarming")
			.excludePathPatterns("/housewarming/detail");
	}
	
*/		
}
