package com.th.th1.picture;

import java.sql.Date;
import java.util.List;

import com.th.th1.member.MemberVO;

import lombok.Data;

@Data
public class PicCommentVO {

	private Integer comment_num;
	private String comment_text;
	private Integer memberNum;
	private Integer post_id;
	private Date comment_date;
	private Integer ref;
	private Integer step;
	private Integer depth;
	
	private Integer count;
	
	private List<MemberVO> memberVO;
	
}
