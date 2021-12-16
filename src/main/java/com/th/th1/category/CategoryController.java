package com.th.th1.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.th.th1.util.Pager;

@Controller
@RequestMapping("/store/**")
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	
	@GetMapping("category")
	public ModelAndView getSelectList(ProductVO productVO, Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ProductVO> ar = categoryService.getSelectList(productVO, pager);
		Long count = categoryService.getSelectCount(productVO);
		String categoryN = categoryService.getSelectCategoryName(productVO);
		
	
		mv.addObject("categoryN", categoryN);
		mv.addObject("count", count);
		mv.addObject("products", ar);
		mv.addObject("pager", pager);
		System.out.println("pager가 있니?:"+pager);
		mv.setViewName("store/categoryList");
		
		return mv;
	}
	
	
	@GetMapping("page")
	public ModelAndView getSelectPage(ProductVO productVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		productVO = categoryService.getSelectPage(productVO);
		String categoryN = categoryService.getSelectCategoryName(productVO);
		
		System.out.println("사진:" +productVO.getPrFiles().size());
		System.out.println(productVO.getPrFiles().get(0).getFileName());
		
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
	

}
