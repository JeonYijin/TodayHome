package com.th.th1.picture;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PictureService {
	
	@Autowired
	private PictureDAO pictureDAO;
	
	//글쓰기
	public int setPicInsert(PictureVO pictureVO) throws Exception{
		return pictureDAO.setPicInsert(pictureVO);
	}
	
	//글 업데이트
	
	public int setPicUpdate(PictureVO pictureVO) throws Exception{
		return pictureDAO.setPicUpdate(pictureVO);
	}
	
	
	//글 삭제하기
	
	public int setPicDelete(PictureVO pictureVO) throws Exception{
		return pictureDAO.setPicDelete(pictureVO);
	}
	
	//글 리스트 조회
	public List<PictureVO> getPicList() throws Exception{
		return pictureDAO.getPicList();
	}
	
	//글 상세조회 + 조회수 업데이트
	public PictureVO getPicOne(PictureVO pictureVO) throws Exception{
		int result = pictureDAO.setHitUpdate(pictureVO);
		return pictureDAO.getPicOne(pictureVO);
	}
	
}
