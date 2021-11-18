<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	function myFunction() {
	    document.getElementById("myDropdown").classList.toggle("show");
	}
	
	window.onclick = function(event) {
		if (!event.target.matches('.dropbtn')) {
		var dropdowns = document.getElementsByClassName("dropdown-content");
		var i;
		for (i = 0;i<dropdowns.length;i++) {
			var openDropdown = dropdowns[i];
			if (openDropdown.classList.contains('show')) {
				openDropdown.classList.remove('show');
			}
	    }
		}
	}
</script>
<div class="topbar">
	<div class="navline">
		<div class="navcontainer">
			<div class="nav-left">
				<a class="logo" href="/" style="">
					<svg class="icon" width="74" height="30" viewBox="0 0 74 30" preserveAspectRatio="xMidYMid meet">
						<g fill="none" fill-rule="evenodd">
							<path fill="#000" d="M14.2 25.17H9.28V20.7a1.45 1.45 0 0 0-2.9 0v4.47H1.44a1.45 1.45 0 1 0 0 2.9H14.2a1.45 1.45 0 0 0 0-2.9M4.5 9.15c0-4.6 2.08-5.28 3.33-5.28 1.24 0 3.33.69 3.33 5.28v.36c0 4.6-2.09 5.28-3.33 5.28-1.25 0-3.34-.69-3.34-5.28v-.36zm3.33 8.54c3.84 0 6.23-3.13 6.23-8.18v-.36c0-5.05-2.39-8.18-6.23-8.18-3.85 0-6.24 3.13-6.24 8.18v.36c0 5.05 2.39 8.19 6.24 8.19zm25.54-7.34H17.81a1.45 1.45 0 0 0 0 2.9h15.56a1.45 1.45 0 1 0 0-2.9m-1.55 15.5c-7.08 1.83-9.45.79-10.14.25-.45-.35-.65-.8-.65-1.48v-.87h10.25c.8 0 1.46-.65 1.46-1.45v-5.08c0-.8-.66-1.45-1.46-1.45h-11.7a1.45 1.45 0 1 0 0 2.9h10.25v2.18H19.57c-.8 0-1.45.65-1.45 1.45v2.32a4.6 4.6 0 0 0 1.78 3.78c1.2.93 2.94 1.39 5.21 1.39 2.05 0 4.54-.38 7.44-1.13a1.45 1.45 0 1 0-.73-2.82M20.3 7.83h10.8a1.45 1.45 0 1 0 0-2.9h-9.35V1.45a1.45 1.45 0 1 0-2.9 0v4.93c0 .8.65 1.45 1.45 1.45">
							</path>
							<rect width="3" height="15" x="70" fill="#000" rx="1.5"></rect>
							<path fill="#000" d="M64.5 13.28a1.45 1.45 0 0 0 2.73-1c-.05-.13-1-2.68-3.38-4.5l3.7-4.1a1.45 1.45 0 0 0-1.09-2.42h-9.05a1.45 1.45 0 1 0 0 2.9h5.8l-6.88 7.64a1.45 1.45 0 1 0 2.16 1.95l3.41-3.8a8 8 0 0 1 2.6 3.33M69.56 26.52h-7.01a.82.82 0 0 1-.82-.82v-1.95h8.65v1.95c0 .45-.37.82-.82.82m2.27-9.37c-.8 0-1.45.65-1.45 1.45v2.25h-8.65V18.6a1.45 1.45 0 1 0-2.9 0v7.1a3.73 3.73 0 0 0 3.72 3.72h7.01a3.73 3.73 0 0 0 3.72-3.72v-7.1c0-.8-.65-1.45-1.45-1.45M42.46 3.87c2.22 0 2.33 4.24 2.33 5.08 0 .85-.11 5.09-2.33 5.09-2.21 0-2.32-4.24-2.32-5.08 0-.86.11-5.09 2.32-5.09m0 13.07c1.76 0 3.23-.93 4.14-2.62.71-1.34 1.1-3.2 1.1-5.36s-.39-4.02-1.1-5.37A4.6 4.6 0 0 0 42.46.97c-1.76 0-3.22.93-4.13 2.62-.72 1.35-1.1 3.2-1.1 5.37s.38 4.01 1.1 5.36a4.59 4.59 0 0 0 4.13 2.62">
							</path>
							<path fill="#000" d="M51.4.49c-.8 0-1.45.65-1.45 1.45v17.78c-1.93.6-5.75 1.13-10.38 1.13h-2.2a1.45 1.45 0 0 0 0 2.9h2.2c2.64 0 7.21-.23 10.38-1.02v4.84a1.45 1.45 0 0 0 2.9 0V1.94c0-.8-.65-1.45-1.45-1.45">
							</path>
						</g>
					</svg>
				</a>
			</div>
			<!-- 기본메뉴 -->
			<nav class="nav-menu" style="float:left;">
				<ul>
					<li class="navmenuli"><a class="navmenuitem" href="${pageContext.request.contextPath}/" style="color: #35c5f0; text-decoration: none;">커뮤니티</a>
						<ul class="dropdownbar">
							<li class="navmenuitemdropdown" style="color:black; text-decoration: none;"><a href="${pageContext.request.contextPath}/">홈</a></li>
							<li class="navmenuitemdropdown" style="color:black; text-decoration: none;"><a href="${pageContext.request.contextPath}/">사진</a></li>
							<li class="navmenuitemdropdown" style="color:black; text-decoration: none;"><a href="${pageContext.request.contextPath}/">집들이</a></li>
							<li class="navmenuitemdropdown" style="color:black; text-decoration: none;"><a href="${pageContext.request.contextPath}/">질문과답변</a></li>
							<li class="navmenuitemdropdown" style="color:black; text-decoration: none;"><a href="${pageContext.request.contextPath}/">이벤트</a></li>
						</ul>
					</li>
					<li class="navmenuli"><a class="navmenuitem" style="text-decoration:none;" href="${pageContext.request.contextPath}/">스토어</a>
						<ul class="dropdownbar">	
							<li class="navmenuitemdropdown" style="color:black; text-decoration: none;"><a href="${pageContext.request.contextPath}/">스토어홈</a></li>
							<li class="navmenuitemdropdown" style="color:black; text-decoration: none;"><a href="${pageContext.request.contextPath}/">카테고리</a></li>
							<li class="navmenuitemdropdown" style="color:black; text-decoration: none;"><a href="${pageContext.request.contextPath}/">베스트</a></li>
							<li class="navmenuitemdropdown" style="color:black; text-decoration: none;"><a href="${pageContext.request.contextPath}/">오늘의딜</a></li>
							<li class="navmenuitemdropdown" style="color:black; text-decoration: none;"><a href="${pageContext.request.contextPath}/">기획전</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			<!-- 비회원 -->
			<c:if test="${empty user_num}">
				<nav class="nav-right">
					<form id="search" action="${pageContext.request.contextPath}/" method="get">
						<div class="search-bar" style="width:200px; margin-top:10px; margin-left:0px; margin-right:0px;">
							<input type="search" name="keyword" id="keyword" class="form-control" placeholder="오늘의집 통합검색" style="font-size:13px;" autocomplete="off" aria-label="통합검색" aria-describedby="button-addon2">
						</div>
					</form>
					<a class="navrightitem" href="${pageContext.request.contextPath}/" style="text-decoration: none;">
						<svg class="icon" width="24" height="24" viewBox="0 0 24 24" stroke="currentColor" fill="none" stroke-linejoin="round" stroke-width="2" preserveAspectRatio="xMidYMid meet">
							<path stroke-linecap="round" d="M4 5h18l-2.6 10.5a2 2 0 0 1-2 1.5H8.6a2 2 0 0 1-2-1.5L4 5zm4 15.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0zm7 0a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0z">
							</path>
							<path d="M1 2h3v3"></path>
						</svg>
					</a>
					<a class="navrightitem" href="${pageContext.request.contextPath}/" style="text-decoration: none;">로그인</a> 
					<a class="navrightitem" href="${pageContext.request.contextPath}/" style="text-decoration: none;">회원가입</a> 
					<a class="navrightitem" href="${pageContext.request.contextPath}/cscenter" style="text-decoration: none;">고객센터</a>
					<div class="nav-right-menu">
						<ul>
							<li class="navrightmenuli"><a class="navmenuitem" href="#" style="text-decoration:none;">글쓰기</a>
								<ul class="dropdownbar">
									<li class="navrightitemdropdown" style="text-decoration: none;"><a href="${pageContext.request.contextPath}/">사진 올리기</a></li>
									<li class="navrightitemdropdown" style="text-decoration: none;"><a href="${pageContext.request.contextPath}/">집들이 글쓰기</a></li>
									<li class="navrightitemdropdown" style="text-decoration: none;"><a href="${pageContext.request.contextPath}/">상품 리뷰 쓰기</a></li>
									<li class="navrightitemdropdown" style="text-decoration: none;"><a href="${pageContext.request.contextPath}/">인테리어 질문하기</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</nav>
			</c:if>
			
		</div>
	</div>
</div>
<div class="nav-dropdown">
	<div class="nav-dropdown-bar">
		<div class="navline"></div>
	</div>
</div>