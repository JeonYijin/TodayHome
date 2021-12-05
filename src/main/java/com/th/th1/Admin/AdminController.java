package com.th.th1.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.th.th1.category.PageVO;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
	
	@Autowired
	private AdminService adminService;

	@GetMapping("admin")
	public String getadmin() throws Exception {
		return "admin/admin";
	}
	
	//상품 등록 폼 이동
	@GetMapping("productUpload") 
	public String setInsertPage() throws Exception {
		return "admin/productUpload";
	}
	
	//상품 등록 폼 제출
	@PostMapping("productUpload")
	public String setInsertPage(PageVO pageVO, @RequestParam("pageFile") MultipartFile [] files) throws Exception {
		int result = adminService.setInsertPage(pageVO, files);
		return "redirect:./admin";
	}
	
	
}
