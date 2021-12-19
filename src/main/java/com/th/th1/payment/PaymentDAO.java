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
		
		//결제 이미지
		public CartVO getSelectPayFiles(MemberVO memberVO) throws Exception;
		
		//상품 개수 계산
		public Long getSelectPayCount(MemberVO memberVO) throws Exception;
		
		//상품금액 계산
		public Long getSelectPayMoney(MemberVO memberVO) throws Exception;
		
		//할인금액 계산
		public Long getSelectPayDiscount(MemberVO memberVO) throws Exception;
}
