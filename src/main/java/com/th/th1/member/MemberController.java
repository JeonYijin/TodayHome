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
	public ModelAndView setMemberInsert(MemberVO memberVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = memberService.setMemberInsert(memberVO);
		String message = "회원가입에 실패하였습니다. 다시 시도해주세요.";
		if(result > 0){
			message = "회원가입에 성공했습니다.";
		}
		
		mv.addObject("msg", message);
		mv.addObject("url", "../");
		mv.setViewName("common/result");
		
		return mv;
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
