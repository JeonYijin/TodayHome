package com.th.th1.category;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class CategoryDAOTest {
	
	@Autowired
	private CategoryDAO categoryDAO;

//	//@Test
//	void getSelectListTest() throws Exception {
//		
//		ProductVO pageVO = new ProductVO();
//		pageVO.setPage_category("test");
//		List<ProductVO> ar = categoryDAO.getSelectList(pageVO);
//		
//		assertNotNull(ar);
//	}
//	
//	//@Test
//	void getSelectListPage() throws Exception {
//		
//		ProductVO pageVO = new ProductVO();
//		pageVO.setPage_number(1L);
//		pageVO = categoryDAO.getSelectPage(pageVO);
//		
//		assertNotNull(pageVO);
//	}

}
