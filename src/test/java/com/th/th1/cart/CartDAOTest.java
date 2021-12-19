package com.th.th1.cart;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.th.th1.member.MemberVO;

@SpringBootTest
class CartDAOTest {

	@Test
	void getSelectCartListTest() throws Exception{
		MemberVO memberVO = new MemberVO();
		memberVO.setId("user04@gmail.com");
		
	}

}
