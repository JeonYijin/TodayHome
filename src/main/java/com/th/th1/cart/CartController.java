package com.th.th1.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.th.th1.category.PrFilesVO;
import com.th.th1.member.MemberVO;

@Controller
@RequestMapping("/cart/**")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@GetMapping("/")
	public ModelAndView getCart(@AuthenticationPrincipal MemberVO memberVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<CartVO> items = cartService.getSelectCartList(memberVO);
		
		mv.addObject("items",items);
		mv.setViewName("store/cart");
		
		return mv;
	}
	
	
	
}
