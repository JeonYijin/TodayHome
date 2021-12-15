package com.th.th1.category;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.th.th1.util.Pager;

@Service
public class CategoryService {
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	public List<ProductVO> getSelectList(ProductVO productVO, Pager pager) throws Exception {
		long totalCount = categoryDAO.getSelectCount(productVO);
		
		pager.setPerPage(15);
		pager.makeRow();
		pager.makeNum(totalCount);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("products", productVO);
		map.put("pager", pager);
		
		return categoryDAO.getSelectList(map);
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
