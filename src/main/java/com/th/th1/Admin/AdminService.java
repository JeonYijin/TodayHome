package com.th.th1.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.th.th1.category.ProductVO;
import com.th.th1.category.PrFilesVO;
import com.th.th1.util.FileManager;

@Service
public class AdminService {
	
	@Autowired
	private AdminDAO adminDAO;
	@Autowired
	private FileManager fileManager;
	
	
	//상품 페이지 등록
	public int setInsertProduct(ProductVO productVO, MultipartFile[] files) throws Exception {
		
		int result = adminDAO.setInsertProduct(productVO);
		
		for(MultipartFile multipartFile : files) {
			
			if(multipartFile.getSize()==0L) {
				continue;
			}
			
			PrFilesVO prFilesVO = new PrFilesVO();
			prFilesVO.setPr_number(productVO.getPr_number());
			
			String fileName = fileManager.getUseServletContext("/upload/store", multipartFile);
			prFilesVO.setFileName(fileName);
			prFilesVO.setOriName(multipartFile.getOriginalFilename());
			prFilesVO.setPr_number(productVO.getPr_number());
			
			
			result = adminDAO.setInsertProductFile(prFilesVO);
			
		}
		
		return result;
	}

}
