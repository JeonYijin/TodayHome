package com.th.th1.housewarming;

import lombok.Data;

@Data
public class House_ZoayoVO { // 집들이-좋아요VO

	private Integer num; // pk
	private String zoayo_id; //좋아요 누른 아이디
	private Integer house_num; //집들이글 번호
}
