package com.th.th1.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
	
	//회원가입
	public int setMemberInsert(MemberVO memberVO) throws Exception;
	
	//회원탈퇴
	public int setMemberDelete(MemberVO memberVO) throws Exception;

}
