package com.th.th1.pr;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PrMapper {
	
    public List<PrVO> prList()throws Exception;
	
	public PrVO prSelect(PrVO prVO)throws Exception;
	
	public int prInsert(PrVO prVO)throws Exception;
	
	public int prDelete(PrVO prVO)throws Exception;
	
	public int prUpdate(PrVO prVO)throws Exception;

}


