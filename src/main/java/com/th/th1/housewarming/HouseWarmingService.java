package com.th.th1.housewarming;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HouseWarmingService {

	@Autowired
	private HouseWarmingDAO houseDAO;
	
	// 글쓰기
	public int setHouseWarming(HouseWarmingVO houseVO) throws Exception {
		return houseDAO.setHouseWarming(houseVO);
	}
}
