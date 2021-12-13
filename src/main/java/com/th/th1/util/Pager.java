package com.th.th1.util;

import lombok.Data;

@Data
public class Pager {

	private String search;
	
	/*----------------------
	 * A. 한 페이지에 몇개 씩 조회
	 * : perPage = 10
	 * 
	 * B. 현재 페이지 번호
	 * : pn
	 * 
	 * 
	 * 1. 일정한 갯수 만큼 DB조회
	 * (pn-1)*perPage
	 * 
	 * 2. Page 번호 처리
	 * 1) 총글의 갯수 - DB에서 조회
	 * 2) 총페이지의 갯수 구하기
	 * 3) 총블럭의 갯수 구하기
	 * 4) pn으로 현재 블럭번호 구하기
	 * 5) curBlock을 이용해서 시작번호, 끝번호 구하기
	------------------------- */
	
	private Integer perPage; // 한 페이지에 출력할 갯수
	private Integer pn; // 페이지번호
	private Integer perBlock;
	private Integer startRow; // limit의 시작번호
	private Integer lastRow;
	private Long startNum;
	private Long lastNum;
	
	private boolean lastCheck;

	private String reply; //글 하나당 댓글갯수(답변을 기다리는 질문용)
	private Integer popularity; //인기순
	
	
	
	/* ----계산---- */
	public void makeNum(Long totalCount) {
		// 총 페이지의 갯수 구하기
		Long totalPage = totalCount/this.getPerPage();
		if(totalCount%this.getPerPage() != 0) {
			totalPage++;			
		}
		
		// 총블럭의 갯수 구하기
		Long perBlock = 5L;
		Long totalBlock = totalPage/perBlock;
		if(totalPage%perBlock != 0) {
			totalBlock++;
		}
		
		// pn으로 현재 블럭번호 구하기
		Long curBlock = this.getPn()/perBlock;
		if(this.getPn()%perBlock != 0) {
			curBlock++;
		}
		
		// curBlock을 이용해 시작번호, 끝번호 구하기
		startNum = (curBlock-1)*perBlock+1;
		lastNum = curBlock*perBlock;
		
		System.out.println("시작번호 : "+startNum);
		System.out.println("끝번호 : "+lastNum);
		
		if(curBlock == totalBlock) {
			lastNum = totalPage;
			lastCheck = true;
		} else {
			lastCheck = false;
		}
	}
	
	public void makeRow() {
		this.startRow = (this.getPn()-1) * this.getPerPage();
	}
	
	
	/* ----검증---- */
	public Integer getPerPage() {
		if(this.perPage==null || this.perPage==0) {
			this.perPage=10;
		}
		return perPage;
	}
	
	public Integer getPn() {
		if(this.pn==null || this.pn==0) {
			this.pn = 1;
		}
		
		return pn;
	}
	
	public Integer getPerBlock() {
		this.perBlock=5;
		return perBlock;
	}
	
	
}
