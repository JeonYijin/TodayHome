package com.th.th1.questions;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
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
	public int setQuestionInsert(QuestionsVO questionsVO, ArrayList<String> hashArr) throws Exception {
				
		int result = questionsDAO.setQuestionInsert(questionsVO);
		questionsVO = questionsDAO.getQuestionOne(questionsVO);
		int quests_num = questionsVO.getQuests_num();
		
		HashtagVO hashtagVO = new HashtagVO();
		for(int i=0;i<hashArr.size();i++) {
			hashtagVO.setQuests_num(quests_num);
			hashtagVO.setHashtag_name(hashArr.get(i));
			int result2 = questionsDAO.setHashtag(hashtagVO); //int와 String 넘기기
			if(result2 == 0) {
				System.out.println("hashtag insert 안되고 있음!..");
			}
		}
		
		return result;
		
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
