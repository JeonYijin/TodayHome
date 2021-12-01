package com.th.th1.comment;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class QCommentVO {

	private Integer cnum;
	private Integer qnum;
	private String contents;
	private String writer;
	private Timestamp regDate;
	private Integer heart;
	
	private Integer ref;
	private Integer step;
	private Integer depth;
}
