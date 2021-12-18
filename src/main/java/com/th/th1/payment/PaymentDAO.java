package com.th.th1.payment;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.th.th1.cart.CartVO;
import com.th.th1.member.MemberVO;

@Mapper
public interface PaymentDAO {
	
	
	//결제 목록
	public List<CartVO> getSelectPayList(MemberVO memberVO) throws Exception;
	
	//결제하기 (장바구니에서 삭제)
	public int setDeletePay(MemberVO memberVO) throws Exception;
}
