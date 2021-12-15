package com.th.th1.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	public List<ProductVO> getSelectList(ProductVO productVO) throws Exception {
		return categoryDAO.getSelectList(productVO);
	}
	
	public List<ProductVO> getSelectList1(ProductVO productVO) throws Exception {
		return categoryDAO.getSelectList1(productVO);
	}
	
	public ProductVO getSelectPage(ProductVO productVO) throws Exception {
		return categoryDAO.getSelectPage(productVO);
	}
	
	
	public Long getSelectCount(ProductVO productVO) throws Exception {
		return categoryDAO.getSelectCount(productVO);
	}
	
	public String getSelectCategoryName(ProductVO productVO) throws Exception {
		return categoryDAO.getSelectCategoryName(productVO);
	}
	
	

}
