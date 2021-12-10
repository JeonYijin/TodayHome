package com.th.th1.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.th.th1.housewarming.HouseWarmingDAO;

@Service
public class HCommentService {

	@Autowired
	private HCommentDAO commentDAO;
	
	@Autowired
	private HouseWarmingDAO houseDAO;
	
	//댓글 갯수
	public int commentCount(int hnum) throws Exception {
		return commentDAO.commentCount(hnum);
	}
	
    // 댓글 목록
    public List<HCommentVO> commentList(int hnum) throws Exception{
    	return commentDAO.commentList(hnum);
    }
 
    // 댓글 작성
    public int commentInsert(HCommentVO comment) throws Exception{
    	int result = houseDAO.plusReplyCount(comment.getHnum());
    	System.out.println("댓글갯수 hnum은 잘 들어갔니?:"+comment.getHnum());
    	System.out.println("댓글갯수 잘 들어갔니?:"+result);
    	result = commentDAO.commentInsert(comment);
    	return result;
    }

    // 댓글 삭제
    public int commentDelete(int cnum) throws Exception{
    	int result = houseDAO.minusReplyCount(cnum);
    	result = commentDAO.commentDelete(cnum);
    	return result;
    }

}
