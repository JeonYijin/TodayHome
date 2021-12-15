package com.th.th1.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;



import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;


import com.th.th1.feeling.FeelingVO;
import com.th.th1.feeling.ScrapingVO;
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

	
}
