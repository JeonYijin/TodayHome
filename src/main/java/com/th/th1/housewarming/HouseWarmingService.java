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
	
	 /* 커뮤니티 홈에서 접근할 때 쓸 집들이 list service */
	 public List<HouseWarmingVO> getHListForHome() throws Exception {
	    return houseDAO.getHListForHome();
	 };  
	
	
	// 글쓰기
	public int setHouseWarming(HouseWarmingVO houseVO, MultipartFile thumbnail) throws Exception {
		
		String realPath = servletContext.getRealPath("/resources/upload/housewarming/");		
		File file = new File(realPath);
		
		String fileName = fileManager.getUseServletContext(file, thumbnail);
		
		houseVO.setHouse_thumbnail(fileName);
	
		return houseDAO.setHouseWarming(houseVO);
	}
	
	// 글 갯수 가져오기
	public int getCountBoard(Map<String, Object> map) throws Exception {
		return houseDAO.getCountBoard(map);
	}
	
	// 글 리스트 가져오기
	public List<HouseWarmingVO> getHouseList(Map<String, Object> map) throws Exception {
		return houseDAO.getHouseList(map);
	}
	
	// 글 하나 가져오기
	public HouseWarmingVO getSelectOne(HouseWarmingVO houseVO) throws Exception {
		return houseDAO.getSelectOne(houseVO);
	}
	
	// 글 삭제하기
	public int setDeleteBoard(HouseWarmingVO houseVO) throws Exception {
		return houseDAO.setDeleteBoard(houseVO);
	}
	
	// 글 수정
	public int setUpdateBoard(HouseWarmingVO houseVO) throws Exception {
		return houseDAO.setUpdateBoard(houseVO);
	}
	
	//조회수 +1 증가
	public int setHitsUp(int house_num) throws Exception {
		return houseDAO.setHitsUp(house_num);
	}
	
	// -------------------------------------------------------------------------
	
	/** 집들이글 좋아요 Up 등록 */
	public int setZoayoInsert(House_ZoayoVO hzVO) throws Exception{
		int result=houseDAO.setZoayoInsert(hzVO);
		if(result==1) {
			int result2 = houseDAO.houseZoayoUp(hzVO.getHouse_num());
			result2 = houseDAO.getCountZoayo(hzVO);//카운트 가져오기
		}
		
		return result;
	}
	
	/** 집들이글 좋아요 Down 등록 */
	public int setZoayoDown(House_ZoayoVO hzVO) throws Exception {
		int result=houseDAO.setZoayoDelete(hzVO);
		if(result==1) {
			int result2 = houseDAO.houseZoayoDown(hzVO.getHouse_num());
			result2 = houseDAO.getCountZoayo(hzVO);//카운트 가져오기
		}
		return result;
	}
	
	/** 해당아이디로 해당글에 좋아요 눌렀는지 여부 판별 */
	public House_ZoayoVO getZoayoInfo(House_ZoayoVO hzVO) throws Exception {
		return houseDAO.getZoayoInfo(hzVO);
	}
	
	// -------------------------------------------------------------------------
	
	/** 집들이글 스크랩 Up 등록 */
	public int setScrapInsert(House_ScrapVO hsVO) throws Exception{
		int result=houseDAO.setScrapInsert(hsVO);
		if(result==1) {
			int result2 = houseDAO.houseScrapUp(hsVO.getHouse_num());
			result2 = houseDAO.getCountScrap(hsVO);//카운트 가져오기
		}
		
		return result;
	}
	
	/** 집들이글 스크랩 Down 등록 */
	public int setScrapDown(House_ScrapVO hsVO) throws Exception {
		int result=houseDAO.setScrapDelete(hsVO);
		if(result==1) {
			houseDAO.houseScrapDown(hsVO.getHouse_num());
			houseDAO.getCountScrap(hsVO);//카운트 가져오기
		}
		return result;
	}
	
	/** 해당아이디로 해당글에 스크랩 눌렀는지 여부 판별 */
	public House_ScrapVO getScrapInfo(House_ScrapVO hsVO) throws Exception {
		return houseDAO.getScrapInfo(hsVO);
	}
	
	/** 한 아이디에 종속된 Scrap List */
	public List<House_ScrapVO> getScraps(House_ScrapVO hsVO) throws Exception {
		return houseDAO.getScraps(hsVO);
	}
	
	// -------------------------------------------------------------------------
	

	
	
	
	// 관리자용 -------------------------------------------------------------------------
	
	//style_category < -1인 집들이글 List(심사 후 알맞은 스타일 배정 받고 공식 게재)
	public List<HouseWarmingVO> getHListForScreening() throws Exception {
		return houseDAO.getHListForScreening();
	};
	
	//검사할 집들이글 count
	public int getCountForScreening() throws Exception {
		return houseDAO.getCountForScreening();
	};
	
	//검사할 집들이글 getSelectOne
	public HouseWarmingVO getHDetailForScreening(HouseWarmingVO houseVO) throws Exception {
		return houseDAO.getHDetailForScreening(houseVO);
	}
	
	//검사 결과처리
	public int setScreenResult(Map<String, Integer> scResult) throws Exception {
		int result = 0;		
		
		if(scResult.get("style_category") == -2) {
			//게재거절&삭제
			result = houseDAO.setScreenResult_refuse(scResult); //게재거부 시 1 리턴
		} else { 
			//게재승인&스타일부여
			result = houseDAO.setScreenResult_approve(scResult);
			result = result+1; //게재승인 시 2 리턴
		}
		
		return result;
	}
	
}
