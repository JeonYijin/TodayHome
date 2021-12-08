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
	public List<HouseWarmingVO> getHouseBoard(Map<String, Object> map) throws Exception;
}
