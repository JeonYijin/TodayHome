package com.th.th1.picture;

import java.sql.Date;
import java.util.List;

import com.th.th1.member.MemberVO;

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
	
	private String kind;
	private String search;
	
	
	public String getKind() {
		return kind;
	}
	
	public void setKind(String kind) {
		this.kind = kind;
	}
	
	public String getSearch() {
		if(this.search==null) {
			this.search="";
		}
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}
	
	
	private List<PictureFileVO> pictureFileVO;
	private MemberVO memberVO;
}
