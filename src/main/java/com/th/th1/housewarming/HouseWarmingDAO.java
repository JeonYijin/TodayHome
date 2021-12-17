package com.th.th1.housewarming;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartFile;

@Mapper
public interface HouseWarmingDAO {

	// 글쓰기
	public int setHouseWarming(HouseWarmingVO houseVO) throws Exception;
	
	// 작성글 개수 가져오기
	public int getCountBoard(Map<String, Object> map) throws Exception;
	
	// 글 리스트 가져오기
	public List<HouseWarmingVO> getHouseList(Map<String, Object> map) throws Exception;
	
	// 글 하나 가져오기
	public HouseWarmingVO getSelectOne(HouseWarmingVO houseVO) throws Exception;
	
	// 글 삭제하기
	public int setDeleteBoard(HouseWarmingVO houseVO) throws Exception;
	
	// 글 수정
	public int setUpdateBoard(HouseWarmingVO houseVO) throws Exception;
	
	// 조회수 +1 증가
	public int setHitsUp(int house_num) throws Exception;
	
	/** 댓글수 +1 update*/
	public int plusReplyCount(int hnum) throws Exception;
	
	/** 댓글수 -1 update*/
	public int minusReplyCount(int hnum) throws Exception;
	
	// -------------------------------------------------------------------------
	
	/** House_Zoayo table Insert */
	public int setZoayoInsert(House_ZoayoVO hzVO) throws Exception;
	
	/** House_Zoayo table Delete */
	public int setZoayoDelete(House_ZoayoVO hzVO) throws Exception;
	
	/** HouseWarming table Zoayo UP */
	public int houseZoayoUp(int house_num) throws Exception;
	
	/** HouseWarming table Zoayo DOWN */
	public int houseZoayoDown(int house_num) throws Exception;
	
	/** 해당 아이디가 좋아요 눌렀는지 여부 확인 */
	public House_ZoayoVO getZoayoInfo(House_ZoayoVO hzVO) throws Exception;
	
	// -------------------------------------------------------------------------
	
	/** House_Scrap table Insert */
	public int setScrapInsert(House_ScrapVO hsVO) throws Exception;
	
	/** House_Scrap table Delete */
	public int setScrapDelete(House_ScrapVO hsVO) throws Exception;
	
	/** HouseWarming table Scrap UP */
	public int houseScrapUp(int house_num) throws Exception;
	
	/** HouseWarming table Scrap DOWN */
	public int houseScrapDown(int house_num) throws Exception;
	
	/** 해당 아이디가 좋아요 눌렀는지 여부 확인 */
	public House_ScrapVO getScrapInfo(House_ScrapVO hsVO) throws Exception;
	
	/** 한 아이디에 종속된 Scrap List */
	public List<House_ScrapVO> getScraps(House_ScrapVO hsVO) throws Exception;
	
	// -------------------------------------------------------------------------
	
	
	/* 커뮤니티 홈에서 접근할 때 쓸 query */
	public List<HouseWarmingVO> getHListForHome(String house_writer) throws Exception;
	
	// -------------------------------------------------------------------------
	
	// 스크랩 갯수 가져오기 (ajax용)
	public int getCountZoayo(House_ZoayoVO hzVO) throws Exception;
	
	// 스크랩 갯수 가져오기 (ajax용)
	public int getCountScrap(House_ScrapVO hsVO) throws Exception;
	
	
	// 관리자용 -------------------------------------------------------------------------
	
	//style_category < -1인 집들이 글 List(심사 후 알맞은 스타일 배정 받고 공식 게재)
	public List<HouseWarmingVO> getHListForScreening() throws Exception;
	
	//검사할 집들이글 count
	public int getCountForScreening() throws Exception;
	
	//검사할 집들이글 getSelectOne
	public HouseWarmingVO getHDetailForScreening(HouseWarmingVO houseVO) throws Exception;
	
	//검사결과-게재승인&스타일 부여
	public int setScreenResult_approve(Map<String, Integer> scResult) throws Exception;
	
	//검사결과-게재거절&삭제
	public int setScreenResult_refuse(Map<String, Integer> scResult) throws Exception;
	
}
