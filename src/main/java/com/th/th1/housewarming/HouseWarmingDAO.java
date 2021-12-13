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
	public int getCountBoard(String style_category) throws Exception;
	
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
	
	/** 멤버-집들이글 좋아요 Up 등록 */
	public int setZoayoInsert(House_ZoayoVO hzVO) throws Exception;
	
	/** 멤버-집들이글 좋아요 Down 등록 */
	public int setZoayoDelete(House_ZoayoVO hzVO) throws Exception;
	
	public int houseZoayoUp(int house_num) throws Exception;
	
	public int houseZoayoDown(int house_num) throws Exception;
	
	public House_ZoayoVO getZoayoInfo(House_ZoayoVO hzVO) throws Exception;
	
}
