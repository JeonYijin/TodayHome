package com.th.th1.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.security.auth.UserPrincipal;
import com.th.th1.sns.KakaoVO;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("usePrincipal")
	public void UserPrincipal(@AuthenticationPrincipal KakaoVO kakaoVO) throws Exception{
		System.out.println(kakaoVO);
		System.out.println(kakaoVO.getEmail());
		
		MemberVO memberVO = new MemberVO();
		memberVO.setId(kakaoVO.getEmail());
		
	}
	
	@GetMapping("getLogin")
	public String getLogin() throws Exception{
		return "member/login";
	}
	
	@PostMapping("getLogin")
	public String getLogin(MemberVO memberVO, HttpSession session) throws Exception{
		memberVO = memberService.getLogin(memberVO);
		if(memberVO != null) {
			session.setAttribute("member", memberVO);
		}
		return "redirect:../";
		
	}

	@GetMapping("getLogout")
	public String getLogout(HttpSession session) throws Exception{
		session.invalidate();
		return "redirect:../";
	}
	
	
}
