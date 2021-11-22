package com.th.th1.member;

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
	public MemberVO getLogin(MemberVO memberVO) throws Exception;
}
