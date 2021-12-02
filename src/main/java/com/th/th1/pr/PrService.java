package com.th.th1.pr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class PrService {
	@Autowired
	private PrMapper prMapper;
	
	public List<PrVO> prList()throws Exception{
		return prMapper.prList();
	}
	
	public PrVO prSelect(PrVO prVO)throws Exception{
		return prMapper.prSelect(prVO);
	}
	
	public int prInsert(PrVO prVO)throws Exception{
		return prMapper.prInsert(prVO);
	}
	
	public int prDelete(PrVO prVO)throws Exception{
		return prMapper.prDelete(prVO);
	}
	
	public int prUpdate(PrVO prVO)throws Exception{
		return prMapper.prUpdate(prVO);
	}

}
