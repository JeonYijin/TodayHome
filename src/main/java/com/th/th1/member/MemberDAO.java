package com.th.th1.member;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.th.th1.feeling.FeelingVO;
import com.th.th1.feeling.ScrapingVO;
import com.th.th1.picture.PictureVO;

@Mapper
public interface MemberDAO {
	
		//회원가입
		public int setMemberInsert(MemberVO memberVO) throws Exception;
		
		//회원탈퇴
		public int setMemberDelete(MemberVO memberVO) throws Exception;
		
		//닉네임 중복 확인
		public Long getNicknameCheck(MemberVO memberVO) throws Exception;


	//회원정보 업데이트
	public int setMemberUpdate(MemberVO memberVO) throws Exception;
	
	
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
	
	
	//마이페이지 - 알림설정
	public int setNotiInsert(NotiVO notiVO) throws Exception;
	
	public int setNotiUpdate(NotiVO notiVO) throws Exception;
	
	public NotiVO getNoti(NotiVO notiVO) throws Exception;
	
	public int setNotiMInsert(NotiMVO notiMVO) throws Exception;
	
	public int setNotiMUpdate(NotiMVO notiMVO) throws Exception;
	
	public NotiMVO getNotiM(NotiMVO notiMVO) throws Exception;
	
	
		


}
