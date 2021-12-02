package com.th.th1.Admin;

import org.apache.ibatis.annotations.Mapper;

import com.th.th1.category.PageVO;
import com.th.th1.category.PrFilesVO;

@Mapper
public interface AdminDAO {
	
	//상품 페이지 등록
	public int setInsertPage(PageVO pageVO) throws Exception;
	
	//상품 페이지 사진 등록
	public int setInsertPageFile(PrFilesVO prFilesVO) throws Exception;
	
}
