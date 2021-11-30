package com.th.th1.questions;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.th.th1.member.MemberService;
import com.th.th1.q_reply.Q_ReplyService;
import com.th.th1.q_reply.Q_ReplyVO;

@Controller 
@RequestMapping("/questions/**")
public class QuestionsController {

	@Autowired
	private QuestionsService questionsService;
	
	@Autowired
	private Q_ReplyService replyService;
	
	
	/* [질문과답변 전체리스트 조회] */
	@GetMapping("/")
	public ModelAndView getList() throws Exception {
		ModelAndView mav = new ModelAndView();
		
		List<QuestionsVO> list = questionsService.getQuestionsList();
		
		mav.addObject("list", list);
		mav.setViewName("questions/questions_list");
		
		return mav;		
	}
	
	
	/* [질문과답변 글 하나만 가져오기] */
	@GetMapping("selectOne")
	public ModelAndView getSelectOne(QuestionsVO questionsVO) throws Exception {
		ModelAndView mav = new ModelAndView();
		questionsVO = questionsService.getQuestionOne(questionsVO);
		
		mav.setViewName("questions/questions_one");
		mav.addObject("quest", questionsVO);
		
		return mav;
	}
	
	
	/* [질문과답변 새 질문 Insert Page 띄우기] */
	@GetMapping("new")
	public ModelAndView setQuest() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("questions/new2");
		
		return mav;
	}
	
	/* [질문과답변 새 질문 INSERT into DB] */
	@PostMapping("new")
	public ModelAndView setQuest(QuestionsVO questionsVO) throws Exception {
		System.out.println("건너온 id : "+questionsVO.getQuests_id());
		System.out.println("건너온 title : "+questionsVO.getQuests_title());
		System.out.println("건너온 contents : "+questionsVO.getQuests_contents());		
		
		ModelAndView mav = new ModelAndView();
		int result = questionsService.setQuestionInsert(questionsVO);
		mav.setViewName("redirect:/");
		System.out.println("result : "+result);
		
		return mav;
	}
	
	/** [질문과답변 수정하기] */
	@GetMapping("update")
	public ModelAndView setUpdate(@RequestParam Integer quests_num) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		QuestionsVO questionsVO = new QuestionsVO();
		questionsVO.setQuests_num(quests_num);
		
		questionsVO = questionsService.getQuestionOne(questionsVO);
		mav.addObject("vo", questionsVO);
		mav.setViewName("questions/questions_update");
		
		return mav;
	}
	
	@PostMapping("update")
	public ModelAndView setUpdate(QuestionsVO questionsVO) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		int result = questionsService.setQuestionUpdate(questionsVO);
		System.out.println("리절트~:"+result);
		if(result == 1) {
			mav.setViewName("redirect:/");
		} else {
			mav.setViewName("questions/questions_update?quests_num="+questionsVO.getQuests_num());
		}
		
		return mav;
	}
	
	/** [질문과답변 삭제하기] */
	@GetMapping("delete")
	public String setDelete(QuestionsVO questionsVO) throws Exception {
		int result = questionsService.setQuestionDelete(questionsVO);
		String jsp = "";
		
		if(result==1) {
			jsp="redirect:/";
		} else {
			jsp="questions/questions_update?quests_num="+questionsVO.getQuests_num();
		}
		
		return jsp;
	}
	
	
	// 모댓글 작성
	@ResponseBody
//	@RequestMapping(value = "/picture_write_reply.do")
	@GetMapping("write_reply")
	public QuestionsVO write_reply(@RequestParam int quests_num, @RequestParam String contents, @RequestParam String id) throws Exception {

	    Q_ReplyVO replyVO = new Q_ReplyVO();

	    // 게시물 번호 세팅
	    replyVO.setRnum(quests_num);

	    // 댓글 내용 세팅
	    replyVO.setContents(contents);

	    // parameter로 받은 id를 통해 nickname 가져오기
	   	/// [[이건 추후에]]

	    // +1된 댓글 갯수를 담아오기 위함
	    QuestionsVO questionsVO = replyService.questionsWriteReply(replyVO);
	    						

	    return questionsVO;
	}

	// 대댓글 작성
	@ResponseBody
//	@RequestMapping(value = "/picture_write_rereply.do")
	@GetMapping("write_rereply")
	public QuestionsVO write_rereply(@RequestParam int rnum, @RequestParam int qnum, @RequestParam String contents,
			@RequestParam String id)
	        throws Exception {

	    Q_ReplyVO replyVO = new Q_ReplyVO();

	    // 게시물 번호 세팅
	    replyVO.setQnum(qnum);

	    // ref, step, depth는 ReplyVO에 int로 정의되어 있기 때문에 String인 num int로 변환해서 넣어준다. -->난 해당x
	    // 모댓글 번호 rnum를 ref로 세팅한다.
	    replyVO.setRef(rnum);

	    // 대댓글은 깊이가 1이되어야 하므로 depth를 1로 세팅한다.
	    replyVO.setDepth(1);

	    // 대댓글 내용 세팅
	    replyVO.setContents(contents);

	    // 대댓글작성자 nick을 writer로 세팅
//	    to.setWriter((String) session.getAttribute("nick"));  ---> [[추후에]]

	    // +1된 댓글 갯수를 담아오기 위함
	    QuestionsVO questionsVO = replyService.questionsWriteReReply(replyVO);
	    
	    return questionsVO;
	}

	// 댓글 리스트
	@ResponseBody
//	@RequestMapping(value = "/picture_replyList.do")
	@GetMapping("replyList")
	public ArrayList<Q_ReplyVO> reply_list(@RequestParam int quests_num, @RequestParam String id) throws Exception {

	    Q_ReplyVO replyVO = new Q_ReplyVO();

	    // 가져올 댓글 리스트의 게시물번호를 세팅
	    replyVO.setQnum(quests_num);

	    ArrayList<Q_ReplyVO> replyList = replyService.replyList(replyVO);

	    return replyList;
	}

	// 모댓글 삭제
	@ResponseBody
//	@RequestMapping(value = "/picture_delete_reply.do")
	@GetMapping("delete_reply")
	public QuestionsVO picture_delete_reply(@RequestParam int rnum, @RequestParam int qnum) throws Exception {

		Q_ReplyVO replyVO = new Q_ReplyVO();

	    // 모댓글 번호 세팅
	    replyVO.setRnum(rnum);
	    // 게시물 번호 세팅
	    replyVO.setQnum(qnum);

	    // 갱신된 댓글 갯수를 담아오기 위함
	    QuestionsVO questionsVO = replyService.questionsDeleteReply(replyVO);
	    
	    return questionsVO;
	}

	// 대댓글 삭제
	@ResponseBody
//	@RequestMapping(value = "/picture_delete_rereply.do")
	@GetMapping("delete_rereply")
	public QuestionsVO delete_rereply(@RequestParam int rnum, @RequestParam int qnum, @RequestParam int ref) throws Exception {

		Q_ReplyVO replyVO = new Q_ReplyVO();

	    // 대댓글 번호 세팅 - 대댓글 삭제하기 위해서 필요함
		replyVO.setRnum(rnum);

	    // 게시물 번호 세팅 - questions의 reply-1하기 위해 필요함
		replyVO.setQnum(qnum);

	    // ref 세팅(모댓글이 뭔지) - 모댓글은 삭제를 해도 대댓글이 있으면 남아있게 되는데 대댓글이 모두 삭제되었을 때 모댓글도 삭제하기 위해
	    // 필요함
	    replyVO.setRef(ref);

	    // 갱신된 댓글 갯수를 담아오기 위함
	    QuestionsVO questionsVO = replyService.pictureDeleteReReply(replyVO);
	    
	    return questionsVO;
	}
	
	

}
