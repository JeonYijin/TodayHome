package com.th.th1.questions;

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

import com.th.th1.comment.QCommentService;
import com.th.th1.comment.QCommentVO;

@Controller
@RequestMapping("/comment/**")
public class QCommentController {

	@Autowired
	private QCommentService commentService;
	
	
	@GetMapping("count")
	@ResponseBody
	private int commentCount(@RequestParam int qnum) throws Exception{
		
		return commentService.commentCount(qnum);
	}
		
    @GetMapping("list") //댓글 리스트
    @ResponseBody
    private List<QCommentVO> commentList(Model model, @RequestParam int qnum) throws Exception{
        
        return commentService.commentList(qnum);
    }
    
    @PostMapping("insert") //댓글 작성 
    @ResponseBody
    private int commentInsert(@RequestParam int qnum, @RequestParam String contents, @RequestParam String nickname) throws Exception{
        
        QCommentVO comment = new QCommentVO();
        
        comment.setQnum(qnum);
        comment.setContents(contents);
       
        comment.setWriter(nickname);  
        
        return commentService.commentInsert(comment);
    }
    
    @PostMapping("delete/{cnum}") //댓글 삭제  
    @ResponseBody
    private int commentDelete(@PathVariable int cnum) throws Exception{
    	
        return commentService.commentDelete(cnum);
    }
    
    @PostMapping("recommentInsert")
    @ResponseBody
    private int reCommentInsert(QCommentVO commentVO) throws Exception {
    	
    	return commentService.reCommentInsert(commentVO);
    }

	
}
