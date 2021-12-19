package com.th.th1.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.th.th1.cart.CartVO;
import com.th.th1.member.MemberVO;

@Service
public class PaymentService {

	@Autowired
	private PaymentDAO paymentDAO;
	
	public List<CartVO> getSelectPayList(MemberVO memberVO) throws Exception {
		return paymentDAO.getSelectPayList(memberVO);
	}
	
	public int setDeletePay(MemberVO memberVO) throws Exception {
		return paymentDAO.setDeletePay(memberVO);
	}
	
	public CartVO getSelectPayFiles(CartVO cartVO) throws Exception {
		return paymentDAO.getSelectPayFiles(cartVO);
	}
	
	public Long getSelectPayCount(MemberVO memberVO) throws Exception {
		return paymentDAO.getSelectPayCount(memberVO);
	}
	
	public Long getSelectPayMoney(MemberVO memberVO) throws Exception {
		return paymentDAO.getSelectPayMoney(memberVO);
	}
	
	public Long getSelectPayDiscount(MemberVO memberVO) throws Exception {
		return paymentDAO.getSelectPayDiscount(memberVO);
	}
	
}
