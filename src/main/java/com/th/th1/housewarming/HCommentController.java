package com.th.th1.housewarming;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.th.th1.comment.HCommentService;
import com.th.th1.comment.HCommentVO;
import com.th.th1.comment.QCommentVO;

@Controller
@RequestMapping("/hcomment/**")
public class HCommentController {

	@Autowired
	private HCommentService commentService;
	
	
	@GetMapping("count")
	@ResponseBody
	private int commentCount(@RequestParam int hnum) throws Exception{
		System.out.println("house_detail 댓글수 즉시 count:"+commentService.commentCount(hnum));
		return commentService.commentCount(hnum);
	}
	
	@GetMapping("list")
	@ResponseBody
	private List<HCommentVO> commentList(Model model, @RequestParam int hnum) throws Exception {
		System.out.println("hnum: "+hnum);
		System.out.println(commentService.commentList(hnum));
		return commentService.commentList(hnum);
	}
	
    @PostMapping("insert") //댓글 작성 
    @ResponseBody
    private int commentInsert(@RequestParam int hnum, @RequestParam String contents, @RequestParam String nickname) throws Exception{
        HCommentVO comment = new HCommentVO();
        
        comment.setHnum(hnum);
        comment.setContents(contents);
        comment.setWriter(nickname);  
        
        int insertResult = commentService.commentInsert(comment);
        int countResult = 0;
     
        
        if(insertResult==1) {
        	countResult = commentService.commentCount(hnum);
        }
        
        return countResult;
    }
    
    @PostMapping("delete/{cnum}") //댓글 삭제  
    @ResponseBody
    private int commentDelete(@PathVariable int cnum) throws Exception{
    	
        return commentService.commentDelete(cnum);
    }


	
	
}
