package com.th.th1.Admin;

import org.apache.ibatis.annotations.Mapper;

import com.th.th1.category.ProductVO;
import com.th.th1.category.PrFilesVO;

@Mapper
public interface AdminDAO {
	
	//상품 등록
	public int setInsertProduct(ProductVO productVO) throws Exception;
	
	//상품 사진 등록
	public int setInsertProductFile(PrFilesVO prFilesVO) throws Exception;
	
}
