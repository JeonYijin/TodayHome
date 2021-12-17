package com.th.th1.cart;

import java.util.List;

import com.th.th1.category.PrFilesVO;

import lombok.Data;

@Data
public class CartVO {
	
	private Long cart_id; //장바구니 아이디 a.i
	private String member_id; //회원 아이디
	private Long pr_number; //상품 번호
	private String pr_name; //상품명
	private String pr_seller; //상품 판매자
	private Long pr_price; //상품 원가
	private Long pr_discount; //상품 할인율
	private Long pr_dPrice; //상품 할인가격
	private Long amount; //주문 수량
	private Long money; //총 가격 = 상품 할인가격*주문 수량
	
	private List<PrFilesVO> files; //상품 이미지


}
