package com.th.th1.pr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




@Controller
@RequestMapping("/pr/**")
	public class PrController {
	
	@Autowired
	private PrService prService;

	@GetMapping("prlist")
	public ModelAndView prList()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<PrVO> ar = prService.prList();
		
		mv.setViewName("pr/prlist");
		mv.addObject("prVO", ar);
		return mv;
		
	}
	
	
	@GetMapping("prinsert")
	public String prInsert(PrVO prVO)throws Exception{
		
		return "pr/prinsert";
		
	}
	
	@PostMapping("prinsert")
	public ModelAndView prInsert(PrVO prVO, ModelAndView mv)throws Exception{
		mv = new ModelAndView();
		int result = prService.prInsert(prVO);
		mv.setViewName("redirect:../pr/prinsert");
		return mv;
	}
	
	
		@GetMapping("pr")
		public String getpr() throws Exception {
			return "pr/pr";
		}
	}


