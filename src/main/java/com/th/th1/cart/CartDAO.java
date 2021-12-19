package com.th.th1.cart;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.th.th1.category.PrFilesVO;
import com.th.th1.member.MemberVO;

@Mapper
public interface CartDAO {
	
	//장바구니 insert
	public int setInsertCart(CartVO cartVO) throws Exception;
	
	//장바구니 list
	public List<CartVO> getSelectCartList(MemberVO memberVO) throws Exception;
	
	//장바구니 이미지
	public CartVO getSelectCartFiles(MemberVO memberVO) throws Exception;
	
	//상품 삭제
	public int setDeleteCart(CartVO cartVO) throws Exception;
	
	//상품 수량 1개 추가 
	public int setUpdatePlus(CartVO cartVO) throws Exception;
	
	//상품 수량 1개 감소
	public int setUpdateMinus(CartVO cartVO) throws Exception;
	
	//상품 개수 계산
	public Long getSelectCartCount(MemberVO memberVO) throws Exception;
	
	//상품금액 계산
	public Long getSelectMoney(MemberVO memberVO) throws Exception;
	
	//할인금액 계산
	public Long getSelectDiscount(MemberVO memberVO) throws Exception;
	
}
