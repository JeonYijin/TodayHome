package com.th.th1.cart;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cart/**")
public class CartController {
	
	@GetMapping("/")
	public String getCart() throws Exception {
		return "store/cart";
	}
	
}
