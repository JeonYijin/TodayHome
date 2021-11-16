package com.th.th1.cscenter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Controller
@RequestMapping("/cscenter/**")
public class CSCenterController {
	
	@Autowired
	private CSCenterService csCenterService;
	
	@GetMapping("/")
	public ModelAndView cscenterList(CSCenterVO csCenterVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<CSCenterVO> csList = csCenterService.cscenterList(csCenterVO);	
		mv.addObject("csList", csList);
		mv.setViewName("cscenter/cscenter");
		
		return mv;
	}
	
	@GetMapping("cscenterAjax")
	public ModelAndView cscenterAjax(CSCenterVO csCenterVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		Integer num = csCenterVO.getNum();		
		List<CSCenterVO> csList = csCenterService.cscenterList(csCenterVO);
		mv.addObject("csList", csList);
		mv.addObject("num", num);
		mv.setViewName("common/ajaxResult");
				
		return mv;
	}

}
