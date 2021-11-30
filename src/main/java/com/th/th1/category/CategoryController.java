package com.th.th1.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/store/**")
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	
	@GetMapping("category")
	public ModelAndView getSelectList(PageVO pageVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<PageVO> ar = categoryService.getSelectList(pageVO);
		Long count = categoryService.getSelectCount(pageVO);
		String categoryN = categoryService.getSelectCategoryName(pageVO);
		
		mv.addObject("categoryN", categoryN);
		mv.addObject("count", count);
		mv.addObject("pages", ar);
		mv.setViewName("store/categoryList");
		
		return mv;
	}
	
	
	@GetMapping("page")
	public ModelAndView getSelectPage(PageVO pageVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		pageVO = categoryService.getSelectPage(pageVO);
		String categoryN = categoryService.getSelectCategoryName(pageVO);
		
		mv.addObject("categoryN", categoryN);
		mv.addObject("pageVO", pageVO);
		mv.setViewName("store/productPage");
		
		return mv;
	}
	

}
