package com.th.th1.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {

	
	//로그인
	public MemberVO getLogin(MemberVO memberVO) throws Exception;
}
