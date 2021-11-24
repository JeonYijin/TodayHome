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
}
