package com.th.th1.member;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.core.user.OAuth2User;

public class MemberVO implements OAuth2User {

   private Integer memberNum;
   private String id;
   private String pw;
   private String nickname;
   private Integer role;
   
   private Map<String, Object> attributes;
   
   public Integer getMemberNum() {
      return memberNum;
   }
   public void setMemberNum(Integer memberNum) {
      this.memberNum = memberNum;
   }
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public String getPw() {
      return pw;
   }
   public void setPw(String pw) {
      this.pw = pw;
   }
   public String getNickname() {
      return nickname;
   }
   public void setNickname(String nickname) {
      this.nickname = nickname;
   }
   public Integer getRole() {
      return role;
   }
   public void setRole(Integer role) {
      this.role = role;
   }
@Override
public Map<String, Object> getAttributes() {
	// TODO Auto-generated method stub
	return this.attributes;
}
@Override
public String getName() {
	// TODO Auto-generated method stub
	return null;
}
@Override
public Collection<? extends GrantedAuthority> getAuthorities() {
	List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
    authorities.add(new SimpleGrantedAuthority("ROLE_MEMBER"));
	return authorities;
}
public void setAttributes(Map<String, Object> attributes) {
		this.attributes = attributes;
	}

   
   
   
   
}