package com.th.th1.home;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.th.th1.category.CategoryService;
import com.th.th1.category.ProductVO;
import com.th.th1.housewarming.HouseWarmingService;
import com.th.th1.housewarming.HouseWarmingVO;
import com.th.th1.picture.PictureService;
import com.th.th1.picture.PictureVO;


@Controller
public class HomeController {


	@Autowired
	private PictureService pictureService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private HouseWarmingService houseService;
	
	
//	@GetMapping("/")
//	public String getIndex() throws Exception{
//		return "home";
//	}
	
	@GetMapping("/")

	public ModelAndView getHome(ProductVO productVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<PictureVO> topPic = pictureService.getTopPic();
		List<ProductVO> product = categoryService.getSelectList1(productVO);
		List<HouseWarmingVO> house = houseService.getHListForHome();
		
		mv.addObject("house", house);
		System.out.println("house"+house.size());
		mv.addObject("product", product);
		System.out.println("product가져오기:" + product.size());
		mv.addObject("topPic", topPic);
		mv.setViewName("home");
		
		return mv;
	}
	
}


