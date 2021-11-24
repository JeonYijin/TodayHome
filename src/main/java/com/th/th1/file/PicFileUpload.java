package com.th.th1.file;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class PicFileUpload {

	public String fileSave(MultipartFile files, File file) throws Exception{
		//폴더 없으면 폴더 생성하기
		if(!file.exists()) {
			file.mkdirs();
		}
		
		//파일 이름 uuid로 생성하기
		String fileName = UUID.randomUUID().toString();
		fileName = fileName+"_"+files.getOriginalFilename();
		System.out.println("파일명:" + fileName);
	
		file = new File(file, fileName);
		
		files.transferTo(file);
		
		return fileName;
		
	}
	
	
	
}
