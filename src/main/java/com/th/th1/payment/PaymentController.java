package com.th.th1.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.th.th1.cart.CartVO;
import com.th.th1.member.MemberVO;


@Controller
@RequestMapping("/payment/**")
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
		
	@GetMapping("payment")
	public ModelAndView getPayment(@AuthenticationPrincipal MemberVO memberVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<CartVO> items = paymentService.getSelectPayList(memberVO);
		
		mv.addObject("items", items);
		
		mv.setViewName("store/pay");
		
		//return "payment/payment";
		//return "store/pay";
		return mv;
	}



}


