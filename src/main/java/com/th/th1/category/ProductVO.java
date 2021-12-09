package com.th.th1.category;


import java.util.List;

import lombok.Data;

@Data
public class ProductVO {
	private Long pr_number; //상품번호
	private String pr_name; //상품명
	private String pr_seller; //판매자
	private String pr_category;
	private Long pr_price; //원가
	private Long pr_discount; //할인율
	private Long pr_dPrice; //할인가
	private Long pr_rate; //판매량
	private Long pr_scrap; //스크랩수
	
	private List<PrFilesVO> prFiles;
	
	
	public String getPr_category() {
		
		if(this.pr_category == null) {
			this.pr_category = "0";
		}
		
		return pr_category;
	}
	public void setPr_category(String pr_category) {
		this.pr_category = pr_category;
	}
}


