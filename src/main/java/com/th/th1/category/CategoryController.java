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
	public ModelAndView getSelectList(ProductVO productVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ProductVO> ar = categoryService.getSelectList(productVO);
		System.out.println("size :"+ ar.size());
		Long count = categoryService.getSelectCount(productVO);
		String categoryN = categoryService.getSelectCategoryName(productVO);
		mv.addObject("categoryN", categoryN);
		mv.addObject("count", count);
		mv.addObject("products", ar);
		mv.setViewName("store/categoryList");
		
		return mv;
	}
	
	
	@GetMapping("page")
	public ModelAndView getSelectPage(ProductVO productVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		productVO = categoryService.getSelectPage(productVO);
		String categoryN = categoryService.getSelectCategoryName(productVO);
		
		mv.addObject("categoryN", categoryN);
		mv.addObject("product", productVO);
		mv.setViewName("store/productPage");
		
		return mv;
	}
	
	@GetMapping("best")
	public ModelAndView getSelectList1(ProductVO productVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ProductVO> ar1 = categoryService.getSelectList1(productVO);
		System.out.println("size :"+ ar1.size());
		Long count = categoryService.getSelectCount(productVO);
		String categoryN = categoryService.getSelectCategoryName(productVO);
		mv.addObject("categoryN", categoryN);
		mv.addObject("products", ar1);
		mv.setViewName("store/best");
		
		return mv;
	}
	
	@GetMapping("bestbest")
	public ModelAndView getSelectList2(ProductVO productVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ProductVO> ar1 = categoryService.getSelectList1(productVO);
		System.out.println("size :"+ ar1.size());
		Long count = categoryService.getSelectCount(productVO);
		String categoryN = categoryService.getSelectCategoryName(productVO);
		mv.addObject("categoryN", categoryN);
		mv.addObject("products", ar1);
		mv.setViewName("store/bestbest");
		
		return mv;
	}

}
