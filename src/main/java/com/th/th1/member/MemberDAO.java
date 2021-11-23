package com.th.th1.member;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
	
		//회원가입
		public int setMemberInsert(MemberVO memberVO) throws Exception;
		
		//회원탈퇴
		public int setMemberDelete(MemberVO memberVO) throws Exception;
		
		//닉네임 중복 확인
		public Long getNicknameCheck(MemberVO memberVO) throws Exception;

		
		//로그인
		public MemberVO getLogin(String username) throws Exception;
		
		//member_role insert
		public int setMemberRoleInsert(Map<String, Object> map) throws Exception; 
}
