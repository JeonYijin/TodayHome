package com.th.th1.myhouse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/myhouse/**")
public class MyHouseController {

	@Autowired
	private MyHouseService myHouseService;
}
