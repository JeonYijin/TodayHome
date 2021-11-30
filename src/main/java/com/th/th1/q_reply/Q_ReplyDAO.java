package com.th.th1.q_reply;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.th.th1.questions.QuestionsVO;

@Mapper
public interface Q_ReplyDAO {
	
	
	/** 댓글 쓰기 */
	public Integer q_reply_write(Q_ReplyVO q_ReplyVO) throws Exception;
	
	/** 모댓글일경우 rnum, ref 일치하게 함 */
	public Integer q_reply_check(Q_ReplyVO q_ReplyVO) throws Exception;
	
	/** 모댓글이 삭제된 댓글일때 그에 딸린 대댓글들이 모두삭제되면 테이블에서 완전히 삭제 */
	public Integer q_reply_delete_all(Q_ReplyVO q_ReplyVO) throws Exception;
	
	/** 대댓글 쓰기 */
	public Integer q_rereply_write(Q_ReplyVO q_ReplyVO) throws Exception;
	
	/** 댓글 리스트 가져오기 */
	public ArrayList<Q_ReplyVO> q_replyList(Q_ReplyVO q_ReplyVO) throws Exception;
	
	/** rnum 가장 큰 값 가져오기 */
	public Integer q_reply_max_rnum() throws Exception;
	
	/** 모댓글의 대댓글 수를 카운트 */
	public Integer q_count_rereply(Q_ReplyVO q_ReplyVO) throws Exception;
	
	/** 대댓글수를 카운트 */
	public Integer q_count_rereply_fromrereply(Q_ReplyVO q_ReplyVO) throws Exception;
	
	/** 모댓글 삭제 - 대댓글 없음 */
	public Integer q_reply_delete(Q_ReplyVO q_ReplyVO) throws Exception;
	
	/** 모댓글 삭제 - 대댓글 있음 */
	public Integer q_reply_not_delete(Q_ReplyVO q_ReplyVO) throws Exception;

	
	
	/** ====[related to Questions 테이블]==== */
	
	/** Questions에 댓글수 증가 */
	public Integer questions_reply_up(QuestionsVO questionsVO) throws Exception;
	
	/** Questions에 댓글수 감소 */
	public Integer questions_reply_down(QuestionsVO questionsVO) throws Exception;

	/** 댓글 추가/삭제시 댓글 갯수 가져오기 */
	public QuestionsVO questions_reply_count(QuestionsVO questionsVO) throws Exception;
	
	
}