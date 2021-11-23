package com.th.th1.memberJoin;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.th.th1.member.MemberDAO;
import com.th.th1.member.MemberVO;
@SpringBootTest
class memberJoinTest {
	
	@Autowired
	private MemberDAO memberDAO;

	//@Test
	void setMemberInsertTest() throws Exception{
		MemberVO memberVO = new MemberVO();
		memberVO.setId("test@test.com");
		memberVO.setPw("1234");
		memberVO.setNickname("test");
		//memberVO.setRole(0);
		
		int result = memberDAO.setMemberInsert(memberVO);
		
		assertNotEquals(0, result);
	}
	
	//@Test
	void setMemberDeleteTest() throws Exception{
		MemberVO memberVO = new MemberVO();
		memberVO.setMemberNum(2);
		int result = memberDAO.setMemberDelete(memberVO);
		
		assertNotEquals(0, result);
	}
	
	//@Test
	void getNicknameCheckTest() throws Exception {
		MemberVO memberVO = new MemberVO();
		memberVO.setNickname("test");
		Long count = memberDAO.getNicknameCheck(memberVO);
		
		assertEquals(1, count);
	}

}
