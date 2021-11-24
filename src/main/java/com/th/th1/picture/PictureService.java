package com.th.th1.picture;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.th.th1.file.PicFileUpload;

@Service
public class PictureService {
	
	@Autowired
	private PictureDAO pictureDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private PicFileUpload picFileUpload;
	
	//글쓰기
	public int setPicInsert(PictureVO pictureVO, MultipartFile[] files) throws Exception{
		
		//글 먼저 인서트
		int result = pictureDAO.setPicInsert(pictureVO);
		//글 인서트하고 파일 인서트
		String realPath = servletContext.getRealPath("/resources/upload/picture/");
		System.out.println("파일 realPath"+ realPath);
		
		File file = new File(realPath);
		System.out.println("글번호: " + pictureVO.getPost_id());
		
		for(MultipartFile multipartFile: files) {
			String fileName = picFileUpload.fileSave(multipartFile, file);
			PictureFileVO pictureFileVO = new PictureFileVO();
			pictureFileVO.setPicFilename(fileName);
			System.out.println("파일이름");
			pictureFileVO.setPicOriname(multipartFile.getOriginalFilename());
			pictureFileVO.setPost_id(pictureVO.getPost_id());
			
			result = pictureDAO.setPicFileInsert(pictureFileVO);
			System.out.println("에러확인");
		}
		
		
		return result;
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
