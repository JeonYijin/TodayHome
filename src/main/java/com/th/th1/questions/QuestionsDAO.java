package com.th.th1.questions;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface QuestionsDAO {

	public int setQuestionInsert(QuestionsVO questionsVO) throws Exception;
}
