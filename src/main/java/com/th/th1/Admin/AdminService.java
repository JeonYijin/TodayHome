package com.th.th1.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.th.th1.category.PageVO;
import com.th.th1.category.PrFilesVO;
import com.th.th1.util.FileManager;

@Service
public class AdminService {
	
	@Autowired
	private AdminDAO adminDAO;
	@Autowired
	private FileManager fileManager;
	
	
	//상품 페이지 등록
	public int setInsertPage(PageVO pageVO, MultipartFile[] files) throws Exception {
		
		int result = adminDAO.setInsertPage(pageVO);
		
		for(MultipartFile multipartFile : files) {
			
			if(multipartFile.getSize()==0L) {
				continue;
			}
			
			PrFilesVO prFilesVO = new PrFilesVO();
			prFilesVO.setPage_number(pageVO.getPage_number());
			
			String fileName = fileManager.getUseServletContext("/upload/store", multipartFile);
			prFilesVO.setFileName(fileName);
			prFilesVO.setOriName(multipartFile.getOriginalFilename());
			
			result = adminDAO.setInsertPageFile(prFilesVO);
			
		}
		
		return result;
	}

}
