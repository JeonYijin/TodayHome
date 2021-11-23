package com.th.th1.member;

import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.th.th1.sns.KakaoVO;

@Service
public class LoginService extends DefaultOAuth2UserService {

	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		
		 OAuth2User oAuth2User = super.loadUser(userRequest);
		 System.out.println("provider: " + userRequest.getClientRegistration().getClientName());
		 
		 System.out.println("user정보 조회");
		 Map<String, Object> map = (Map<String, Object>)oAuth2User.getAttributes();
		 
		 Iterator<String> it = map.keySet().iterator();
		 
		 while(it.hasNext()) {
			 String key = it.next();
			 System.out.println("key:" + key);
			 System.out.println("Value: " + map.get(key));
		 }
		 
		 System.out.println("social VO 생성해서 값 적용");
		 MemberVO memberVO = new MemberVO();
		 //System.out.println(map.get("properties").getClass());
		 Map<String, Object> hashmap = (Map<String, Object>)map.get("properties");
		 memberVO.setId(hashmap.get("id").toString());
		 memberVO.setPw(hashmap.get("pw").toString());
		 
		 
		 
		 
		 memberVO.setAttributes(oAuth2User.getAttributes());
		 
		 return memberVO;
		 
		 
		 
	
	}
	
	
}
