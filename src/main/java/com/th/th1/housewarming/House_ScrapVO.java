package com.th.th1.housewarming;

import lombok.Data;

@Data
public class House_ScrapVO { //집들이-스크랩VO

	private Integer num; // pk
	private String scrap_id; //좋아요 누른 아이디
	private Integer house_num; //집들이글 번호
}
