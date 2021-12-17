package com.th.th1.interceptor;

import java.security.Principal;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.th.th1.member.MemberDAO;
import com.th.th1.member.MemberVO;

@Component
public class HouseInterceptor implements HandlerInterceptor {
/**	
 * 
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean check = false;
		System.out.println("preHandle 지나간다~");
		
		String username=null;
		//principal에서 로그인된 정보 가져오기
		if(request.getUserPrincipal() != null) {					
			username = request.getUserPrincipal().getName();
		}
		
		//DB에서 memberVO 객체 조회
		MemberVO memberVO = memberDAO.getLogin(username);
		
		
		
		if(memberVO != null && memberVO.getRoles().get(0).getNum()==1) {
			check=true;
		} else {
			request.setAttribute("msg", "관리자만 접근 가능합니다");
			request.setAttribute("url", "/housewarming");
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/result.jsp");
			view.forward(request, response);
		}

		return check;
	}

*/
	
}
