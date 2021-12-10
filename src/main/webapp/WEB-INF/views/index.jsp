<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<h1>Index</h1>
	<a href="/member/memberLogin">로그인하기</a>
	
	<a href="https://kauth.kakao.com/oauth/logout?client_id=8ac307dc44008f3766d04dba03de3f8b&logout_redirect_uri=http://localhost/member/memberLogout">카카오 로그아웃</a>
 
 
	<a href="/member/memberLogout">로그아웃하기</a>
	
	<a href="/member/usePrincipal">정보조회</a>
	
	<a href="/picture/picList">사진</a>
	<hr>
	<div>
		<a href="/questions" style="color:red;">커뮤니티-질문과답변 게시판</a>
	</div>
	<hr>
	<div>
		<a href="/housewarming" style="color:green;">집들이 게시판</a>
	</div>
	<hr>
	<div>
		<a href="/housewarming/write" style="color:olive;">집들이 글쓰기 게시판</a>
	</div>
	
	<sec:authorize access="isAuthenticated()" var="result">
			<a href="./member/usePrincipal">usePrincipal</a>
			<a href="./member/useSession">useSession</a>
		
		
  		  	<h3>${result}</h3>
  		  	<h3>MemberVO<sec:authentication property="principal" var="memberVO"/></h3>
  		  	<h3>MemberVO ID : <sec:authentication property="principal.id" var="id"/></h3>
  		  	<h3>${memberVO}</h3>
  		  	<h3>${id}</h3>
			<a href="./member/memberLogout">로그아웃</a>
  		</sec:authorize>	
  		
		  <sec:authorize access="!isAuthenticated()" var="result">
		  	<h3>${result}</h3>
			<a href="./member/memberJoin">회원가입</a>
			<a href="./member/memberLogin">로그인</a>
		</sec:authorize>
		

	
</body>
</html>