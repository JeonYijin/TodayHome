package com.th.th1.Admin;

import java.io.File;

import javax.servlet.ServletContext;

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
	@Autowired
	private ServletContext servletContext;

	// 상품 페이지 등록
	public int setInsertProduct(ProductVO productVO, MultipartFile[] files, MultipartFile[] files1) throws Exception {

		int result = adminDAO.setInsertProduct(productVO);

		for (MultipartFile multipartFile : files) {

			if (multipartFile.getSize() == 0L) {
				continue;
			}
			
			String realPath = servletContext.getRealPath("resources/upload/store");
			File file = new File(realPath);
			
			PrFilesVO prFilesVO = new PrFilesVO();
			prFilesVO.setPr_number(productVO.getPr_number());

			String fileName = fileManager.getUseServletContext(file, multipartFile);
			prFilesVO.setFileName(fileName);
			prFilesVO.setOriName(multipartFile.getOriginalFilename());
			prFilesVO.setPr_number(productVO.getPr_number());
			prFilesVO.setOri_type(1);

			result = adminDAO.setInsertProductFile(prFilesVO);

		}

		// files1

		for (MultipartFile multipartFile : files1) {

			if (multipartFile.getSize() == 0L) {
				continue;
			}

			PrFilesVO prFilesVO = new PrFilesVO();
			prFilesVO.setPr_number(productVO.getPr_number());

			String realPath = servletContext.getRealPath("resources/upload/store");
			File file = new File(realPath);
			
			//String fileName = fileManager.getUseServletContext("/upload/store", multipartFile);
			String fileName = fileManager.getUseServletContext(file, multipartFile);
			prFilesVO.setFileName(fileName);
			prFilesVO.setOriName(multipartFile.getOriginalFilename());
			prFilesVO.setPr_number(productVO.getPr_number());
			prFilesVO.setOri_type(2);

			result = adminDAO.setInsertProductFile(prFilesVO);

		}

		return result;
	}

}
