package com.th.th1.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;

	@GetMapping("list")
	public ModelAndView noticeList()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<NoticeVO> ar = noticeService.noticeList();
		
		mv.setViewName("notice/list");
		mv.addObject("noticeVO", ar);
		return mv;
		
	}
	
	@GetMapping("select")
	public ModelAndView noticeSelect(NoticeVO noticeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		noticeVO = noticeService.noticeSelect(noticeVO);
		
		mv.setViewName("notice/select");
		mv.addObject("noticeVO", noticeVO);
		
		return mv;
		
	}
	
	@GetMapping("insert")
	public String noticeInsert(NoticeVO noticeVO)throws Exception{
		
		return "notice/insert";
		
	}
	
	@PostMapping("insert")
	public ModelAndView noticeInsert(NoticeVO noticeVO, ModelAndView mv)throws Exception{
		mv = new ModelAndView();
		int result = noticeService.noticeInsert(noticeVO);
		mv.setViewName("redirect:../notice/list");
		return mv;
	}
	
	@GetMapping("delete")
	public ModelAndView noticeDelete(NoticeVO noticeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = noticeService.noticeDelete(noticeVO);
		mv.setViewName("redirect:../notice/list");
		return mv;
		
	}
	
	@GetMapping("update")
	public String noticeUpdate(NoticeVO noticeVO, Model model)throws Exception{
		noticeVO = noticeService.noticeSelect(noticeVO);
		model.addAttribute("notice", noticeVO);
		return "notice/update";
	}
	
	@PostMapping("update")
	public String noticeUpdate(NoticeVO noticeVO)throws Exception{
		int result = noticeService.noticeUpdate(noticeVO);
		System.out.println(result);
		return "redirect:./list";
	}
	
	@GetMapping("notice")
	public String getNotice() throws Exception {
		return "notice/notice";
	}
	
}
