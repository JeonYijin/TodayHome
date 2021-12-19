package com.th.th1.category;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.th.th1.housewarming.HouseWarmingVO;
import com.th.th1.housewarming.House_ScrapVO;
import com.th.th1.util.Pager;

@Controller
@RequestMapping("/store/**")
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	
	@GetMapping("category")
	public ModelAndView getSelectList(ProductVO productVO, Pager pager, Principal principal) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<ProductVO> ar = categoryService.getSelectList(productVO, pager);
		Integer count = categoryService.getSelectCount(productVO);
		String categoryN = categoryService.getSelectCategoryName(productVO);
		
		//filter 영문->한글 변환
		setFilter_korean(pager);
		
		Category_ScrapVO csVO=null;
		List<Category_ScrapVO> scraps=null;
		if(principal == null) {
			System.out.println("category 로그인 안돼있어요~");
		} else if(principal != null) {
			System.out.println("principal.getName() = "+principal.getName());
			csVO = new Category_ScrapVO();
			csVO.setScrap_id(principal.getName());
			
			scraps = categoryService.getScraps(csVO);

			if(scraps != null) {				
				//scrap된 게시물
				for(int t=0;t<scraps.size();t++) {
					for(int y=0;y<ar.size();y++) {
						int ar_num=ar.get(y).getPr_number(); //전체리스트
						int scraps_num=scraps.get(t).getPr_number(); //로그인한 아이디로 Category_Scrap DB 조회
						if(ar_num==scraps_num) {
							ar.get(y).setScrap_id(principal.getName());
						}
					}
				}
			}
			
			mv.addObject("scraps", scraps);
		}
		
		
		if(principal != null) {
			mv.addObject("loginId", principal.getName());
		}
		
		mv.addObject("categoryN", categoryN);
		mv.addObject("count", count);
		mv.addObject("products", ar);
		mv.addObject("pager", pager);
		
		mv.setViewName("store/categoryList");
		
		return mv;
	}
	
	
	@GetMapping("page")
	public ModelAndView getSelectPage(ProductVO productVO, String loginId) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		productVO = categoryService.getSelectPage(productVO);
		String categoryN = categoryService.getSelectCategoryName(productVO);
		
		// 스크랩 관리 -------------------------------------------
		Category_ScrapVO csVO = null;
		if(loginId == null) {
			System.out.println("로그인 안해도 볼 수 있다~~!");
		} else if(loginId != null) {
			csVO = new Category_ScrapVO();
			csVO.setPr_number(productVO.getPr_number());
			csVO.setScrap_id(loginId);
					
			csVO = categoryService.getScrapInfo(csVO);
			System.out.println(csVO);
		}		
				
		if(csVO == null) {
			mv.addObject("scrap", null);
		} else if(csVO != null) {
			mv.addObject("scrap", 1);
		}
		
		
		mv.addObject("categoryN", categoryN);
		mv.addObject("product", productVO);
		mv.setViewName("store/productPage");
		
		return mv;
	}
	
	@GetMapping("best")
	public ModelAndView getSelectList1(ProductVO productVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ProductVO> ar1 = categoryService.getSelectList1(productVO);
		System.out.println("size :"+ ar1.size());
		Integer count = categoryService.getSelectCount(productVO);
		String categoryN = categoryService.getSelectCategoryName(productVO);
		mv.addObject("categoryN", categoryN);
		mv.addObject("products", ar1);
		mv.setViewName("store/best");
		
		return mv;
	}
	
	
	
	//영문 filter를 한글 filter로 변환해주는 메소드
	public void setFilter_korean(Pager pager) throws Exception {
		
		String keyword="";
						
		switch (pager.getFilter()) {
			case "newest":
				keyword = "최신순";
				break;
			case "sales":
				keyword = "판매순";
				break;
			case "lowPrice":
				keyword = "낮은가격순";
				break;
			case "highPrice":
				keyword = "높은가격순";
				break;
			case "scrap":
				keyword = "인기순";
				break;
			default:
				keyword = "";
		}
		
		pager.setFilter_toJSP(keyword);
	}
	
	// ------------------------------------------------------------------//
	
	// 스크랩 up ajax
	@ResponseBody
	@PostMapping("scrapUp")
	public int setScrapInsert(Category_ScrapVO csVO) throws Exception {
		return categoryService.setScrapInsert(csVO);
	}
		
	// 스크랩 down ajax
	@ResponseBody
	@PostMapping("scrapDown")
	public int setScrapDelete(Category_ScrapVO csVO) throws Exception {
		return categoryService.setScrapDown(csVO);
	}
	

}

