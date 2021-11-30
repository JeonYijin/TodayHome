package com.th.th1.questions;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QuestionsService {

	@Autowired
	private QuestionsDAO questionsDAO;
	
	/** 질문과답변 selectOne */
	public QuestionsVO getQuestionOne(QuestionsVO questionsVO) throws Exception{
		return questionsDAO.getQuestionOne(questionsVO);
	}
	
	/* 질문과답변 list */ 
	public List<QuestionsVO> getQuestionsList() throws Exception{
		return questionsDAO.getQuestionsList();
	}
	
	/* 질문과답변 질문글 insert */ 
	public int setQuestionInsert(QuestionsVO questionsVO) throws Exception {
		return questionsDAO.setQuestionInsert(questionsVO);
	}
	
	/** 질문과답변 modify */
	public int setQuestionUpdate(QuestionsVO questionsVO) throws Exception {
		return questionsDAO.setQuestionUpdate(questionsVO);
	}
	
	/** 질문과답변 delete */
	public int setQuestionDelete(QuestionsVO questionsVO) throws Exception {
		return questionsDAO.setQuestionDelete(questionsVO);
	}
}
