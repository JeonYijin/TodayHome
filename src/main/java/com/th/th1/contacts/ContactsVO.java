package com.th.th1.contacts;

import java.util.List;

public class ContactsVO {

	private String inquiry_num;
	private String inquiry_type;
	private String inquiry_name;
	private String inquiry_email;
	private String inquiry_title;
	private String inquiry_contents;
	
	private List<ContactsFileVO> fileList;
	
	
	public String getInquiry_num() {
		return inquiry_num;
	}

	public void setInquiry_num(String inquiry_num) {
		this.inquiry_num = inquiry_num;
	}

	public String getInquiry_type() {
		return inquiry_type;
	}

	public void setInquiry_type(String inquiry_type) {
		this.inquiry_type = inquiry_type;
	}

	public String getInquiry_name() {
		return inquiry_name;
	}

	public void setInquiry_name(String inquiry_name) {
		this.inquiry_name = inquiry_name;
	}

	public String getInquiry_email() {
		return inquiry_email;
	}

	public void setInquiry_email(String inquiry_email) {
		this.inquiry_email = inquiry_email;
	}

	public String getInquiry_title() {
		return inquiry_title;
	}

	public void setInquiry_title(String inquiry_title) {
		this.inquiry_title = inquiry_title;
	}

	public String getInquiry_contents() {
		return inquiry_contents;
	}

	public void setInquiry_contents(String inquiry_contents) {
		this.inquiry_contents = inquiry_contents;
	}

	public List<ContactsFileVO> getFileList() {
		return fileList;
	}

	public void setFileList(List<ContactsFileVO> fileList) {
		this.fileList = fileList;
	}
	
	
	
	
}
