package com.th.th1.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/store/category/**")
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	
	@GetMapping("/")
	public ModelAndView getSelectList(PageVO pageVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<PageVO> ar = categoryService.getSelectList(pageVO);
		mv.addObject("pages", ar);
		mv.setViewName("store/categoryList");
		
		return mv;
	}
	
	
	@GetMapping("page")
	public ModelAndView getSelectPage(PageVO pageVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		pageVO = categoryService.getSelectPage(pageVO);
		
		mv.addObject("pageVO", pageVO);
		mv.setViewName("");
		
		return mv;
	}

}
