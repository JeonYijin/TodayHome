package com.th.th1.picture;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.th.th1.feeling.FeelingVO;
import com.th.th1.feeling.ScrapingVO;
import com.th.th1.member.MemberVO;

@Mapper
public interface PictureDAO {

	//댓글 쓰기
	public int setCommentInsert(PicCommentVO picCommentVO) throws Exception;
	
	//댓글 수정
	public int setCommentUpdate(PicCommentVO picCommentVO) throws Exception;
	
	//댓글 삭제
	public int setCommentDelete(PicCommentVO picCommentVO) throws Exception;
	
	//댓글 조회
	public List<PicCommentVO> getComment(PicCommentVO picCommentVO) throws Exception;
	
	//답댓글 쓰기
	public int setReplyComment(PicCommentVO picCommentVO) throws Exception;
	
	//답댓글 업데이트
	public int setReplyUpdate(PicCommentVO picCommentVO) throws Exception;
	
	//답댓글 ref 업데이트
	public int setRefUpdate(PicCommentVO picCommentVO) throws Exception;
	
	//댓글 개수 가져오기
	public PicCommentVO getCommentCount(PicCommentVO picCommentVO) throws Exception;
	
	
	
	//하트 인서트
	public int setHeartInsert(FeelingVO feelingVO) throws Exception;
	
	//하트 삭제
	public int setHeartDelete(FeelingVO feelingVO) throws Exception;
	
	//하트 게시글 가져오기
	public List<FeelingVO> getHeartPost(FeelingVO feelingVO) throws Exception;
	
	//게시글 당 하트
	public FeelingVO getHeart(FeelingVO feelingVO) throws Exception;
	
	
	//스크랩 인서트
	public int setScrapInsert(ScrapingVO scrapingVO) throws Exception;
	
	//스크랩 삭제
	public int setScrapDelete(ScrapingVO scrapingVO) throws Exception;
	
	//게시글 당 스크랩
	public ScrapingVO getScrap(ScrapingVO scrapingVO) throws Exception;
	
	
	
	
	
	//사진 게시판 글쓰기
	public int setPicInsert(PictureVO pictureVO) throws Exception;
	
	//글 수정하기
	public int setPicUpdate(PictureVO pictureVO) throws Exception;
	
	//글 삭제하기
	public int setPicDelete(PictureVO pictureVO) throws Exception;

	//글 리스트 조회하기
	public List<PictureVO> getPicList(PictureVO pictureVO) throws Exception;
	
	//글 상세조회하기
	public PictureVO getPicOne(PictureVO pictureVO) throws Exception;
	
	//조회수 업데이트하기
	public int setHitUpdate(PictureVO pictureVO) throws Exception;
	
	//홈에 보내줄 탑10
	public List<PictureVO> getTopPic() throws Exception;
	
	
	
	//파일 인서트
	public int setPicFileInsert(PictureFileVO pictureFileVO) throws Exception;
	
	//파일 삭제하기
	public int setPicFileDelete(PictureFileVO pictureFileVO) throws Exception;
	
	//파일 가져오기
	public List<PictureFileVO> getPicFile(PictureVO pictureVO) throws Exception;
}
