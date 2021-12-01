package com.th.th1.comment;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
@Mapper
public interface QCommentDAO {
	
    // 댓글 개수
    public int commentCount(int qnum) throws Exception;
 
    // 댓글 목록
    public List<QCommentVO> commentList(int qnum) throws Exception;
 
    // 댓글 작성
    public int commentInsert(QCommentVO comment) throws Exception;
 
    // 댓글 삭제
    public int commentDelete(int cnum) throws Exception;

}
