package com.th.th1.sns;

import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

@Service
public class NaverService extends DefaultOAuth2UserService{
	
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		System.out.println("Social 로그인 결과 객체");
		System.out.println(userRequest.getClientRegistration());
		 OAuth2User oAuth2User = super.loadUser(userRequest);
		 System.out.println("provider: " + userRequest.getClientRegistration().getClientName());
		 System.out.println("user정보 조회");
		 //Map<String, Object> map =null;
		 Map<String, Object> map =(Map<String, Object>)oAuth2User.getAttributes().get("response");
		 Iterator<String> it = map.keySet().iterator();
		 
		 while(it.hasNext()) {
			 String key = it.next();
			 System.out.println("key:" + key);
			 System.out.println("Value: " + map.get(key));
		 }
		 
		 System.out.println("social VO 생성해서 값 적용");
		 NaverVO naverVO = new NaverVO();
		 naverVO.setUsername(map.get("id").toString());
		 naverVO.setName(map.get("nickname").toString());
		 naverVO.setEmail(map.get("email").toString());
		 System.out.println("key값 넣기");

		 naverVO.setSocial(userRequest.getClientRegistration().getClientName());
			
		naverVO.setAttributes(oAuth2User.getAttributes());
			
		return naverVO;
	
		 
	}
	
}
