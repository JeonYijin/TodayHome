package com.th.th1.sns;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.security.oauth2.client.OAuth2ClientProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.client.registration.ClientRegistration;
import org.springframework.security.oauth2.client.registration.ClientRegistrationRepository;
import org.springframework.security.oauth2.client.registration.InMemoryClientRegistrationRepository;
import org.springframework.security.oauth2.core.AuthorizationGrantType;
import org.springframework.security.oauth2.core.ClientAuthenticationMethod;


@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private KakaoService KakaoService;
	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
		http
		.cors()
		.and()
		.csrf().disable()
			.authorizeRequests()
				.antMatchers("/").permitAll()
				.antMatchers("/member/**").permitAll()
				.antMatchers("/oauth2/**", "/login/**").permitAll()
				.anyRequest().permitAll()
			.and()
				.oauth2Login()
							.userInfoEndpoint()
							.userService(KakaoService)
							
							
			.and()
				.defaultSuccessUrl("/")
			.and()
			.formLogin()
				.loginPage("/member/memberLogin")
				.defaultSuccessUrl("/")
				.usernameParameter("id")
				.passwordParameter("pw")
				.permitAll()
			.and()
			.logout()
				.logoutUrl("/member/memberLogout")
				.logoutSuccessUrl("/")
				.invalidateHttpSession(true)
				.deleteCookies("JSESSIONID")
				.permitAll()
				
		
			;
		
	}

	@Bean
	public PasswordEncoder passEncoder() {
		//Spring 5 이후부터 비밀번호 평문 금지
		return new BCryptPasswordEncoder();
	}


}
