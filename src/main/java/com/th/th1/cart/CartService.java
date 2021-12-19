package com.th.th1.cart;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.th.th1.category.PrFilesVO;
import com.th.th1.member.MemberVO;

@Service
public class CartService {
	
	@Autowired
	private CartDAO cartDAO;
	
	public int setInsertCart(CartVO cartVO) throws Exception {
		return cartDAO.setInsertCart(cartVO);
	}
	
	public List<CartVO> getSelectCartList(MemberVO memberVO) throws Exception {
		return cartDAO.getSelectCartList(memberVO);
	}
	
	public CartVO getSelectCartFiles(MemberVO memberVO) throws Exception {
		return cartDAO.getSelectCartFiles(memberVO);
	}
	
	public int setDeleteCart(CartVO cartVO) throws Exception {
		return cartDAO.setDeleteCart(cartVO);
	}
	
	public int setUpdatePlus(CartVO cartVO) throws Exception {
		return cartDAO.setUpdatePlus(cartVO);
	}
	
	public int setUpdateMinus(CartVO cartVO) throws Exception {
		return cartDAO.setUpdateMinus(cartVO);
	}
	
	public Long getSelectCartCount(MemberVO memberVO) throws Exception {
		return cartDAO.getSelectCartCount(memberVO);
	}
	
	public Long getSelectMoney(MemberVO memberVO) throws Exception {
		return cartDAO.getSelectMoney(memberVO);
	}
	
	public Long getSelectDiscount(MemberVO memberVO) throws Exception {
		return cartDAO.getSelectDiscount(memberVO);
	}
	
	public int setStatusTo1(CartVO cartVO) throws Exception {
		return cartDAO.setStatusTo1(cartVO);
	}
	
	public int setStatusTo0(CartVO cartVO) throws Exception {
		return cartDAO.setStatusTo0(cartVO);
	}
	
}
