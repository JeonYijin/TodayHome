package com.th.th1.housewarming;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class HouseWarmingVO {

	/** [필수정보입력part START] */
	private Integer house_kind; // 주거형태
	private Double house_space; // 평수(단층으로 한정하기로 했음)
	private Integer house_rooms; // 방 개수(0:원룸/1:1.5룸/2:투룸/.../5:5개 이상)
	private Integer house_years; // 준공연차
	private String house_region; // 지역
	private Integer family_kind; // 가족형태
	private Integer family_count; // 가족 구성원수
	private Integer working_area; // 작업분야
	private String worker; // 작업자
	private String working_period; // 작업기간
	
	private Integer total_budget; // 예산 (maybe, 소숫점 자리까지 입력하면 반올림요청 alert ON)
	/** [필수정보입력part END] */
	
	private Integer house_num; // 집들이 글번호
	private Integer house_hits; // 조회수
	private Integer house_zoayo; // 좋아요수
	private Integer house_scrap; // 스크랩수 <--- 이건 일단 나중에 넣기로 함
	private Timestamp regDate; // 작성일
	
	private String style_category; // 관리자가 글 게재 전 심사 후 알맞는 카테고리에 배정
	
	private String house_writer; // 글쓴이
	private String house_title; // 글제목
	private String house_contents; // 글내용
	private String house_thumbnail; // 썸네일
	private String house_comments; // 댓글 갯수
	
}
