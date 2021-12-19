package com.th.th1.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.th.th1.housewarming.HouseWarmingService;
import com.th.th1.member.MemberDAO;
import com.th.th1.member.MemberVO;

@Component
public class MemberInterceptor implements HandlerInterceptor {

	@Autowired
	private MemberDAO memberDAO;
//	@Autowired
//	private HouseWarmingService houseService;
	
/** MemberInterceptor , 각 BoardInterceptor는 안할까 생각 중 */	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean check = false;
		System.out.println("preHandle과 옷깃을 스치네");
		
		String username = null;
		
		if(request.getUserPrincipal() != null) {
			username = request.getUserPrincipal().getName();
		}
		
		MemberVO memberVO = memberDAO.getLogin(username);
		
		return check;
	}
}
