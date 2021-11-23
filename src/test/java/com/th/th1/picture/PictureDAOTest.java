package com.th.th1.picture;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
@SpringBootTest
class PictureDAOTest {

	@Autowired
	private PictureDAO pictureDAO;
	
	//@Test
	void setPicInsertTest() throws Exception {
		PictureVO pictureVO = new PictureVO();
		pictureVO.setMemberNum(2);
		pictureVO.setPyeongsu("10평 이하");
		pictureVO.setArea("원룸");
		pictureVO.setHousetype("원룸");
		pictureVO.setHit(0);
		pictureVO.setStyle("북유럽");
		pictureVO.setPost_text("오늘의집");
		
		int result = pictureDAO.setPicInsert(pictureVO);
		assertNotEquals(0, result);
		
	}

	//@Test - 조회수 업데이트
	void setHitUpdate() throws Exception{
		PictureVO pictureVO = new PictureVO();
		pictureVO.setPost_id(2);
		int result = pictureDAO.setHitUpdate(pictureVO);
		assertNotEquals(0, result);
	}
	
	//@Test - 업데이트
	void setPicUpdate() throws Exception{
		PictureVO pictureVO = new PictureVO();
		pictureVO.setArea("거실");
		pictureVO.setPyeongsu("20평대");
		pictureVO.setHousetype("아파트");
		pictureVO.setStyle("빈티지");
		pictureVO.setPost_text("내일의집");
		
		pictureVO.setPost_id(1);
		
		int result = pictureDAO.setPicUpdate(pictureVO);
		assertNotEquals(0, result);
	}
	//@Test 상세조회
	void getPicOne() throws Exception{
		PictureVO pictureVO = new PictureVO();
		pictureVO.setPost_id(1);
		pictureVO = pictureDAO.getPicOne(pictureVO);
		assertNotNull(pictureVO);
	}
	
	//@Test
	void getPicList() throws Exception{
		List<PictureVO> pic = pictureDAO.getPicList();
		//assertNotEquals(0, pic.size());
		assertNotNull(pic);
		
	}
	
	@Test
	void setPicDelete() throws Exception{
		PictureVO pictureVO =new PictureVO();
		pictureVO.setPost_id(3);
		int result = pictureDAO.setPicDelete(pictureVO);
		assertNotEquals(0, result);
	}
	
	
}
