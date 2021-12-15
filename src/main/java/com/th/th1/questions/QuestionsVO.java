package com.th.th1.questions;

import java.sql.Timestamp;
import java.util.List;

import lombok.Data;
@Data
public class QuestionsVO {

	private Integer quests_num;
	private String quests_id;
	private String quests_nickname;
	private String quests_title;
	private String quests_contents;
	private Integer hits;
	private Timestamp regDate;
	private String thumbnail;
	
	private String list_contents; //리스트 노출용 글내용(리스트게시판에 한정해서 사용)
	private Integer reply; //댓글 갯수
	private List<HashtagVO> tags;	
	private Integer notice;
	
}
