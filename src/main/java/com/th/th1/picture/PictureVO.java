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
	private String order;
	
	
	
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
	
	public String getOrder() {
		if(this.order==null) {
			this.order="post_date";
		}
		return order;
	}
	
	public void setOrder(String order) {
		this.order = order;
	}
	
	
	private List<PictureFileVO> pictureFileVO;
	private MemberVO memberVO;
}
