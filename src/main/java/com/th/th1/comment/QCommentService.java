package com.th.th1.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.th.th1.questions.QuestionsDAO;

@Service
public class QCommentService {

	@Autowired
	private QCommentDAO commentDAO;
	
	@Autowired
	private QuestionsDAO questionsDAO;
	
	// 댓글 개수
    public int commentCount(int qnum) throws Exception{
    	return commentDAO.commentCount(qnum);
    }
 
    // 댓글 목록
    public List<QCommentVO> commentList(int qnum) throws Exception{
    	return commentDAO.commentList(qnum);
    }
 
    // 댓글 작성
    public int commentInsert(QCommentVO comment) throws Exception{
    	int result = questionsDAO.plusReplyCount(comment.getQnum());
    	System.out.println("댓글갯수 qnum은 잘 들어갔니?:"+comment.getQnum());
    	System.out.println("댓글갯수 잘 들어갔니?:"+result);
    	result = commentDAO.commentInsert(comment);
    	return result;
    }

    // 댓글 삭제
    public int commentDelete(int cnum) throws Exception{
    	int result = questionsDAO.minusReplyCount(cnum);
    	result = commentDAO.commentDelete(cnum);
    	return result;
    }
    
    public int reCommentInsert(QCommentVO commentVO) throws Exception{
    	//1. 모댓글 조회
    	
    	return 1;
    }
 
}
