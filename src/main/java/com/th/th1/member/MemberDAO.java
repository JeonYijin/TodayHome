package com.th.th1.member;




import java.util.List;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.th.th1.feeling.FeelingVO;
import com.th.th1.feeling.ScrapingVO;
import com.th.th1.housewarming.HouseWarmingVO;
import com.th.th1.picture.PictureVO;

@Mapper
public interface MemberDAO {
	
		//회원가입
		public int setMemberInsert(MemberVO memberVO) throws Exception;
		
		//회원탈퇴
		public int setMemberDelete(MemberVO memberVO) throws Exception;
		
		//닉네임 중복 확인
//		public Long getNicknameCheck(MemberVO memberVO) throws Exception;


	//회원정보 업데이트
	public int setMemberUpdate(MemberVO memberVO) throws Exception;
	

	

	//닉네임 중복 확인 ajax
	public Long getNicknameCheck(MemberVO memberVO) throws Exception;
	
	//아이디 조회
	public MemberVO getSelectId(MemberVO memberVO) throws Exception;
	
	//닉네임 조회
	public MemberVO getSelectNickname(MemberVO memberVO) throws Exception;

	
	//로그인
	public MemberVO getLogin(String username) throws Exception;
	
	//member_role insert
	public int setMemberRoleInsert(Map<String, Object> map) throws Exception;
	
	
	//마이페이지
	
	//내가 쓴 사진게시글 가져오기
	public List<PictureVO> getMyPicture(PictureVO pictureVO) throws Exception;
	
	//내가 쓴 사진 개수
	public Long getMyPicCount(PictureVO pictureVO) throws Exception;
	
	//내가 좋아요한 사진 게시글
	public List<PictureVO> getMyHeartPic(FeelingVO feelingVO) throws Exception;
	
	//내가 좋아요한 사진 개수
	public Long getMyHeartCount(FeelingVO feelingVO) throws Exception;
	
	//내가 스크랩한 사진 게시글
	public List<PictureVO> getMyScrapPic(ScrapingVO scrapingVO) throws Exception;
	
	//내가 스크랩한 사진 개수
	public Long getMyScrapCount(ScrapingVO scrapingVO) throws Exception;
	
	
	//내가 쓴 집들이 게시글
	public List<HouseWarmingVO> getHListForMypage(String house_userId) throws Exception;
	//내가 쓴 집들이 수
	public Long getHListCount(String id) throws Exception;
	
	//좋아요 누른 집들이 글 개수
	public Long getHzoaCount(String zoayo_id) throws Exception;
	
	//스크랩 누른 집들이 글 개수
	public Long getHscrCount(String scrap_id) throws Exception;
	
	//좋아요 누른 집들이 글
	public List<HouseWarmingVO> getHzoaPost(String zoayo_id) throws Exception;
	
	//스크랩 누른 집들이 글
	public List<HouseWarmingVO> getHscrPost (String scrap_id) throws Exception;
	
	
	
	//마이페이지 - 알림설정
	public int setNotiInsert(NotiVO notiVO) throws Exception;
	
	public int setNotiUpdate(NotiVO notiVO) throws Exception;
	
	public NotiVO getNoti(NotiVO notiVO) throws Exception;
	
	public int setNotiMInsert(NotiMVO notiMVO) throws Exception;
	
	public int setNotiMUpdate(NotiMVO notiMVO) throws Exception;
	
	public NotiMVO getNotiM(NotiMVO notiMVO) throws Exception;
	
	
		



}
