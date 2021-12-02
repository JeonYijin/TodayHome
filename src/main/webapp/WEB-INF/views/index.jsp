<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Index</h1>
	<sec:authorize access="isAuthenticated()" var="result">
	<a href="/member/memberLogout">로그아웃하기</a>
	</sec:authorize>
	
	<sec:authorize access="!isAuthenticated()" var="result">
	<a href="/member/memberLogin">로그인하기</a>
	</sec:authorize>
	
	<a href="https://kauth.kakao.com/oauth/logout?client_id=8ac307dc44008f3766d04dba03de3f8b&logout_redirect_uri=http://localhost/member/memberLogout">카카오 로그아웃</a>
 
    <a href="/board/list">test</a>
	
	
	<a href="/member/usePrincipal">정보조회</a>
	
	<a href="/picture/picList">사진</a>
	<a href="/notice/list">공지사항</a>
	
	
</body>
</html>