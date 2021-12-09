package com.th.th1.housewarming;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/housewarming/**")
public class HouseWarmingController { /** [집들이 게시판 Controller] */

	@Autowired
	private HouseWarmingService houseService;	
	
	//전체목록
	@GetMapping("/")
	public ModelAndView getList(@RequestParam(value="house_kind", defaultValue="") String house_kind,
								@RequestParam(value="house_space", defaultValue="") String house_space,
								@RequestParam(value="total_budget", defaultValue="") String total_budget,
								@RequestParam(value="family_kind", defaultValue="") String family_kind,
								@RequestParam(value="style_category", defaultValue="") String style_category,
								@RequestParam(value="working_area", defaultValue="") String working_area) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(house_kind != "") {
			map.put("house_kind", house_kind);
		}
		if(house_space != "") {
			map.put("house_space", house_space);
		}
		if(family_kind != "") {
			map.put("family_kind", family_kind);
		}
		if(working_area != "") {
			map.put("working_area", working_area);
		}
		if(style_category != "") {
			map.put("style_category", style_category);
		}		
		
		List<HouseWarmingVO> list = houseService.getHouseList(map);		
		
		//style_category -> 한글화 작업
		list = this.styleToKorean(list);
				
		ModelAndView mav = new ModelAndView();
		mav.setViewName("housewarming/house_list");
		mav.addObject("countBoard", houseService.getCountBoard(style_category));
		mav.addObject("list", list);
		
		return mav;		
	}
	
	//글하나 상세
	@GetMapping("detail")
	public ModelAndView getSelectOne(HouseWarmingVO houseVO) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		houseVO = houseService.getSelectOne(houseVO);
		
		if(houseVO.getHouse_title() != null) { // 조회수 +1 증가
			houseService.setHitsUp(houseVO.getHouse_num());
		}
		
		List<HouseWarmingVO> list = new ArrayList<HouseWarmingVO>();
		list.add(houseVO);
		
		//style_category -> 한글화 작업
		list = this.styleToKorean(list);
		System.out.println("list.get(0) : "+list.get(0).getStyleString());
		
		mav.setViewName("housewarming/house_detail");
		mav.addObject("houseVO", list.get(0));
		
		return mav;
	}
	
	
	//입력폼
	@GetMapping("write")
	public String setWrite() throws Exception {
		return "housewarming/house_write";
	}
	
	
	//글등록
	@PostMapping("write")
	public String setWrite(HouseWarmingVO houseVO, MultipartFile thumbnail) throws Exception {
		
		int result = houseService.setHouseWarming(houseVO, thumbnail);
		String resultPath = "./";
		if(result==1) {
			resultPath="redirect:/housewarming";
		}
		
		return resultPath;
	}
	
	//글삭제
	@PostMapping("delete")
	public String setDelete(HouseWarmingVO houseVO) throws Exception {
		int result = houseService.setDeleteBoard(houseVO);
		String resultPath = "./";
		if(result==1) {
			resultPath="redirect:/housewarming";
		}
		
		return resultPath;
	}
	
	
	//글수정 폼
	@GetMapping("modify")
	public ModelAndView setUpdateBoard(@RequestParam int house_num, @RequestParam String house_writer) throws Exception {
		ModelAndView mav = new ModelAndView();
		HouseWarmingVO houseVO = new HouseWarmingVO();
		houseVO.setHouse_num(house_num);
		houseVO.setHouse_writer(house_writer);
		
		houseVO = houseService.getSelectOne(houseVO);
		
		mav.setViewName("housewarming/house_modify");
		mav.addObject("houseVO", houseVO);
		
		return mav;				
	}
	
	//글수정
	@PostMapping("modify")
	public String setUpdateBoard(HouseWarmingVO houseVO) throws Exception {
		int result = houseService.setUpdateBoard(houseVO);
		
		String resultPath="./";
		if(result>0) {
			resultPath="redirect:/housewarming";
		}
		
		return resultPath;
	}
	

	
	//style_category -> 한글화 작업 메서드
	public List<HouseWarmingVO> styleToKorean(List<HouseWarmingVO> list) throws Exception {
		
		String keyword="";
		
		for(int i=0;i<list.size();i++) {			
			switch (list.get(i).getStyle_category().toString()) {
			case "0":
				keyword = "모던";
				break;
			case "1":
				keyword = "미니멀&심플";
				break;
			case "2":
				keyword = "내추럴";
				break;
			case "3":
				keyword = "북유럽";
				break;
			case "4":
				keyword = "빈티지&레트로";
				break;
			case "5":
				keyword = "클래식&앤틱";
				break;
			case "6":
				keyword = "프렌치&프로방스";
				break;
			case "7":
				keyword = "러블리&로맨틱";
				break;
			case "8":
				keyword = "인더스트리얼";
				break;
			case "9":
				keyword = "한국&아시아";
				break;
			case "10":
				keyword = "유니크&믹스매치";
				break;
			default:
				keyword = "";
		}
			
			list.get(i).setStyleString(keyword);
		}
		
		return list;
	}
	
		
}
