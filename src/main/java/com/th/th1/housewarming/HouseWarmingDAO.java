package com.th.th1.housewarming;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface HouseWarmingDAO {

	// 글쓰기
	public int setHouseWarming(HouseWarmingVO houseVO) throws Exception;
}
