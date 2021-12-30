package com.th.th1.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
		CartVO img = cartService.getSelectCartFiles(memberVO);
		Long count = cartService.getSelectCartCount(memberVO); //상픔 개수
		Long totalMoney = cartService.getSelectMoney(memberVO); //총 할인 전 금액
		Long dcMoney = cartService.getSelectDiscount(memberVO); //총 할인 금액
		
		mv.addObject("items",items);
		mv.addObject("img", img);
		mv.addObject("count", count);
		mv.addObject("totalMoney", totalMoney);
		mv.addObject("dcMoney", dcMoney);
		mv.setViewName("store/cart");
		
		return mv;
	}
	
	//장바구니 insert
	@PostMapping("setInsertCart")
	@ResponseBody
	public int setInsertCart(CartVO cartVO) throws Exception {
		int result = cartService.setInsertCart(cartVO);
		
		return result;
	}
	
	//장바구니 delete
	@PostMapping("deleteCart")
	@ResponseBody
	public int setDeleteCart(CartVO cartVO) throws Exception {
		int result = cartService.setDeleteCart(cartVO);
		
		return result;
	}
	
	@PostMapping("setStatusTo1")
	public int setStatusTo1(CartVO cartVO) throws Exception {
		int result = cartService.setStatusTo1(cartVO);
		return result;
	}
	
	@PostMapping("setStatusTo0")
	public int setStatusTo0(CartVO cartVO) throws Exception {
		int result = cartService.setStatusTo0(cartVO);
		return result;
	}
	
	
	
}
