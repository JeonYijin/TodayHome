package com.th.th1.housewarming;

import java.security.Principal;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/housewarming/**")
public class HouseWarmingController { /** [집들이 게시판 Controller] */

	@Autowired
	private HouseWarmingService houseService;	
	
	//전체목록
	@GetMapping("/")
	public ModelAndView getList(@RequestParam(value="arrangement", defaultValue="최신순") String arrangement,
								@RequestParam(value="house_kind", defaultValue="") String house_kind,
								@RequestParam(value="house_space", defaultValue="") String house_space,
								@RequestParam(value="total_budget", defaultValue="") String total_budget,
								@RequestParam(value="family_kind", defaultValue="") String family_kind,
								@RequestParam(value="style_category", defaultValue="") String style_category,
								@RequestParam(value="working_area", defaultValue="") String working_area,
								Principal principal) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("arrangement", arrangement);
		
		if(house_kind != "") {
			map.put("house_kind", house_kind);
		}
		if(house_space != "") {
			map.put("house_space", house_space);
		}
		if(family_kind != "") {
			map.put("family_kind", family_kind);
		}
		if(total_budget != "") {
			map.put("total_budget", total_budget);
		}
		if(working_area != "") {
			map.put("working_area", working_area);
		}
		if(style_category != "") {
			map.put("style_category", style_category);
		}
		if(working_area != "") {
			map.put("working_area", working_area);
		}
		
		List<HouseWarmingVO> list = houseService.getHouseList(map);
				
		
		//style_category -> 한글화 작업
		list = this.styleToKorean(list);		
				
		House_ScrapVO hsVO=null;
		List<House_ScrapVO> scraps=null;
		if(principal == null) {
		} else if(principal != null) {
			System.out.println("principal.getName() = "+principal.getName());
			hsVO = new House_ScrapVO();
			hsVO.setScrap_id(principal.getName()); 
			
			scraps = houseService.getScraps(hsVO);

			if(scraps != null) {				
				//scrap된 게시물
				for(int t=0;t<scraps.size();t++) {
					for(int y=0;y<list.size();y++) {
						int list_num=list.get(y).getHouse_num(); //전체리스트
						int scraps_num=scraps.get(t).getHouse_num(); //로그인한 아이디로 House_Scrap DB 조회
						if(list_num==scraps_num) {
							list.get(y).setScrap_id(principal.getName());
						}
					}
				}
			}
			
			mav.addObject("scraps", scraps);
		}
		
		
		mav.setViewName("housewarming/house_list");
		mav.addObject("countBoard", houseService.getCountBoard(map));
		mav.addObject("list", list);
		
		//security에서 로그인 아이디 받아오기
		if(principal != null) {
			mav.addObject("loginId", principal.getName());
		}
		
		
		return mav;		
	}
	
	//글하나 상세
	@GetMapping("detail")
	public ModelAndView getSelectOne(HouseWarmingVO houseVO, String loginId) throws Exception {
		ModelAndView mav = new ModelAndView();
		houseVO = houseService.getSelectOne(houseVO);
		
		if(houseVO.getHouse_title() != null) { // 조회수 +1 증가
			houseService.setHitsUp(houseVO.getHouse_num());
		}
		
		List<HouseWarmingVO> list = new ArrayList<HouseWarmingVO>();
		list.add(houseVO);
		
		//style_category -> 한글화 작업
		list = this.styleToKorean(list);
		
		// 좋아요 관리 -----------------------------------------
		House_ZoayoVO hzVO = null;
		if(loginId == null) {
			System.out.println("로그인 안해도 볼 수 있어~");
		} else if(loginId != null) {
			hzVO = new House_ZoayoVO();
			hzVO.setHouse_num(houseVO.getHouse_num());
			hzVO.setZoayo_id(loginId);
		
			hzVO = houseService.getZoayoInfo(hzVO);
		}
		
		if(hzVO == null) {
			mav.addObject("zoayo", null); //zoayo=0일 때, 비어있는 하트
		} else if(hzVO != null){
			mav.addObject("zoayo", 1); //zoayo=1일 때, 차있는 하트
		}
		
		// 스크랩 관리 -------------------------------------------
		House_ScrapVO hsVO = null;
		if(loginId == null) {
			System.out.println("로그인 안해도 볼 수 있다~~!");
		} else if(loginId != null) {
			hsVO = new House_ScrapVO();
			hsVO.setHouse_num(houseVO.getHouse_num());
			hsVO.setScrap_id(loginId);
			
			hsVO = houseService.getScrapInfo(hsVO);
			System.out.println(hsVO);
		}		
		
		if(hsVO == null) {
			mav.addObject("scrap", null);
		} else if(hsVO != null) {
			mav.addObject("scrap", 1);
		}
		
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
	
	// 좋아요 up ajax
	@ResponseBody
	@PostMapping("zoayoUp")
	public int setZoayoInsert(House_ZoayoVO hzVO) throws Exception {
		return houseService.setZoayoInsert(hzVO);
	}
	
	// 좋아요 down ajax
	@ResponseBody
	@PostMapping("zoayoDown")
	public int setZoayoDelete(House_ZoayoVO hzVO) throws Exception {
		return houseService.setZoayoDown(hzVO);
	}
	
	// ------------------------------------------------------------------
	
	// 스크랩 up ajax
	@ResponseBody
	@PostMapping("scrapUp")
	public int setScrapInsert(House_ScrapVO hsVO) throws Exception {
		return houseService.setScrapInsert(hsVO);
	}
	
	// 스크랩 down ajax
	@ResponseBody
	@PostMapping("scrapDown")
	public int setScrapDelete(House_ScrapVO hsVO) throws Exception {
		return houseService.setScrapDown(hsVO);
	}
}
