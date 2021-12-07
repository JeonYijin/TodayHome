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
		System.out.println("글 삽입 후 result 값:" + result);
		
		return "redirect:./picList";
	}
	
	//글 업데이트폼으로 이동
	@GetMapping("picUpdate")
	public ModelAndView setPicUpdate(PictureVO pictureVO, ModelAndView mv) throws Exception{
		pictureVO = pictureService.getPicOne(pictureVO);
		mv.setViewName("/picture/picUpdate");
		mv.addObject("pic", pictureVO);
		System.out.println("picture controller부터" +pictureVO.getPost_text() );
		return mv;
	}
	
	//글 업데이트하기
	@PostMapping("picUpdate")
	public String setPicUpdate(PictureVO pictureVO) throws Exception{
		 int result = pictureService.setPicUpdate(pictureVO);
		 return "redirect:./picList";
	}
	
	//글 삭제하기
	@GetMapping("picDelete")
	public String setPicDelete(PictureVO pictureVO) throws Exception{
		int result = pictureService.setPicDelete(pictureVO);
		return "redirect:./picList";
	}
	
	//글 리스트 조회하기
	@GetMapping("picList")
	public ModelAndView getPicList() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/picture/picList");
		List<PictureVO> pic = pictureService.getPicList();
		mv.addObject("pic", pic);

		//댓글 개수를 모을 list
		List<Long> countList = new ArrayList<Long>();
		
		
		//각 게시글마다의 댓글 수 가져오기
		for(PictureVO pictureVO: pic) {
			PicCommentVO picCommentVO = new PicCommentVO();
			picCommentVO.setPost_id(pictureVO.getPost_id());
			Long count = pictureService.getCommentCount(picCommentVO);
			countList.add(count);
			
		}
		mv.addObject("count", countList);
		
		return mv;
	}
	
	//글 상세조회하기
	@GetMapping("picOne")
	public ModelAndView getPicOne(PictureVO pictureVO, PicCommentVO picCommentVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		pictureVO = pictureService.getPicOne(pictureVO);
		mv.setViewName("/picture/picOne");
		mv.addObject("picOne", pictureVO);
		picCommentVO.setPost_id(pictureVO.getPost_id());
		List<PicCommentVO> comment = pictureService.getComment(picCommentVO);
		mv.addObject("comment", comment);
		System.out.println("post_id: "+ picCommentVO.getPost_id());
		Long count = pictureService.getCommentCount(picCommentVO);
		mv.addObject("count", count);
		System.out.println("댓글수:"+count);
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
	
	
}
