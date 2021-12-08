package com.th.th1.housewarming;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.th.th1.util.FileManager;

@Service
public class HouseWarmingService {

	@Autowired
	private HouseWarmingDAO houseDAO;	
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileManager fileManager;
	
	
	// 글쓰기
	public int setHouseWarming(HouseWarmingVO houseVO, MultipartFile thumbnail) throws Exception {
		
		String realPath = servletContext.getRealPath("/resources/upload/housewarming/");		
		File file = new File(realPath);
		
		String fileName = fileManager.getUseServletContext(file, thumbnail);
		
		houseVO.setHouse_thumbnail(fileName);
	
		return houseDAO.setHouseWarming(houseVO);
	}
	
	// 글 갯수 가져오기
	public int getCountBoard(String style_category) throws Exception {
		return houseDAO.getCountBoard(style_category);
	}
	
	// 글 리스트 가져오기
	public List<HouseWarmingVO> getHouseList(Map<String, Object> map) throws Exception {
		return houseDAO.getHouseList(map);
	}
	
	// 글 하나 가져오기
	public HouseWarmingVO getSelectOne(HouseWarmingVO houseVO) throws Exception {
		return houseDAO.getSelectOne(houseVO);
	}
	
	// 글 삭제하기
	public int setDeleteBoard(HouseWarmingVO houseVO) throws Exception {
		return houseDAO.setDeleteBoard(houseVO);
	}
	
	// 글 수정
	public int setUpdateBoard(HouseWarmingVO houseVO) throws Exception {
		return houseDAO.setUpdateBoard(houseVO);
	}
	
	//조회수 +1 증가
	public int setHitsUp(int house_num) throws Exception {
		return houseDAO.setHitsUp(house_num);
	}
	
	

	
}
