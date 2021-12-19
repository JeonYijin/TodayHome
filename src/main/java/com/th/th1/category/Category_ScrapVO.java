package com.th.th1.category;

import lombok.Data;

@Data
public class Category_ScrapVO { //상품 카테고리 스크랩관리VO

	private Integer num; //PK
	private String scrap_id; //스크랩한 아이디
	private Integer pr_number; //상품번호

}
