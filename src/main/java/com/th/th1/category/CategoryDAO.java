package com.th.th1.category;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CategoryDAO {
	
	
	//Select 카테고리 리스트 
	public List<PageVO> getSelectList(PageVO pageVO) throws Exception;
	
	//Select 상세 페이지 이동
	public PageVO getSelectPage(PageVO pageVO) throws Exception;
	
	//Select 상품 개수 반환
	public Long getSelectCount(PageVO pageVO) throws Exception;
	
	//Select 카테고리명 반환
	public String getSelectCategoryName(PageVO pageVO) throws Exception;
	
}
