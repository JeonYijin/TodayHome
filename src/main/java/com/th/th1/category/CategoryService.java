package com.th.th1.category;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.th.th1.housewarming.House_ScrapVO;
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
	public List<ProductVO> getSelectList2(ProductVO productVO) throws Exception {
		return categoryDAO.getSelectList2(productVO);
	}
	
	public ProductVO getSelectPage(ProductVO productVO) throws Exception {
		return categoryDAO.getSelectPage(productVO);
	}
	
	
	public Integer getSelectCount(ProductVO productVO) throws Exception {
		return categoryDAO.getSelectCount(productVO);
	}
	
	public String getSelectCategoryName(ProductVO productVO) throws Exception {
		return categoryDAO.getSelectCategoryName(productVO);
	}
	
	// -------------------------------------------------------------------------
	
	/** pr 스크랩 Up 등록 */
	public int setScrapInsert(Category_ScrapVO csVO) throws Exception{
		int result=categoryDAO.setScrapInsert(csVO);
		if(result==1) {
			int result2 = categoryDAO.prScrapUp(csVO.getPr_number());
		}
		
		return result;
	}
		
	/** pr 스크랩 Down 등록 */
	public int setScrapDown(Category_ScrapVO csVO) throws Exception {
		int result=categoryDAO.setScrapDelete(csVO);
		if(result==1) {
			categoryDAO.prScrapDown(csVO.getPr_number());
		}
		return result;
	}
		
	/** 해당아이디로 해당글에 스크랩 눌렀는지 여부 판별 */
	public Category_ScrapVO getScrapInfo(Category_ScrapVO csVO) throws Exception {
		return categoryDAO.getScrapInfo(csVO);
	}
		
	/** 한 아이디에 종속된 Scrap List */
	public List<Category_ScrapVO> getScraps(Category_ScrapVO csVO) throws Exception {
		return categoryDAO.getScraps(csVO);
	}
		
		// -------------------------------------------------------------------------
	

}

