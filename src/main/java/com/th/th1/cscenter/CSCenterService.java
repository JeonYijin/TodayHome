package com.th.th1.cscenter;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CSCenterService {

	@Autowired
	private CSCenterDAO csCenterDAO;
	
	public List<CSCenterVO> cscenterList(CSCenterVO cscenterVO) throws Exception {
		List<CSCenterVO> list = null;
		
		if(cscenterVO.getCategory()==null) {
			list = csCenterDAO.cscenterList();
		} else {
			list = csCenterDAO.cscenterCategory(cscenterVO);
		}
				
		return list;
	}

}
