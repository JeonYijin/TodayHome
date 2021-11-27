package com.th.th1.questions;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller 
@RequestMapping("/questions/**")
public class QuestionsController {

	@Autowired
	private QuestionsService questionsService;
	
	
	/* [질문과답변 전체리스트 조회] */
	@GetMapping("/")
	public ModelAndView getQuestsList() throws Exception {
		ModelAndView mav = new ModelAndView();
		
		List<QuestionsVO> list = questionsService.getQuestionsList();
		
		mav.addObject("list", list);
		mav.setViewName("questions/questions_list");
		
		return mav;		
	}
	
	
	/* [질문과답변 글 하나만 가져오기] */
	@GetMapping("selectOne")
	public ModelAndView getQuestionOne(QuestionsVO questionsVO) throws Exception {
		ModelAndView mav = new ModelAndView();
		questionsVO = questionsService.getQuestionOne(questionsVO);
		
		mav.setViewName("questions/questions_one");
		mav.addObject("quest", questionsVO);
		
		return mav;
	}
	
	
	
	/* [질문과답변 새 질문 Insert Page 띄우기] */
	@GetMapping("new")
	public ModelAndView setQuest() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("questions/new2");
		
		return mav;
	}
	
	/* [질문과답변 새 질문 INSERT into DB] */
	@PostMapping("new")
	public ModelAndView setQuest(QuestionsVO questionsVO) throws Exception {
		System.out.println("건너온 id : "+questionsVO.getQuests_id());
		System.out.println("건너온 title : "+questionsVO.getQuests_title());
		System.out.println("건너온 contents : "+questionsVO.getQuests_contents());		
		
		ModelAndView mav = new ModelAndView();
		int result = questionsService.setQuestionInsert(questionsVO);
		mav.setViewName("redirect:/");
		System.out.println("result : "+result);
		
		return mav;
	}
	
}
