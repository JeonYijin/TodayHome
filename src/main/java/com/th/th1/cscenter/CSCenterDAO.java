package com.th.th1.cscenter;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface CSCenterDAO {

	public List<CSCenterVO> cscenterList() throws Exception;

	public List<CSCenterVO> cscenterCategory(CSCenterVO csCenterVO) throws Exception;

}
