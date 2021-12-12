package com.th.th1.payment;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


	@Controller
	@RequestMapping("/payment/**")
	public class PaymentController {
		
		@GetMapping("payment")
		public String getCart() throws Exception {
			return "payment/payment";
		}
		
	}


