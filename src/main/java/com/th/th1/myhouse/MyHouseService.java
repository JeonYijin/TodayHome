package com.th.th1.myhouse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyHouseService {

	@Autowired
	private MyHouseDAO myHouseDAO;
}
