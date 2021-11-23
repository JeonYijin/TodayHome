package com.th.th1.questions;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller 
@RequestMapping("/questions/**")
public class QuestionsController {

	@Autowired
	private QuestionsService questionsService;
	
	
	/* [질문과 답변 리스트 조회] */
	@GetMapping("/")
	public ModelAndView getQuestsList() throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("questions/questions_list");
		
		return mav;		
	}
	
	/* [질문과 답변 새 질문 Insert] */
	@GetMapping("new")
	public ModelAndView setQuest(QuestionsVO questionsVO) throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("questions/new");
		
		return mav;
	}
	
}
