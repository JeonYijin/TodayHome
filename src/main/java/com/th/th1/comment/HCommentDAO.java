package com.th.th1.comment;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface HCommentDAO {
	
	// 댓글 갯수
	public int commentCount(int hnum) throws Exception;

    // 댓글 목록
    public List<HCommentVO> commentList(int hnum) throws Exception;
 
    // 댓글 작성
    public int commentInsert(HCommentVO comment) throws Exception;
 
    // 댓글 삭제
    public int commentDelete(int cnum) throws Exception;

    // 해당글의 댓글 갯수를 HouseWarming글에 insert
    public int setCountIntoHouse(int count, int cnum) throws Exception;	

}
