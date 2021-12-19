package com.th.th1.category;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.th.th1.housewarming.House_ScrapVO;

@Mapper
public interface CategoryDAO {
	
	
	//Select 카테고리 리스트 
	public List<ProductVO> getSelectList(Map<String, Object> map) throws Exception;
	
	//best 리스트
	public List<ProductVO> getSelectList1(ProductVO productVO) throws Exception; 
	
	public List<ProductVO> getSelectList2(ProductVO productVO) throws Exception;
	
	//Select 상세 페이지 이동
	public ProductVO getSelectPage(ProductVO productVO) throws Exception;
	
	
	//Select 상품 개수 반환
	public Integer getSelectCount(ProductVO productVO) throws Exception;
	
	//Select 카테고리명 반환
	public String getSelectCategoryName(ProductVO productVO) throws Exception;
	
	// -------------------------------------------------------------------------
	
	/** Category_Scrap table Insert */
	public int setScrapInsert(Category_ScrapVO csVO) throws Exception;
		
	/** Category_Scrap table Delete */
	public int setScrapDelete(Category_ScrapVO csVO) throws Exception;
		
	/** Pr table Scrap UP */
	public int prScrapUp(int pr_number) throws Exception;
		
	/** Pr table Scrap DOWN */
	public int prScrapDown(int pr_number) throws Exception;
	
	/** 해당 아이디가 스크랩 눌렀는지 여부 확인 */
	public Category_ScrapVO getScrapInfo(Category_ScrapVO csVO) throws Exception;
	
	/** 한 아이디에 종속된 Scrap List */
	public List<Category_ScrapVO> getScraps(Category_ScrapVO csVO) throws Exception;
		
	// -------------------------------------------------------------------------
	
}
