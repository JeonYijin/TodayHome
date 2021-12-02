package com.th.th1.picture;

import java.sql.Date;

import lombok.Data;

@Data
public class PictureVO {

	private Integer post_id;
	private Integer memberNum;
	private Date post_date;
	private String pyeongsu;
	private String housetype;
	private String style;
	private String area;
	private String post_text;
	private Integer hit;
}
