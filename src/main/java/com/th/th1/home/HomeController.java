package com.th.th1.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String getIndex() throws Exception{
		return "index";
	}
	
	
}
