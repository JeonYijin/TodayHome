package com.th.th1.q_reply;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class Q_ReplyVO {

	private Integer rnum; //댓글 번호
	private Integer qnum; //게시물 번호
	private Integer ref; //댓글이 속한 댓글 번호
	private Integer step; //같은 ref 중 순서 지정
	private Integer depth; //댓글의 깊이(댓글의 들여쓰기 횟수)
	private String nickname; // 댓쓴이의 nickname
	private String id; // 댓쓴이의 id
	private String contents; // 댓글의 내용
	private Timestamp regDate; // 댓글 작성 시간
	private Integer hearts; // 좋아요 수
}
