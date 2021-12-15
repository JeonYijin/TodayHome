package com.th.th1.comment;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class HCommentVO {

	private Integer cnum; //댓글번호
	private Integer hnum; //소속글 번호
	private String contents; //댓글내용
	private String writer; //댓글쓴이
	private Timestamp regDate; //댓글등록일
	private Integer heart; //좋아요--> 이건 약간 기능적 분화가 필요할 거 같음
	
	private Integer ref;
	private Integer step;
	private Integer depth;
}
