package com.th.th1.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeService {

	@Autowired
	private NoticeMapper noticeMapper;
	
	public List<NoticeVO> noticeList()throws Exception{
		return noticeMapper.noticeList();
	}
	
	public NoticeVO noticeSelect(NoticeVO noticeVO)throws Exception{
		return noticeMapper.noticeSelect(noticeVO);
	}
	
	public int noticeInsert(NoticeVO noticeVO)throws Exception{
		return noticeMapper.noticeInsert(noticeVO);
	}
	
	public int noticeDelete(NoticeVO noticeVO)throws Exception{
		return noticeMapper.noticeDelete(noticeVO);
	}
	
	public int noticeUpdate(NoticeVO noticeVO)throws Exception{
		return noticeMapper.noticeUpdate(noticeVO);
	}
}
