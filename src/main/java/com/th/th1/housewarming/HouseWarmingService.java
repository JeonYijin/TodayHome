package com.th.th1.housewarming;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.th.th1.util.FileManager;

@Service
public class HouseWarmingService {

	@Autowired
	private HouseWarmingDAO houseDAO;	
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileManager fileManager;
	
	
	// 글쓰기
	public int setHouseWarming(HouseWarmingVO houseVO, MultipartFile thumbnail) throws Exception {
		
		String realPath = servletContext.getRealPath("/resources/upload/housewarming/");		
		File file = new File(realPath);
		
		String fileName = fileManager.getUseServletContext(file, thumbnail);
		
		houseVO.setHouse_thumbnail(fileName);
	
		return houseDAO.setHouseWarming(houseVO);
	}
	
	// 글 갯수 가져오기
	public int getCountBoard(String style_category) throws Exception {
		return houseDAO.getCountBoard(style_category);
	}
	
	// 글 리스트 가져오기
	public List<HouseWarmingVO> getHouseBoard(Map<String, Object> map) throws Exception {
		return houseDAO.getHouseBoard(map);
	}
	
	
	
	
	
	/**
	
	String keyword = "";
	
	String house_kindResult = "";
	String house_spaceResult = "";
	String total_budgetResult = "";
	String family_kindResult = "";
	String style_categoryResult = "";
	String working_areaResult = "";
	
	if(!house_kind.equals("")) {
		
		switch (house_kind) {
			case "0":
				keyword = "원룸&오피스텔";
				break;
			case "1":
				keyword = "아파트";
				break;
			case "2":
				keyword = "빌라&연립";
				break;
			case "3":
				keyword = "단독주택";
				break;
			case "4":
				keyword = "사무공간";
				break;
			case "5":
				keyword = "상업공간";
				break;
				
			case "6":
				keyword = "기타";
				break;	
				
			default:
				keyword = "";
		}
		
		house_kindResult = keyword;
	}
	
	
	if(!house_space.equals("")) {
		
		switch (house_space) {
		case "0":
			keyword = "1-9평";
			break;
		case "1":
			keyword = "10평대";
			break;
		case "2":
			keyword = "20평대";
			break;
		case "3":
			keyword = "30평대";
			break;
		case "4":
			keyword = "40평대";
			break;
		case "5":
			keyword = "50평대";
			break;
		case "6":
			keyword = "60평대";
			break;
		case "7":
			keyword = "70평 이상";
			break;
		default:
			keyword = "";
		}
	
		house_spaceResult = keyword;
	}
	
	if(!total_budget.equals("")) {
		
		switch (total_budget) {
		case "0":
			keyword = "1백만원 미만";
			break;
		case "1":
			keyword = "1백만원대";
			break;
		case "2":
			keyword = "2백만원대";
			break;
		case "3":
			keyword = "3만원대";
			break;
		case "4":
			keyword = "4백만원대";
			break;
		case "5":
			keyword = "5백만원대";
			break;
		case "6":
			keyword = "1000만원대";
			break;
		case "7":
			keyword = "2000만원 이상";
			break;
		default:
			keyword = "";
		}
	
		total_budgetResult = keyword;
	}


if(!style_category.equals("")) {
	
	switch (style_category) {
	case "0":
		keyword = "모던";
		break;
	case "1":
		keyword = "미니멀&소품";
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

		style_categoryResult = keyword;
	}

if(!working_area.equals("")) {
	
	switch (working_area) {
	case "0":
		keyword = "리모델링";
		break;
	case "1":
		keyword = "홈스타일링";
		break;
	case "2":
		keyword = "부분공사";
		break;
	case "3":
		keyword = "건축";
		break;
	
	default:
		keyword = "";
	}

		working_areaResult = keyword;
}

	Map<String, Object> map = new HashMap<String, Object>();
	map.put("house_kind", house_kindResult);
	map.put("house_space", house_spaceResult);
	map.put("total_budget", total_budgetResult);
	map.put("style_category", style_categoryResult);
	map.put("working_area", working_areaResult);
	
	*/
	
}
