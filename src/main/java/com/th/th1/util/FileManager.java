package com.th.th1.util;

import java.io.File;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {
	
	
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private ResourceLoader resourceLoader;
	
	
	//ServletContext 사용
	public String getUseServletContext(String filePath, MultipartFile multipartFile) throws Exception {
		//filePath : 저장할 경로
		
		//C부터 실제 경로 가져오기
		filePath = servletContext.getRealPath(filePath);
		File file = new File(filePath);
		
		if(!file.exists()) {
			file.mkdirs();
		}
		
		//파일 저장
		//1. 유니크한 이름 생성
		String fileName = "";
		fileName = UUID.randomUUID().toString()+"_"+multipartFile.getOriginalFilename();
		
		//2. file : 어느 경로, fileName : 무슨 이름으로 저장
		file = new File(file,fileName);
		
		multipartFile.transferTo(file);
		
		return fileName;
	}
	
}
