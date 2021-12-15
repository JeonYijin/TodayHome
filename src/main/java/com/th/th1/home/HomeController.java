package com.th.th1.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.th.th1.picture.PictureService;
import com.th.th1.picture.PictureVO;

@Controller
public class HomeController {

	@Autowired
	private PictureService pictureService;
	
//	@GetMapping("/")
//	public String getIndex() throws Exception{
//		return "home";
//	}
	
	@GetMapping("/")

	public ModelAndView getHome() throws Exception{
		ModelAndView mv = new ModelAndView();
		List<PictureVO> topPic = pictureService.getTopPic();
		mv.addObject("topPic", topPic);
		mv.setViewName("home");
		
		return mv;
	}
	
}

