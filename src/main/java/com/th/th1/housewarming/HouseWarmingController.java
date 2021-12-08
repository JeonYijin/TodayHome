package com.th.th1.housewarming;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/housewarming/**")
public class HouseWarmingController { /** [집들이 게시판 Controller] */

	@Autowired
	private HouseWarmingService houseService;
	
	@GetMapping("/")
	public ModelAndView getList() throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("housewarming/house_list");
		
		return mav;		
	}
	
	@GetMapping("write")
	public String setWrite() throws Exception {
		return "housewarming/house_write";
	}
	
	@PostMapping("write")
	public String setWrite(HouseWarmingVO houseVO) throws Exception {
		
		int result = houseService.setHouseWarming(houseVO);
		String resultPath = "./";
		if(result==1) {
			resultPath="redirect:/housewarming";
		}
		
		return resultPath;
	}
	
}
