<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
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
		
<div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        Accordion Item #1
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        Accordion Item #2
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        Accordion Item #3
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
</div>
	<a href="/notice/list">공지사항</a>
	
	
</body>
</html>