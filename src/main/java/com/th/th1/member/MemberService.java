package com.th.th1.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;


import com.th.th1.feeling.FeelingVO;
import com.th.th1.feeling.ScrapingVO;
import com.th.th1.housewarming.HouseWarmingVO;
import com.th.th1.picture.PictureVO;

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
	
	//회원정보 업데이트
	public int setMemberUpdate(MemberVO memberVO) throws Exception{
		return memberDAO.setMemberUpdate(memberVO);
	}
	
	
	
	//마이페이지
	
	//내가 쓴 사진
	public List<PictureVO> getMyPicture(PictureVO pictureVO) throws Exception{
		return memberDAO.getMyPicture(pictureVO);
	}
	
	//내가 쓴 사진 개수
	public Long getMyPicCount(PictureVO pictureVO) throws Exception{
		return memberDAO.getMyPicCount(pictureVO);
	}
	
	//내가 좋아요한 사진
	public List<PictureVO> getMyHeartPic(FeelingVO feelingVO) throws Exception{
		return memberDAO.getMyHeartPic(feelingVO);
	}
	
	//좋아요 사진 개수
	public Long getMyHeartCount(FeelingVO feelingVO) throws Exception{
		return memberDAO.getMyHeartCount(feelingVO);
	}
	
	//내가 스크랩한 사진
	public List<PictureVO> getMyScrapPic(ScrapingVO scrapingVO) throws Exception{
		return memberDAO.getMyScrapPic(scrapingVO);
	}
	
	//내가 스크랩한 사진 개수
	public Long getMyScrapCount(ScrapingVO scrapingVO) throws Exception{
		return memberDAO.getMyScrapCount(scrapingVO);
	}
	
	//내가 쓴 집들이 게시글
	public List<HouseWarmingVO> getHListForMypage(String house_userId) throws Exception{
		return memberDAO.getHListForMypage(house_userId);
	}
	
	//내가 쓴 집들이 글 수
	public Long getHListCount(String id) throws Exception{
		return memberDAO.getHListCount(id);
	}
	
	//내가 좋아요 누른 집들이 글 개수
	public Long getHzoaCount(String zoayo_id) throws Exception{
		return memberDAO.getHzoaCount(zoayo_id);
	}
	
	//내가 스크랩 누른 집들이글 개수
	public Long getHscrapCount(String scrap_id) throws Exception{
		 return memberDAO.getHscrCount(scrap_id);
	}
	//좋아요 누른 집들이글
	public List<HouseWarmingVO> getHzoaPost(String zoayo_id) throws Exception{
		return memberDAO.getHzoaPost(zoayo_id);
	}
	//스크랩 누른 집들이글
	public List<HouseWarmingVO> getHscrPost(String scrap_id) throws Exception{
		return memberDAO.getHscrPost(scrap_id);
	}
	
	
	
	//마이페이지 알림설정
	public int setNotiInsert(NotiVO notiVO) throws Exception{
		return memberDAO.setNotiInsert(notiVO);
	}
	
	public int setNotiUpdate(NotiVO notiVO) throws Exception{
		return memberDAO.setNotiUpdate(notiVO);
	}
	
	public NotiVO getNoti(NotiVO notiVO) throws Exception{
		return memberDAO.getNoti(notiVO);
	}
	
	// ------------------------------------------------
	public int setNotiMInsert(NotiMVO notiMVO) throws Exception{
		return memberDAO.setNotiMInsert(notiMVO);
	}
	
	public int setNotiMUpdate(NotiMVO notiMVO) throws Exception{
		return memberDAO.setNotiMUpdate(notiMVO);
	}
	
	public NotiMVO getNotiM(NotiMVO notiMVO) throws Exception{
		return memberDAO.getNotiM(notiMVO);
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
