package com.th.th1.questions;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.th.th1.util.Pager;

@Repository
@Mapper
public interface QuestionsDAO {

	/** 질문과답변 상세페이지 */
	public QuestionsVO getQuestionOne(QuestionsVO questionsVO) throws Exception;
	
	/** 질문과답변 List 가져오기 */ 
	public List<QuestionsVO> getQuestionsList(Pager pager) throws Exception;
	
	/** 질문과답변 공지사항 가져오기 */
	public List<QuestionsVO> getNotice() throws Exception;	
	
	/* Questions 글 총갯수 가져오기 */
	public Long getTotalCount(Pager pager) throws Exception; 
	
	/** 질문과답변 질문글 insert */ 
	public int setQuestionInsert(QuestionsVO questionsVO) throws Exception;
	
	/** 질문과답변 hashtag insert */
	public int setHashtag(HashtagVO hashtagVO) throws Exception;

	/** 질문과답변 질문글 modify */
	public int setQuestionUpdate(QuestionsVO questionsVO) throws Exception;
	
	/** 질문과답변 질문글 delete */
	public int setQuestionDelete(QuestionsVO questionsVO) throws Exception;
	
	public List<HashtagVO> getHashtag(QuestionsVO questionsVO) throws Exception;
	
	/** 댓글수 +1 update*/
	public int plusReplyCount(int qnum) throws Exception;
	
	/** 댓글수 -1 update*/
	public int minusReplyCount(int qnum) throws Exception;
	
	/** 조회수 업데이트 */
	public int updateViewsCount(int qnum) throws Exception;
	
	/** 해시태그로 글 검색 */
	public List<QuestionsVO> selectFromHashtag(String hashtag) throws Exception;
	
}
