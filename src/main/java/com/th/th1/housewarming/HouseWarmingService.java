package com.th.th1.housewarming;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HouseWarmingService {

	@Autowired
	private HouseWarmingDAO houseDAO;
}
