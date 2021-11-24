package com.th.th1.picture;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PictureDAO {

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
	public List<PictureVO> getPicFile(PictureFileVO pictureFileVO) throws Exception;
}
