package com.th.th1.picture;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.th.th1.feeling.FeelingVO;
import com.th.th1.feeling.ScrapingVO;
import com.th.th1.member.MemberVO;

@Controller
@RequestMapping("/picture/**")
public class PictureController {
	
	@Autowired
	private PictureService pictureService;
	
	//글 쓰기 폼으로 이동
	@GetMapping("picInsert")
	public String setPicInsert() throws Exception{
		return "/picture/picInsert";
	}
	
	//글 쓰기
	@PostMapping("picInsert")
	public String setPicInsert(PictureVO pictureVO, MultipartFile[] files) throws Exception{
		int result = pictureService.setPicInsert(pictureVO, files);
		System.out.println("글 삽입 후 idx 값:" + pictureVO.getIdx1());
		
		return "redirect:./picList";
	}
	
	//글 업데이트폼으로 이동
	@GetMapping("picUpdate")
	public ModelAndView setPicUpdate(PictureVO pictureVO, ModelAndView mv) throws Exception{
		pictureVO = pictureService.getPicOne(pictureVO);
		List<PictureFileVO> ar = pictureService.getPicFile(pictureVO);
		mv.addObject("files", ar);
		mv.setViewName("/picture/picUpdate");
		mv.addObject("pic", pictureVO);
		System.out.println("picture controller부터" +pictureVO.getPost_text() );
		return mv;
	}
	
	//글 업데이트하기
	@PostMapping("picUpdate")
	public String setPicUpdate(PictureVO pictureVO, MultipartFile[] files) throws Exception{
		 int result = pictureService.setPicUpdate(pictureVO, files);
		 return "redirect:./picList";
	}
	
	//파일 삭제하기 - ajax
	@PostMapping("picFileDelete")
	public ModelAndView setPicFileDelete(PictureFileVO pictureFileVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = pictureService.setPicFileDelete(pictureFileVO);
		mv.setViewName("/result/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}
	
	
	//글 삭제하기
	@GetMapping("picDelete")
	public String setPicDelete(PictureVO pictureVO) throws Exception{
		int result = pictureService.setPicDelete(pictureVO);
		return "redirect:./picList";
	}
	
	//글 리스트 조회하기
	@GetMapping("picList")
	public ModelAndView getPicList(FeelingVO feelingVO, PictureVO pictureVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/picture/picList");
		List<PictureVO> pic = pictureService.getPicList(pictureVO);
		mv.addObject("pic", pic);

		//댓글 개수를 모을 list
		List<PicCommentVO> countList = new ArrayList<PicCommentVO>();
		//하트 게시글 번호 모을 list
		List<FeelingVO> feel = new ArrayList<FeelingVO>();
		
		
		//각 게시글마다의 댓글 수 가져오기
		for(PictureVO pictureVOs: pic) {
			PicCommentVO picCommentVO = new PicCommentVO();
			picCommentVO.setPost_id(pictureVOs.getPost_id());
			picCommentVO = pictureService.getCommentCount(picCommentVO);
			countList.add(picCommentVO);
		}
		mv.addObject("count", countList);
		
		//membrenum 넣기 - 하트
//		feel = pictureService.getHeartPost(feelingVO);
//		mv.addObject("feel", feel);
//		System.out.println("size:" + feel.size());
		
		
		
		
		return mv;
	}
	
	//글 상세조회하기
	@GetMapping("picOne")
	public ModelAndView getPicOne(PictureVO pictureVO, PicCommentVO picCommentVO, FeelingVO feelingVO, ScrapingVO scrapingVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		pictureVO = pictureService.getPicOne(pictureVO);
		mv.setViewName("/picture/picOne");
		mv.addObject("picOne", pictureVO);
		
		//코멘트가져오기
		picCommentVO.setPost_id(pictureVO.getPost_id());
		List<PicCommentVO> comment = pictureService.getComment(picCommentVO);
		mv.addObject("comment", comment);
		/* System.out.println("post_id: "+ picCommentVO.getPost_id()); */
		picCommentVO = pictureService.getCommentCount(picCommentVO);
		mv.addObject("count", picCommentVO);
		
		//하트 가져오기
		feelingVO.setPost_id(pictureVO.getPost_id());
		feelingVO = pictureService.getHeart(feelingVO);
		mv.addObject("feeling", feelingVO);
		
		//스크랩 가져오기
		scrapingVO.setPost_id(pictureVO.getPost_id());
		scrapingVO = pictureService.getScrap(scrapingVO);
		mv.addObject("scraping", scrapingVO);
		return mv;
	}
	
	
	//댓글 작성
	@PostMapping("picCommentInsert")
	public ModelAndView setCommentInsert(PicCommentVO picCommentVO) throws Exception{
		int result = pictureService.setCommentInsert(picCommentVO);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/result/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}
	
	//댓글 삭제
	@GetMapping("picCommentDelete")
	public ModelAndView setCommentDelete(PicCommentVO picCommentVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = pictureService.setCommentDelete(picCommentVO);
		mv.setViewName("/result/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}
	
	//댓글 조회
	@GetMapping("picCommentSelect")
	public ModelAndView getComment(PicCommentVO picCommentVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<PicCommentVO> comment = pictureService.getComment(picCommentVO);
		//mv.setViewName("/result/commentReuslt");
		mv.addObject("comment", comment);
		mv.setViewName("/picture/picOne");
		return mv;
	}
	
	//답댓글 달기
	@PostMapping("picReplyComment")
	public ModelAndView setReplyComment(PicCommentVO picCommentVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = pictureService.setReplyComment(picCommentVO);
		mv.setViewName("/result/ajaxResult");
		mv.addObject("result", result);
		
		return mv;
	}
	
	//하트 인서트
	@PostMapping("heartInsert")
	public ModelAndView setHeartInsert(FeelingVO feelingVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = pictureService.setHeartInsert(feelingVO);
		mv.setViewName("/result/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}
	
	//하트 삭제
	@PostMapping("heartDelete")
	public ModelAndView setHeartDelete(FeelingVO feelingVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = pictureService.setHeartDelete(feelingVO);
		mv.setViewName("/result/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}
	
	//스크랩 인서트
	@PostMapping("scrapInsert")
	public ModelAndView setScrapInsert(ScrapingVO scrapingVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = pictureService.setScrapInsert(scrapingVO);
		mv.setViewName("/result/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}
	
	//스크랩 삭제
	@PostMapping("scrapDelete")
	public ModelAndView setScrapDelete(ScrapingVO scrapingVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = pictureService.setScrapDelete(scrapingVO);
		mv.setViewName("/result/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}
	
	
	
	
	//하트 게시글 가져오기
//	@PostMapping("heartPost")
//	public ModelAndView getHeartPost(FeelingVO feelingVO) throws Exception{
//		ModelAndView mv = new ModelAndView();
//		List<FeelingVO> feel = pictureService.getHeartPost(feelingVO);
//		mv.setViewName("/picture/picList");
//		mv.addObject("feel", feel);
//		System.out.println("post_id:" + feel.get(1).getPost_id());
//		return mv;
//	}
}
