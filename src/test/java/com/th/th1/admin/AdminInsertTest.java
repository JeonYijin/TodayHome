package com.th.th1.admin;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.th.th1.Admin.AdminDAO;
import com.th.th1.category.ProductVO;
import com.th.th1.category.PrFilesVO;

@SpringBootTest
class AdminInsertTest {

	@Autowired
	private AdminDAO adminDAO;

	/*
	 * //@Test void setInsertPageTest() throws Exception { ProductVO pageVO = new
	 * ProductVO();
	 * 
	 * pageVO.setPage_title("title"); pageVO.setPage_seller("seller");
	 * pageVO.setPage_category("4"); pageVO.setPage_price(5000L);
	 * 
	 * int result = adminDAO.setInsertPage(pageVO); assertNotEquals(0, result);
	 * 
	 * }
	 * 
	 * //@Test void setInsertPageFileTest() throws Exception { PrFilesVO prFilesVO =
	 * new PrFilesVO(); prFilesVO.setPage_number(3L);
	 * prFilesVO.setFileName("fileName"); prFilesVO.setOriName("oriName");
	 * 
	 * int result = adminDAO.setInsertPageFile(prFilesVO); assertNotEquals(0,
	 * result);
	 * 
	 * }
	 */

}
