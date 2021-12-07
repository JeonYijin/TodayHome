package com.th.th1.picture;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

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
	public Long getCommentCount(PicCommentVO picCommentVO) throws Exception;
	
	
	
	
	
	
	//사진 게시판 글쓰기
	public int setPicInsert(PictureVO pictureVO) throws Exception;
	
	//글 수정하기
	public int setPicUpdate(PictureVO pictureVO) throws Exception;
	
	//글 삭제하기
	public int setPicDelete(PictureVO pictureVO) throws Exception;

	//글 리스트 조회하기
	public List<PictureVO> getPicList() throws Exception;
	
	//글 상세조회하기
	public PictureVO getPicOne(PictureVO pictureVO) throws Exception;
	
	//조회수 업데이트하기
	public int setHitUpdate(PictureVO pictureVO) throws Exception;
	
	
	
	
	
	//파일 인서트
	public int setPicFileInsert(PictureFileVO pictureFileVO) throws Exception;
	
	//파일 삭제하기
	public int setPicFileDelete(PictureFileVO pictureFileVO) throws Exception;
	
	//파일 가져오기
	public List<PictureFileVO> getPicFile(PictureFileVO pictureFileVO) throws Exception;
}
