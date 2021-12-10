package com.th.th1.picture;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.th.th1.feeling.FeelingVO;
import com.th.th1.feeling.ScrapingVO;
import com.th.th1.file.PicFileUpload;
import com.th.th1.member.MemberVO;

@Service
public class PictureService {
	
	@Autowired
	private PictureDAO pictureDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private PicFileUpload picFileUpload;
	
	//홈에 보낼 topPic
	public List<PictureVO> getTopPic() throws Exception{
		return pictureDAO.getTopPic();
	}
	
	
	
	
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
		}
		
		
		return result;
	}
	
	//글 업데이트
	
	public int setPicUpdate(PictureVO pictureVO, MultipartFile[] files) throws Exception{
		
		String realPath = servletContext.getRealPath("/resources/upload/picture/");
		File file = new File(realPath);
		
		int result = pictureDAO.setPicUpdate(pictureVO);
		
		for(MultipartFile multipartFile: files) {
			String fileName = picFileUpload.fileSave(multipartFile, file);
			PictureFileVO pictureFileVO = new PictureFileVO();
			pictureFileVO.setPicFilename(fileName);
			System.out.println("파일이름");
			pictureFileVO.setPicOriname(multipartFile.getOriginalFilename());
			pictureFileVO.setPost_id(pictureVO.getPost_id());
			
			result = pictureDAO.setPicFileInsert(pictureFileVO);
		}
		
		
		
		return 0;
	}
	
	
	//글 삭제하기
	
	public int setPicDelete(PictureVO pictureVO) throws Exception{
		String realPath = servletContext.getRealPath("/resources/upload/notice");
		List<PictureFileVO> files = pictureDAO.getPicFile(pictureVO);
		for(PictureFileVO pictureFileVO: files) {
			File file = new File(realPath, pictureFileVO.getPicFilename());
			file.delete();
		}
		return pictureDAO.setPicDelete(pictureVO);
	}
	
	//글 리스트 조회
	public List<PictureVO> getPicList(PictureVO pictureVO) throws Exception{
		return pictureDAO.getPicList(pictureVO);
	}
	
	
	//글 상세조회 + 조회수 업데이트
	public PictureVO getPicOne(PictureVO pictureVO) throws Exception{
		int result = pictureDAO.setHitUpdate(pictureVO);
		return pictureDAO.getPicOne(pictureVO);
	}
	
	//파일 가져오기
	public List<PictureFileVO> getPicFile(PictureVO pictureVO) throws Exception{
		return pictureDAO.getPicFile(pictureVO);
	}
	
	//파일 삭제하기
	public int setPicFileDelete(PictureFileVO pictureFileVO) throws Exception{
		return pictureDAO.setPicFileDelete(pictureFileVO);
	}
	
	
	
	//댓글쓰기
	public int setCommentInsert(PicCommentVO picCommentVO) throws Exception{
		int result = pictureDAO.setCommentInsert(picCommentVO);
		result = pictureDAO.setRefUpdate(picCommentVO);
		System.out.println("comment_num:"+picCommentVO.getComment_num());
		
		return result;
	}
	
	//댓글 수정
	public int setCommentUpdate(PicCommentVO picCommentVO) throws Exception{
		return pictureDAO.setCommentUpdate(picCommentVO);
	}
	
	//댓글 삭제
	public int setCommentDelete(PicCommentVO picCommentVO) throws Exception{
		return pictureDAO.setCommentDelete(picCommentVO);
	}
	
	//댓글 조회
	public List<PicCommentVO> getComment(PicCommentVO picCommentVO) throws Exception{
		return pictureDAO.getComment(picCommentVO);
	}
	
	//답댓글 쓰기
	public int setReplyComment(PicCommentVO picCommentVO) throws Exception{
		int result = pictureDAO.setReplyUpdate(picCommentVO);
		 result = pictureDAO.setReplyComment(picCommentVO);
		System.out.println("comment_num cc:"+picCommentVO.getComment_num());
		System.out.println(picCommentVO.getStep());
		return result;
	}
	
	//댓글 개수 가져오기
	public PicCommentVO getCommentCount(PicCommentVO picCommentVO) throws Exception{
		return pictureDAO.getCommentCount(picCommentVO);
	}

	
	
	//하트 인서트
	public int setHeartInsert(FeelingVO feelingVO) throws Exception{
		return pictureDAO.setHeartInsert(feelingVO);
	}
	
	//하트 삭제
	public int setHeartDelete(FeelingVO feelingVO) throws Exception{
		return pictureDAO.setHeartDelete(feelingVO);
	}
	
	//하트 게시글 가져오기
	public List<FeelingVO> getHeartPost(FeelingVO feelingVO) throws Exception{
		return pictureDAO.getHeartPost(feelingVO);
	}
	
	//게시글 당 하트
	public FeelingVO getHeart(FeelingVO feelingVO)throws Exception{
		return pictureDAO.getHeart(feelingVO);
	}
	
	
	//스크랩 인서트
	public int setScrapInsert(ScrapingVO scrapingVO) throws Exception{
		return pictureDAO.setScrapInsert(scrapingVO);
	}
	
	//스크랩 삭제
	public int setScrapDelete(ScrapingVO scrapingVO) throws Exception{
		return pictureDAO.setScrapDelete(scrapingVO);
	}
	
	//게시글 당 스크랩
	public ScrapingVO getScrap(ScrapingVO scrapingVO) throws Exception{
		return pictureDAO.getScrap(scrapingVO);
	}
	
}
