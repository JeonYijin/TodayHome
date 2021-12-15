package com.th.th1.questions;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
@SpringBootTest
class questionsDAOTest {

	@Autowired
	private QuestionsDAO questionsDAO;
	
//	@Test
	void setInsertTest() throws Exception {
		for(int i=0;i<100;i++) {
			QuestionsVO questionsVO = new QuestionsVO();
			questionsVO.setQuests_id("seo98765@naver.com");
			questionsVO.setQuests_nickname("seo98765");
			questionsVO.setQuests_title("title "+i+"번째");
			questionsVO.setQuests_contents("contents "+i+"번째");
			int result=questionsDAO.setQuestionInsert(questionsVO);
			
			if(i%10==0) {
				Thread.sleep(500);
			}
		}
	}

}
