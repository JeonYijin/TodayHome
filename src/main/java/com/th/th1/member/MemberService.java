package com.th.th1.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

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
			System.out.println(memberVO.getMemberNum());
			
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
	
	//검증 메서드
	public boolean memberError(MemberVO memberVO, BindingResult bindingResult) throws Exception {
		boolean check = false;
		
		check = bindingResult.hasErrors();
		if(check) {
			System.out.println("기본 검증 실패");
		}
		
		//비밀번호 확인 일치 검증
		if(!memberVO.getPw().equals(memberVO.getPwCheck())) {
			System.out.println("비번불일치");
			bindingResult.rejectValue("pwCheck", "member.password.notEqual");
			check = true;
		}
		
		//아이디 중복 검증
		memberVO = memberDAO.getSelectId(memberVO);
		if(memberVO != null) {
			System.out.println("아이디 중복");
			bindingResult.rejectValue("id", "member.id.equals");
		}
		
		//닉네임 중복 검증
		memberVO = memberDAO.getSelectNickname(memberVO);
		if(memberVO != null) {
			System.out.println("닉네임 중복");
			bindingResult.rejectValue("nickname", "member.id.equals");
		}
		
		
		return check;
	}
	
	
}
