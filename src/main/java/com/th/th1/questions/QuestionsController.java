package com.th.th1.questions;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.th.th1.member.MemberService;
import com.th.th1.q_reply.Q_ReplyService;
import com.th.th1.q_reply.Q_ReplyVO;

import net.sf.json.JSONArray;






@Controller 
@RequestMapping("/questions/**")
public class QuestionsController {

	@Autowired
	private QuestionsService questionsService;
	
	
	/* [질문과답변 전체리스트 조회] */
	@GetMapping("/")
	public ModelAndView getList() throws Exception {
		ModelAndView mav = new ModelAndView();
		
		List<QuestionsVO> list = questionsService.getQuestionsList();
		
		mav.addObject("list", list);
		mav.setViewName("questions/questions_list");
		
		return mav;		
	}
	
	
	/* [질문과답변 글 하나만 가져오기] */
	@GetMapping("selectOne")
	public ModelAndView getSelectOne(QuestionsVO questionsVO) throws Exception {
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
	@ResponseBody
	public ModelAndView setQuest(QuestionsVO questionsVO, @RequestParam String hash_arr) throws Exception {
		System.out.println("건너온 id : "+questionsVO.getQuests_id());
		System.out.println("건너온 title : "+questionsVO.getQuests_title());
		System.out.println("건너온 contents : "+questionsVO.getQuests_contents());		
		System.out.println("건너온 hash_arr : "+hash_arr);
		String[] arr = hash_arr.split("\",");
		
		ArrayList<String> hashArr = new ArrayList<String>();
		for(int i=0;i<arr.length-1;i++) {
			String tag=null;
			if(i==0) {
				tag = arr[i].substring(2);
			} else {
				tag = arr[i].substring(1);
			}
			hashArr.add(tag);
			System.out.println(hashArr.get(i));
		}
		
		ModelAndView mav = new ModelAndView();
		int result = questionsService.setQuestionInsert(questionsVO, hashArr);
		mav.setViewName("redirect:/");
//		System.out.println("result : "+result);
		
		return mav;
	}
	
	
	/** [질문과답변 수정하기] */
	@GetMapping("update")
	public ModelAndView setUpdate(@RequestParam Integer quests_num, @RequestParam String quests_id) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		QuestionsVO questionsVO = new QuestionsVO();
		questionsVO.setQuests_num(quests_num);
		
		questionsVO = questionsService.getQuestionOne(questionsVO);
		mav.addObject("vo", questionsVO);
		mav.setViewName("questions/questions_update");
		
		return mav;
	}
	
	@PostMapping("update")
	public ModelAndView setUpdate(QuestionsVO questionsVO) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		int result = questionsService.setQuestionUpdate(questionsVO);
		System.out.println("리절트~:"+result);
		if(result == 1) {
			mav.setViewName("redirect:/");
		} else {
			mav.setViewName("questions/questions_update?quests_num="+questionsVO.getQuests_num());
		}
		
		return mav;
	}
	
	/** [질문과답변 삭제하기] */
	@GetMapping("delete")
	public String setDelete(QuestionsVO questionsVO) throws Exception {
		int result = questionsService.setQuestionDelete(questionsVO);
		String jsp = "";
		
		if(result==1) {
			jsp="redirect:/";
		} else {
			jsp="questions/questions_update?quests_num="+questionsVO.getQuests_num();
		}
		
		return jsp;
	}
	

}
