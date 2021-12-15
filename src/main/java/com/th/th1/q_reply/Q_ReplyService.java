package com.th.th1.q_reply;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.th.th1.questions.QuestionsVO;

@Service
public class Q_ReplyService {
	
	@Autowired
	private Q_ReplyDAO q_ReplyDAO;
	
	// 댓글 작성
	public QuestionsVO questionsWriteReply(Q_ReplyVO replyVO) throws Exception {
		// Questions 테이블에 해당 게시물의 reply수를 +1 하기위한 Q_ReplyVO세팅
		QuestionsVO questionsVO = new QuestionsVO();
		questionsVO.setQuests_num(replyVO.getQnum());
		
		// 해당 게시물의 reply를 +1 한다.
		q_ReplyDAO.questions_reply_up(questionsVO);
		
		// 현재 q_reply 테이블의 가장 큰 rnum값을 가져온다.
		int ref = q_ReplyDAO.q_reply_max_rnum();
		
		// ref 세팅
		replyVO.setRef(ref+1);
		
		
		int result = q_ReplyDAO.q_reply_write(replyVO);
		
		int check =	q_ReplyDAO.q_reply_max_rnum();

		// ref를 현재 가장 큰 rnum 즉, 방금 넣은 데이터의 rnum값로 세팅함
		replyVO.setRef(check);
		
		// rnum과 ref가 다르면 ref를 rnum으로 없데이트
		int check_update = q_ReplyDAO.q_reply_check(replyVO);
		
		if (result == 1) {	// q_reply 테이블에 새로운 댓글 추가가 성공한다면,
			// 갱신된 댓글 갯수를 가져옴
			questionsVO = q_ReplyDAO.questions_reply_count(questionsVO);
		}
		
		return questionsVO;
	}
	
	// 대댓글 작성
	public QuestionsVO questionsWriteReReply(Q_ReplyVO replyVO) throws Exception {
		// questions 테이블에 해당 게시물의 reply수를 +1 하기위한 replyVO세팅
		QuestionsVO questionsVO = new QuestionsVO();
		questionsVO.setQuests_num(replyVO.getQnum());
		
		// 해당 게시물의 reply를 +1 한다.
		q_ReplyDAO.questions_reply_up(questionsVO);
		
		// q_reply 테이블에 추가(댓글 작성과 동일)
		int result = q_ReplyDAO.q_reply_write(replyVO);		
		
		if (result == 1) {	// q_reply 테이블에 새로운 댓글 추가가 성공한다면,
			// 갱신된 댓글 갯수를 가져옴
			questionsVO = q_ReplyDAO.questions_reply_count(questionsVO);
		}
		
		return questionsVO;
	}
	
	// 댓글 리스트
	public ArrayList<Q_ReplyVO> replyList(Q_ReplyVO replyVO) throws Exception {
		
		ArrayList<Q_ReplyVO> replyList = new ArrayList();
		
		replyList = q_ReplyDAO.q_replyList(replyVO);
		
		return replyList;
	}
	
	// 모댓글 삭제
	public QuestionsVO questionsDeleteReply(Q_ReplyVO replyVO) throws Exception {
		// questions 테이블에 해당 게시물의 reply수를 -1 하기위한 replyVO세팅
		QuestionsVO questionsVO = new QuestionsVO();
		questionsVO.setQuests_num(replyVO.getQnum());
		
		// ref가 reply의 rnum와 일치하는 댓글이 몇갠지 카운트. 모댓글에 딸린 대댓글이 몇갠지 카운트하기 위함		
		int count_rereply = q_ReplyDAO.q_count_rereply(replyVO);
		
		int result = 0;
		
		// 해당 게시물의 reply를 -1 한다.
		q_ReplyDAO.questions_reply_down(questionsVO);
		
		if(count_rereply==0) {	// 답글이 없을 때 - 그냥 삭제
			// q_reply 테이블에서 삭제
			result = q_ReplyDAO.q_reply_delete(replyVO);
			
		} else {				// 답글이 있을 때 - contents에 공백을 넣음 ("삭제된 게시물입니다" 라고 표기하기 위해)
			// q_reply 테이블에서 삭제하지 않고 contents에 공백을 넣음 
			result = q_ReplyDAO.q_reply_not_delete(replyVO);
			
		}
		
		if (result == 1) {	// q_reply 테이블에서 댓글삭제가 성공한다면,
			// 갱신된 댓글 갯수를 가져옴
			questionsVO = q_ReplyDAO.questions_reply_count(questionsVO);
		}
		
		return questionsVO;
	}
	
	// 대댓글 삭제
	public QuestionsVO pictureDeleteReReply(Q_ReplyVO replyVO) throws Exception {
		// questions 테이블에 해당 게시물의 reply수를 -1 하기위한 to세팅
		QuestionsVO questionsVO = new QuestionsVO();
		questionsVO.setQuests_num(replyVO.getQnum());
			
		// 해당 게시물의 reply를 -1 한다.
		q_ReplyDAO.questions_reply_down(questionsVO);
				
		// q_reply 테이블에서 삭제
		int result = q_ReplyDAO.q_reply_delete(replyVO);
		
		
		// ref가 일치하는 답글이 몇갠지 카운트 한다. 카운트가 없고 모댓글의 contents가 ""이면 모댓글을 삭제하기 위함.
		int count_rereply = q_ReplyDAO.q_count_rereply_fromrereply(replyVO);
		
		
		System.out.println("count_rereply = " + count_rereply);
		if(count_rereply == 0) {
			q_ReplyDAO.q_reply_delete_all(replyVO);
		}
		
		if (result == 1) {	// q_reply 테이블에서 댓글삭제가 성공한다면,
			// 갱신된 댓글 갯수를 가져옴
			questionsVO = q_ReplyDAO.questions_reply_count(questionsVO);
		}
		
		return questionsVO;
	}
	
	
	// 댓글 작성
	public QuestionsVO profile_pictureWriteReply(Q_ReplyVO replyVO) throws Exception {
		// questions 테이블에 해당 게시물의 reply수를 +1 하기위한 to세팅
		QuestionsVO questionsVO = new QuestionsVO();
		questionsVO.setQuests_num(replyVO.getQnum());
		
		// 해당 게시물의 reply를 +1 한다.
		q_ReplyDAO.questions_reply_up(questionsVO);
		
		// 현재 q_reply 테이블의 가장 큰 rnum값을 가져온다.
		int ref = q_ReplyDAO.q_reply_max_rnum();
		
		// ref 세팅
		replyVO.setRef(ref+1);
				
		
		int result = q_ReplyDAO.q_reply_write(replyVO);
				
		int check = q_ReplyDAO.q_reply_max_rnum();		
		
		// ref를 현재 가장 큰 rnum 즉, 방금 넣은 데이터의 rnum값으로 세팅함
		replyVO.setRef(check);
		
		// rnum과 ref가 다르면 ref를 rnum으로 없데이트
		//int check_update = q_ReplyDAO.q_reply_check(replyVO);
		
		
		if (result == 1) {	// q_reply 테이블에 새로운 댓글 추가가 성공한다면,
			// 갱신된 댓글 갯수를 가져옴
			questionsVO = q_ReplyDAO.questions_reply_count(questionsVO);
		}
		
		return questionsVO;
	}
}
