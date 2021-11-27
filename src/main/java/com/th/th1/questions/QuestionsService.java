package com.th.th1.questions;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QuestionsService {

	@Autowired
	private QuestionsDAO questionsDAO;
	
	/** 질문과답변 상세페이지 */
	public QuestionsVO getQuestionOne(QuestionsVO questionsVO) throws Exception{
		return questionsDAO.getQuestionOne(questionsVO);
	}
	
	/* 질문과답변 List 가져오기 */ 
	public List<QuestionsVO> getQuestionsList() throws Exception{
		return questionsDAO.getQuestionsList();
	}
	
	/* 질문과답변 질문글 upload */ 
	public int setQuestionInsert(QuestionsVO questionsVO) throws Exception {
		return questionsDAO.setQuestionInsert(questionsVO);
	}
	
}
