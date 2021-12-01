package com.th.th1.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QCommentService {

	@Autowired
	private QCommentDAO commentDAO;
	
	// 댓글 개수
    public int commentCount(int qnum) throws Exception{
    	return commentDAO.commentCount(qnum);
    };
 
    // 댓글 목록
    public List<QCommentVO> commentList(int qnum) throws Exception{
    	return commentDAO.commentList(qnum);
    };
 
    // 댓글 작성
    public int commentInsert(QCommentVO comment) throws Exception{
    	return commentDAO.commentInsert(comment);
    };

    // 댓글 삭제
    public int commentDelete(int cnum) throws Exception{
    	return commentDAO.commentDelete(cnum);
    };
}
