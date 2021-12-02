package com.th.th1.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoticeMapper {
	
	public List<NoticeVO> noticeList()throws Exception;
	
	public NoticeVO noticeSelect(NoticeVO noticeVO)throws Exception;
	
	public int noticeInsert(NoticeVO noticeVO)throws Exception;
	
	public int noticeDelete(NoticeVO noticeVO)throws Exception;
	
	public int noticeUpdate(NoticeVO noticeVO)throws Exception;

}
