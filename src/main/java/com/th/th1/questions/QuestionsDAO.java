package com.th.th1.questions;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface QuestionsDAO {

	
	/** 질문과답변 상세페이지 */
	public QuestionsVO getQuestionOne(QuestionsVO questionsVO) throws Exception;
	
	/* 질문과답변 List 가져오기 */ 
	public List<QuestionsVO> getQuestionsList() throws Exception;
	
	/* 질문과답변 질문글 upload */ 
	public int setQuestionInsert(QuestionsVO questionsVO) throws Exception;
	
	
	
	
}
