package com.th.th1.store;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/store/**")
public class StoreController {

	@Autowired
	private StoreService storeService;
	
}
