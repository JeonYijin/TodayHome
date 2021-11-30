package com.th.th1.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	public List<PageVO> getSelectList(PageVO pageVO) throws Exception {
		return categoryDAO.getSelectList(pageVO);
	}
	
	public PageVO getSelectPage(PageVO pageVO) throws Exception {
		return categoryDAO.getSelectPage(pageVO);
	}
	
	public Long getSelectCount(PageVO pageVO) throws Exception {
		return categoryDAO.getSelectCount(pageVO);
	}
	
	public String getSelectCategoryName(PageVO pageVO) throws Exception {
		return categoryDAO.getSelectCategoryName(pageVO);
	}
	

}
