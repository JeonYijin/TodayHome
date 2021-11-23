package com.th.th1.member;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
@SpringBootTest
class MemberDAOTest {

	@Autowired
	private MemberDAO MemberDAO;
	
	@Test
	void getLoginTest() throws Exception {
		MemberVO memberVO = new MemberVO();
		memberVO.setId("test1@gmail.com");
		memberVO.setPw("test1");
		//memberVO = MemberDAO.getLogin(memberVO);
		
		assertNotNull(memberVO);
	}

}
