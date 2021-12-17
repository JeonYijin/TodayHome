package com.th.th1.housewarming.admin;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.th.th1.housewarming.HouseWarmingService;
import com.th.th1.housewarming.HouseWarmingVO;

@RequestMapping("/housewarming/admin/**")
@Controller
public class HouseAdminController { // 집들이 글게재 심사, 관리용 admin Controller
	
	@Autowired
	private HouseWarmingService houseService;
	
	//심사할 집들이글 리스트 페이지
	@GetMapping("screen_list")
	public ModelAndView getScreenHList(Principal principal) throws Exception {
		ModelAndView mav = new ModelAndView();		
		List<HouseWarmingVO> unofficial = houseService.getHListForScreening();
		
		if(principal != null) {
			mav.addObject("loginId", principal.getName());
		}
		
		mav.addObject("countBoard", houseService.getCountForScreening());
		mav.addObject("list", unofficial);
		mav.setViewName("housewarming/houseAdmin/houseAdmin_list");		
		
		return mav;
	}
	
	//심사할 집들이글 상세 페이지
	@GetMapping("screen_detail")
	public ModelAndView setScreenHDetail(HouseWarmingVO houseVO, Principal principal) throws Exception {
		ModelAndView mav = new ModelAndView();
		houseVO = houseService.getHDetailForScreening(houseVO);
		
		if(principal != null) {
			mav.addObject("loginId", principal.getName());
		}
		
		mav.setViewName("housewarming/houseAdmin/houseAdmin_detail");
		mav.addObject("houseVO", houseVO);
		
		return mav;
	}
	
	// 스타일 카테고리 심사 결과 등록
	@PostMapping("screen_detail")
	public String setScreenHDetail(int house_num, int style_category, HttpSession session) throws Exception {
		//서비스까지 보낸 후 --> if(style_category==-2){delete query 실행}
		
		Map<String, Integer> scResult = new HashMap<String, Integer>();
		
		scResult.put("house_num", house_num);
		scResult.put("style_category", style_category);
		
		int result = houseService.setScreenResult(scResult);
		
		//심사결과 message를 session에 담기
		if(result == 2) {
			session.setAttribute("screenResult", "게재 승인 완료");
		} else if(result == 1) {
			session.setAttribute("screenResult", "게재 거부 완료 ");
		} else {
			session.setAttribute("screenResult", "심사 실패");
		}
		
		return "redirect:/housewarming/admin/screen_list";
	}
	
	
}
