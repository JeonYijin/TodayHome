package com.th.th1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	
	//로그인
		public MemberVO getLogin(MemberVO memberVO) throws Exception{
			return memberDAO.getLogin(memberVO);
		}
	
	
	//회원가입
	public int setMemberInsert(MemberVO memberVO) throws Exception{
		int result = memberDAO.setMemberInsert(memberVO);
		
		return result;
	}
	
	//회원탈퇴
	public int setMemberDelete(MemberVO memberVO) throws Exception {
		int result = memberDAO.setMemberDelete(memberVO);
		return result;
	}
	
	//닉네임 중복 확인
	public Long getNicknameCheck(MemberVO memberVO) throws Exception {
		Long count = memberDAO.getNicknameCheck(memberVO);
		return count;
	}
	
	
}
