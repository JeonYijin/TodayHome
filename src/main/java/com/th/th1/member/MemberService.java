package com.th.th1.member;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class MemberService implements UserDetailsService{
	

	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	private PasswordEncoder bCryptPasswordEncoder;
	
	
	//로그인
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		System.out.println("Load user by username");
		System.out.println("일반로그인");
		System.out.println(username);
		MemberVO memberVO = null;
		try {
			memberVO = memberDAO.getLogin(username);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return memberVO;
	}
	
	
	//회원가입
	public int setMemberInsert(MemberVO memberVO) throws Exception{
		memberVO.setPw(bCryptPasswordEncoder.encode(memberVO.getPw()));
		
		int result = memberDAO.setMemberInsert(memberVO);
		
		//member_role에 추가
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", memberVO.getId());
		map.put("num", 2);
		result = memberDAO.setMemberRoleInsert(map);
		
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
