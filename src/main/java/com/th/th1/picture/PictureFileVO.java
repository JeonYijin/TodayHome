package com.th.th1.picture;

import lombok.Data;

@Data
public class PictureFileVO {

	private Integer picFilenum;
	private String picFilename;
	private String picOriname;
	private Integer post_id;
	private Integer idx;
	
	
	public Integer getIdx() {
		if(this.idx == null) {
			this.idx = 2;
		}
		
		return idx;
	}
	
}
