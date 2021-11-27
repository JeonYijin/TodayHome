package com.th.th1.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
public class WebConfig implements WebMvcConfigurer {
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		
		registry.addResourceHandler("/ckUpload/**")
		.addResourceLocations("/resources/ckUpload/");

		//다른 이미지 업로드를 위한 경로
		registry.addResourceHandler("/images/**")
				.addResourceLocations("/resources/images/");
		registry.addResourceHandler("/ckUpload/**")
				.addResourceLocations("/resources/ckUpload/");
	}
	/** [CKEditor Handler : END ] */
	
	
	
	

	
	
	/**	[TilesConfigurer : START]
    @Bean
    public TilesConfigurer tilesConfigurer() {
        final TilesConfigurer configurer = new TilesConfigurer();
        
        // tiles.xml 경로 명시
        configurer.setDefinitions(new String[]{"/WEB-INF/tiles/tiles.xml"});
        
        // 리프레쉬 가능 여부 설정
        configurer.setCheckRefresh(true);
        
        return configurer;
    }

    // TilesViewResolver
    @Bean
    public TilesViewResolver tilesViewResolver() {
        final TilesViewResolver tilesViewResolver = new TilesViewResolver();
        tilesViewResolver.setViewClass(TilesView.class);
        tilesViewResolver.setOrder(1);  //뷰 우선순위
        return tilesViewResolver;
    }  
	 	[TilesConfigurer : END] */    
	
	
	
}

