package com.th.th1.member;


import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.th.th1.feeling.FeelingVO;
import com.th.th1.feeling.ScrapingVO;
import com.th.th1.housewarming.HouseWarmingVO;
import com.th.th1.picture.PictureVO;

import com.th.th1.sns.KakaoVO;


@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;

	
	//마이페이지 이동
	@GetMapping("mypage")
	public ModelAndView getMypage(PictureVO pictureVO, FeelingVO feelingVO, 
			ScrapingVO scrapingVO, String id) throws Exception{
		ModelAndView mv = new ModelAndView();
		//내가 쓴 사진 게시글
		List<PictureVO> myPic = memberService.getMyPicture(pictureVO);
		mv.addObject("myPic", myPic);
		//내가 쓴 사진 개수
		Long picCount= memberService.getMyPicCount(pictureVO);
		mv.addObject("picCount", picCount);
		
		//내가 쓴 집들이 게시글
		List<HouseWarmingVO> myHouse= memberService.getHListForMypage(id);
		mv.addObject("myHouse", myHouse);
		System.out.println("myHouse" + myHouse.size());
		//집들이 글 수
		Long HListCount = memberService.getHListCount(id);
		mv.addObject("HCount", HListCount);
		
		//집들이 좋아요 개수
		Long zoaCount = memberService.getHzoaCount(id);
		mv.addObject("zoaCount", zoaCount);
		
		//집들이 스크랩 개수
		Long scrCount = memberService.getHscrapCount(id);
		mv.addObject("scrCount", scrCount);
		
		//내가 좋아요한 개수
		Long heartCount = memberService.getMyHeartCount(feelingVO);
		mv.addObject("heartCount", heartCount);
		
		//내가 스크랩한 개수
		Long scrapCount = memberService.getMyScrapCount(scrapingVO);
		mv.addObject("scrapCount", scrapCount);
		
		mv.setViewName("mypage/mypage");
		return mv;
	}
	
	//마이페이지 - 사진 이동
	@GetMapping("myPicture")
	public ModelAndView getMyPicture(PictureVO pictureVO, FeelingVO feelingVO, ScrapingVO scrapingVO, String id) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		//내가 쓴 사진 게시글
		List<PictureVO> myPic = memberService.getMyPicture(pictureVO);
		mv.addObject("myPic", myPic);
		//내가 쓴 사진 개수
		Long picCount= memberService.getMyPicCount(pictureVO);
		mv.addObject("picCount", picCount);
		//내가 좋아요한 개수
		Long heartCount = memberService.getMyHeartCount(feelingVO);
		mv.addObject("heartCount", heartCount);
				
		//내가 스크랩한 개수
		Long scrapCount = memberService.getMyScrapCount(scrapingVO);
		mv.addObject("scrapCount", scrapCount);	
		
		//집들이 좋아요 개수
		Long zoaCount = memberService.getHzoaCount(id);
		mv.addObject("zoaCount", zoaCount);
				
		//집들이 스크랩 개수
		Long scrCount = memberService.getHscrapCount(id);
		mv.addObject("scrCount", scrCount);				
		
		mv.setViewName("mypage/myPicture");
		
		return mv;
	}
	
	
	//마이페이지 - 좋아요 이동
	@GetMapping("myHeart")
	public ModelAndView getMyHeart(PictureVO pictureVO, FeelingVO feelingVO, ScrapingVO scrapingVO, String id) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		//내가 좋아요한 개수
		Long heartCount = memberService.getMyHeartCount(feelingVO);
		mv.addObject("heartCount", heartCount);
				
		//내가 스크랩한 개수
		Long scrapCount = memberService.getMyScrapCount(scrapingVO);
		mv.addObject("scrapCount", scrapCount);
		//집들이 좋아요 개수
		Long zoaCount = memberService.getHzoaCount(id);
		mv.addObject("zoaCount", zoaCount);
						
		//집들이 스크랩 개수
		Long scrCount = memberService.getHscrapCount(id);
		mv.addObject("scrCount", scrCount);					
				
		//좋아요한 집들이 글 
		List<HouseWarmingVO> heartHouse= memberService.getHzoaPost(id);
		mv.addObject("heartH", heartHouse);
		//내가 좋아요한 사진
		List<PictureVO> heartPic = memberService.getMyHeartPic(feelingVO);
		mv.addObject("heartPic", heartPic);
		
		mv.setViewName("mypage/myHeart");
		return mv;
	}
	
	//마이페이지 - 스크랩 이동
	@GetMapping("myScrap")
	public ModelAndView getMyScrap(PictureVO pictureVO, FeelingVO feelingVO, ScrapingVO scrapingVO, String id) throws Exception{
		ModelAndView mv = new ModelAndView();
		//내가 좋아요한 개수
		Long heartCount = memberService.getMyHeartCount(feelingVO);
		mv.addObject("heartCount", heartCount);
				
		//내가 스크랩한 개수
		Long scrapCount = memberService.getMyScrapCount(scrapingVO);
		mv.addObject("scrapCount", scrapCount);		
		
		//집들이 좋아요 개수
		Long zoaCount = memberService.getHzoaCount(id);
		mv.addObject("zoaCount", zoaCount);
								
		//집들이 스크랩 개수
		Long scrCount = memberService.getHscrapCount(id);
		mv.addObject("scrCount", scrCount);	
		
		//스크랩한 집들이 글
		List<HouseWarmingVO> scrapHouse = memberService.getHscrPost(id);
		mv.addObject("scrapH", scrapHouse);
		/* System.out.println("썸네일: " + scrapHouse.get(0).getHouse_thumbnail()); */
		//내가 스크랩한 사진
		List<PictureVO> scrapPic = memberService.getMyScrapPic(scrapingVO);
		mv.addObject("scrapPic", scrapPic);
		
		
		mv.setViewName("mypage/myScrap");
		return mv;
	}
	
	//마이페이지 집들이 이동
	@GetMapping("myHome")
	public ModelAndView getmyHome(FeelingVO feelingVO, ScrapingVO scrapingVO, String id) throws Exception{
		ModelAndView mv = new ModelAndView();
		//내가 좋아요한 개수
		Long heartCount = memberService.getMyHeartCount(feelingVO);
		mv.addObject("heartCount", heartCount);
						
		//내가 스크랩한 개수
		Long scrapCount = memberService.getMyScrapCount(scrapingVO);
		mv.addObject("scrapCount", scrapCount);
		mv.setViewName("mypage/myHome");
		
		//집들이 좋아요 개수
		Long zoaCount = memberService.getHzoaCount(id);
		mv.addObject("zoaCount", zoaCount);
										
		//집들이 스크랩 개수
		Long scrCount = memberService.getHscrapCount(id);
		mv.addObject("scrCount", scrCount);	
		
		//내가 쓴 집들이 게시글
		List<HouseWarmingVO> myHouse= memberService.getHListForMypage(id);
		mv.addObject("myHouse", myHouse);
		//System.out.println("myHouse" + myHouse.size());
		//집들이 글 수
		Long HListCount = memberService.getHListCount(id);
		mv.addObject("HCount", HListCount);
		return mv;
	}
	
	//마이페이지 질문과 답변 이동
	@GetMapping("myQna")
	public ModelAndView getmyQna(FeelingVO feelingVO, ScrapingVO scrapingVO, String id) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/myQna");
		//내가 좋아요한 개수
		Long heartCount = memberService.getMyHeartCount(feelingVO);
		mv.addObject("heartCount", heartCount);
						
		//내가 스크랩한 개수
		Long scrapCount = memberService.getMyScrapCount(scrapingVO);
		mv.addObject("scrapCount", scrapCount);		
		
		//집들이 좋아요 개수
		Long zoaCount = memberService.getHzoaCount(id);
		mv.addObject("zoaCount", zoaCount);
												
		//집들이 스크랩 개수
		Long scrCount = memberService.getHscrapCount(id);
		mv.addObject("scrCount", scrCount);	
				
		return mv;
	}
	
	//마이페이지 설정 이동
	@GetMapping("mySetting")
	public ModelAndView getMySetting() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/mySetting");
		
		return mv;
	}
	
	//마이페이지 알림설정 이동
	@GetMapping("myNoti")
	public ModelAndView getMyNoti(NotiVO notiVO, NotiMVO notiMVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		notiVO = memberService.getNoti(notiVO);
		mv.addObject("noti", notiVO); 
		
		notiMVO = memberService.getNotiM(notiMVO);
		mv.addObject("notiM", notiMVO);
		mv.setViewName("mypage/myNoti");
		return mv;
	}
	
	
	//마이페이지 이메일 설정 등록
	@PostMapping("notiInsert")
	public ModelAndView setNotiInsert(NotiVO notiVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = memberService.setNotiInsert(notiVO);
		System.out.println(notiVO.getNoti_email());
		
		mv.setViewName("/result/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}
	
	@PostMapping("notiUpdate")
	public ModelAndView setNotiUpdate(NotiVO notiVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = memberService.setNotiUpdate(notiVO);
		mv.setViewName("/result/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}
	
	
	@PostMapping("notiMInsert")
	public ModelAndView setNotiMInsert(NotiMVO notiMVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = memberService.setNotiMInsert(notiMVO);
		mv.setViewName("/result/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}
	
	@PostMapping("notiMUpdate")
	public ModelAndView setNotiMUpdate(NotiMVO notiMVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = memberService.setNotiMUpdate(notiMVO);
		mv.setViewName("/result/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}
	
	
	
	//회원탈퇴
	@GetMapping("memberDelete")
	public String setMemberDelete(MemberVO memberVO) throws Exception{
		
		int result = memberService.setMemberDelete(memberVO);
		
		return "redirect:../member/memberLogout";
	}
	
	//회원정보 업데이트
	@PostMapping("memberUpdate")
	public ModelAndView setMemberUpdate(MemberVO memberVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = memberService.setMemberUpdate(memberVO);
		mv.setViewName("/result/ajaxResult");
		mv.addObject("result", result);
		
		return mv;
	}

	//sns로그인시 가져올 데이터
	@GetMapping("usePrincipal")
	public void UserPrincipal(@AuthenticationPrincipal KakaoVO kakaoVO) throws Exception{
		System.out.println(kakaoVO);
		System.out.println(kakaoVO.getEmail());
		
		MemberVO memberVO = new MemberVO();
		memberVO.setId(kakaoVO.getEmail());
		
	}
	//로그인 폼 이동
	@GetMapping("memberLogin")
	public String getLogin() throws Exception{
		return "member/login";
	}
	@GetMapping("memberLoginResult")
	public void getmemberLoginResult() {
		System.out.println("memberLoginResult");
	}


	
//	//로그인
//	@PostMapping("memberLogin")
//	public String getLogin(MemberVO memberVO, HttpSession session, OAuth2UserRequest auth2UserRequest ) throws Exception{
//		
//		System.out.println("로그인");
//		OAuth2User oAuth2User= loginService.loadUser(auth2UserRequest);
////		if(memberVO != null) {
////			session.setAttribute("member", memberVO);
////		}
//		return "redirect:../";
//		
//	}
	
//	//로그아웃
//	@GetMapping("memberLogout")
//	public String getLogout(HttpSession session) throws Exception{
//		session.invalidate();
//		return "redirect:../";
//	}
	

	//회원가입 폼 이동
	@GetMapping("memberJoin")
	public String setMemberInsert(@ModelAttribute MemberVO memberVO) throws Exception {
		return ("member/memberJoin");
	}
	
	//회원가입 폼 제출
	@PostMapping("memberJoin")
	public String setMemberInsert(@Valid MemberVO memberVO, BindingResult bindingResult) throws Exception {
		
		if(memberService.memberError(memberVO, bindingResult)) {
			System.out.println("회원가입 실패 bindingResult");
			return "member/memberJoin";
		}
		
		int result = memberService.setMemberInsert(memberVO);
		ModelAndView mv = new ModelAndView();
		
		
//		String message = "회원가입에 실패하였습니다. 다시 시도해주세요.";
//		if(result > 0){
//			message = "회원가입에 성공했습니다.";
//		}
//		
//		mv.addObject("msg", message);
//		mv.addObject("url", "../");
//		mv.setViewName("common/result");
		
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
