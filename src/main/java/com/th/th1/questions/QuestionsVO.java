package com.th.th1.questions;

import java.sql.Timestamp;
import java.util.List;

public class QuestionsVO {

	private Integer quests_num;
	private String quests_id;
	private String quests_nickname;
	private String quests_title;
	private String quests_contents;
	private Integer hits;
	private Timestamp regDate;

	
	public Integer getQuests_num() {
		return quests_num;
	}
	public void setQuests_num(Integer quests_num) {
		this.quests_num = quests_num;
	}
	public String getQuests_id() {
		return quests_id;
	}
	public void setQuests_id(String quests_id) {
		this.quests_id = quests_id;
	}
	public String getQuests_nickname() {
		return quests_nickname;
	}
	public void setQuests_nickname(String quests_nickname) {
		this.quests_nickname = quests_nickname;
	}
	public String getQuests_title() {
		return quests_title;
	}
	public void setQuests_title(String quests_title) {
		this.quests_title = quests_title;
	}
	public String getQuests_contents() {
		return quests_contents;
	}
	public void setQuests_contents(String quests_contents) {
		this.quests_contents = quests_contents;
	}
	public Integer getHits() {
		return hits;
	}
	public void setHits(Integer hits) {
		this.hits = hits;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}


	
}
