package com.th.th1.member;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class MemberVO implements UserDetails {

		private Integer memberNum;
	   private String id;
	   private String pw;
	   private String nickname;
	   //private Integer role;
	   
	   	//private String role;
		private boolean enabled;
	   
		private List<RoleVO> roles;
		
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
	  

	public List<RoleVO> getRoles() {
		return roles;
	}
	public void setRoles(List<RoleVO> roles) {
		this.roles = roles;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for(RoleVO roleVO:roles) {
			authorities.add(new SimpleGrantedAuthority(roleVO.getRoleName()));
		}
		
		return authorities;
	}
	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return this.pw;
	}
	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return this.id;
	}
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return this.enabled;
	}

   
   
   
   
}