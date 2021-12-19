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
		CartVO img = paymentService.getSelectPayFiles(memberVO);
		Long count = paymentService.getSelectPayCount(memberVO); //상픔 개수
		Long totalMoney = paymentService.getSelectPayMoney(memberVO); //총 할인 전 금액
		Long dcMoney = paymentService.getSelectPayDiscount(memberVO); //총 할인 금액
		
		System.out.println("img : "+ img);
		System.out.println("MemberVO : " + memberVO.getId());
		
		mv.addObject("items", items);
		mv.addObject("img", img);
		mv.addObject("count", count);
		mv.addObject("totalMoney", totalMoney);
		mv.addObject("dcMoney", dcMoney);
		mv.setViewName("store/pay");
		
		//return "payment/payment";
		//return "store/pay";
		return mv;
	}


}


