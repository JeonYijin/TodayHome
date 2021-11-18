package com.th.th1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	//회원가입 폼 이동
	@GetMapping("memberJoin")
	public String setMemberInsert() throws Exception {
		return ("member/memberJoin");
	}
	
	//회원가입 폼 제출
	@PostMapping("memberJoin")
	public String setMemberInsert(MemberVO memberVO) throws Exception {
		int result = memberService.setMemberInsert(memberVO);
		
		return "redirect:../";
	}
	
	//이용약관 
	@GetMapping("usePolicy")
	public String getUserPolicy() throws Exception {
		return ("member/usePolicy");
	}
	
	//개인정보수집 및 이용동의
	@GetMapping("privacy")
	public String getPrivacy() throws Exception {
		return ("member/privacy");
	}
	
	//닉네임 중복 확인
	@GetMapping("nicknameCheckAjax")
	public ModelAndView getNicknameCheckAjax(MemberVO memberVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		Long count = memberService.getNicknameCheck(memberVO);
		
		//result 0이면 사용 불가, 1이면 사용 가능
		int result = 0;
		if(count == 0) {
			result = 1;
		}
		
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	
}
