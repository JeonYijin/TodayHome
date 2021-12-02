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
public class KakaoService extends DefaultOAuth2UserService{

	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		// TODO Auto-generated method stub
		System.out.println("Social 로그인 결과 객체");
		 OAuth2User oAuth2User = super.loadUser(userRequest);
		 System.out.println("provider: " + userRequest.getClientRegistration().getClientName());
		 if(userRequest.getClientRegistration().getClientName().equals("Kakao")) {
			 
			 System.out.println("user정보 조회");
			 Map<String, Object> map = (Map<String, Object>)oAuth2User.getAttributes();
			 
			 Iterator<String> it = map.keySet().iterator();
			 
			 while(it.hasNext()) {
				 String key = it.next();
				 System.out.println("key:" + key);
				 System.out.println("Value: " + map.get(key));
			 }
			 
			 System.out.println("social VO 생성해서 값 적용");
			 KakaoVO kakaoVO = new KakaoVO();
			 //System.out.println(map.get("properties").getClass());
			 Map<String, Object> hashmap = (Map<String, Object>)map.get("properties");
			 kakaoVO.setUsername(hashmap.get("nickname").toString());
			 kakaoVO.setPassword(UUID.randomUUID().toString());
			 kakaoVO.setName(hashmap.get("nickname").toString());
			 
			 hashmap=(Map<String, Object>)map.get("kakao_account");
			 System.out.println(hashmap.get("email").toString());
			 kakaoVO.setEmail(hashmap.get("email").toString());
			 
//		hashmap=(Map<String, Object>)hashmap.get("profile");
//		it= hashmap.keySet().iterator();
//		while(it.hasNext()) {
//			 String key = it.next();
//			 System.out.println("key:" + key);
//			 System.out.println("Value: " + map.get(key));
//		 }
			 kakaoVO.setSocial(userRequest.getClientRegistration().getClientName());
			 
			 kakaoVO.setAttributes(oAuth2User.getAttributes());
			 
			 return kakaoVO;
		 }else if(userRequest.getClientRegistration().getClientName().equals("Naver")) {
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
		
		 }else if(userRequest.getClientRegistration().getClientName().equals("Facebook")) {
			 Map<String, Object> map = (Map<String, Object>)oAuth2User.getAttributes();
			 
			 Iterator<String> it = map.keySet().iterator();
			 
			 while(it.hasNext()) {
				 String key = it.next();
				 System.out.println("key:" + key);
				 System.out.println("Value: " + map.get(key));
			 }
			 
			 System.out.println("social VO 생성해서 값 적용");
			 FacebookVO facebookVO = new FacebookVO();
			 
			 facebookVO.setUsername(map.get("name").toString());
			 facebookVO.setName(map.get("name").toString());
			 facebookVO.setEmail(map.get("email").toString());
			 System.out.println("페북 key값 넣기");
			 			 
			 facebookVO.setSocial(userRequest.getClientRegistration().getClientName());
			 
			 facebookVO.setAttributes(oAuth2User.getAttributes());
			 
				
			return facebookVO;
		 }
		 return null;
		 
	}
	
	
	
}
