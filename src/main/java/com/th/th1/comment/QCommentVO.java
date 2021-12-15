package com.th.th1.comment;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class QCommentVO {

	private Integer cnum; //댓글번호
	private Integer qnum; //소속글 번호
	private String contents; //댓글내용
	private String writer; //댓글쓴이
	private Timestamp regDate; //댓글등록일
	private Integer heart; //좋아요
	
	private Integer ref;
	private Integer step;
	private Integer depth;
}
