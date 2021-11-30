package com.th.th1.category;


import java.util.List;

import lombok.Data;

@Data
public class PageVO {
	private Long page_number;
	private String page_title;
	private String page_seller;
	private String page_category;
	private Long page_price;
	
	private List<ProductVO> products;
	private List<PrFilesVO> prFiles;
	
	
	public String getPage_category() {
		
		if(this.page_category == null) {
			this.page_category = "0";
		}
		
		return page_category;
	}
	public void setPage_category(String page_category) {
		this.page_category = page_category;
	}
}


