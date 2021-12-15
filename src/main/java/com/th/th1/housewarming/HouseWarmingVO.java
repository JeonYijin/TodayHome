package com.th.th1.housewarming;

import java.sql.Timestamp;
import java.util.List;

import lombok.Data;

@Data
public class HouseWarmingVO {

	/** [필수정보입력part START] */
	private String house_kind; // 주거형태
	private String house_space; // 평수(단층으로 한정하기로 했음)
	private String house_rooms; // 방 개수
	private String family_kind; // 가족형태
	private String working_area; // 작업분야
	
	private String total_budget; // 예산 (maybe, 소숫점 자리까지 입력하면 반올림요청 alert ON)
	/** [필수정보입력part END] */
	
	private String arrangement; // 정렬 방법
	
	private Integer house_num; // 집들이 글번호
	private Integer house_hits; // 조회수
	private Integer house_zoayo; // 좋아요수
	private Integer house_scrap; // 스크랩수 <--- 이건 일단 나중에 넣기로 함
	private Timestamp regDate; // 작성일
	
	private Integer style_category; // 관리자가 글 게재 전 심사 후 알맞는 카테고리에 배정
	
	private String styleString; // 숫자->한글화
	
	private String house_writer; // 글쓴이
	private String house_userId; // 글쓴이 아이디
	private String house_title; // 글제목
	private String house_contents; // 글내용
	private String house_thumbnail; // 썸네일
	private String house_comments; // 댓글 갯수
	
	private List<House_ScrapVO> scraps; //스크랩된 집들이 게시물
	
}
