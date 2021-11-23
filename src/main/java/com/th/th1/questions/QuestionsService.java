package com.th.th1.questions;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QuestionsService {

	@Autowired
	private QuestionsDAO questionsDAO;
	
	public int setQuestionInsert(QuestionsVO questionsVO) throws Exception {
		return questionsDAO.setQuestionInsert(questionsVO);
	}
	
}
