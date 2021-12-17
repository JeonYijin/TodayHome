<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="../resources/css/picList.css"> 
 <!-- <link rel="stylesheet" href="../resources/css/picheader2.css"> -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&amp;display=swap&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/preamble-97ede701.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/App-6e6c2f0c.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/templates-Home-HomePage-f3a55bf4.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/21-0e75de9b.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/23-2ef16b9a.chunk.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <style>
/* Dropdown Button */
.dropbtn {
   background-color: #f5f5f5;
    border-color: #f5f5f5;
    color:#757575;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

/* Dropdown button on hover & focus */
.dropbtn:hover, .dropbtn:focus {
    background-color: #f5f5f5;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
    vertical-align: middle;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none; 
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1; 
    }

/* Links inside the dropdown */
.dropdown-content a {
	font-size: 15px;
	float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {
	background-color: #f1f1f1
	}


.show {
	display:block;
}

</style>
</head>
<body>
<!-- 	<h1>PicList page</h1>
	<a href="./picInsert">글쓰기</a> -->
<div class="layout">

<header class="layout-navigation-bar">
			<div data-sticky-enabled="false" data-sticky-disabled="false"
				data-sticky-always="true" data-sticky-ignore="false"
				data-direction="top" data-offset="0"
				class="sticky-container layout-navigation-primary-wrap">
				<div class="sticky-child layout-navigation-primary"
					style="position: relative;">
					<div class="layout-navigation-primary__content">
						<div class="layout-navigation-primary__leftmost">
							<button
								class="layout-navigation-bar-icon layout-navigation-bar-drawer-button"
								title="메뉴" aria-label="메뉴" type="button">
								<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
									preserveAspectRatio="xMidYMid meet">
									<path fill="currentColor"
										d="M3 4h18v2H3V4zm0 7h18v2H3v-2zm0 7h18v2H3v-2z"></path></svg>
							</button>
						</div>
						<div class="layout-navigation-primary__left">
							<a class="layout-navigation-logo layout-navigation__bar__logo"
								aria-label="오늘의집" href="/"><svg class="icon" width="74"
									height="30" viewBox="0 0 74 30"
									preserveAspectRatio="xMidYMid meet">
									<g fill="none" fill-rule="evenodd">
									<path fill="#000"
										d="M14.2 25.17H9.28V20.7a1.45 1.45 0 0 0-2.9 0v4.47H1.44a1.45 1.45 0 1 0 0 2.9H14.2a1.45 1.45 0 0 0 0-2.9M4.5 9.15c0-4.6 2.08-5.28 3.33-5.28 1.24 0 3.33.69 3.33 5.28v.36c0 4.6-2.09 5.28-3.33 5.28-1.25 0-3.34-.69-3.34-5.28v-.36zm3.33 8.54c3.84 0 6.23-3.13 6.23-8.18v-.36c0-5.05-2.39-8.18-6.23-8.18-3.85 0-6.24 3.13-6.24 8.18v.36c0 5.05 2.39 8.19 6.24 8.19zm25.54-7.34H17.81a1.45 1.45 0 0 0 0 2.9h15.56a1.45 1.45 0 1 0 0-2.9m-1.55 15.5c-7.08 1.83-9.45.79-10.14.25-.45-.35-.65-.8-.65-1.48v-.87h10.25c.8 0 1.46-.65 1.46-1.45v-5.08c0-.8-.66-1.45-1.46-1.45h-11.7a1.45 1.45 0 1 0 0 2.9h10.25v2.18H19.57c-.8 0-1.45.65-1.45 1.45v2.32a4.6 4.6 0 0 0 1.78 3.78c1.2.93 2.94 1.39 5.21 1.39 2.05 0 4.54-.38 7.44-1.13a1.45 1.45 0 1 0-.73-2.82M20.3 7.83h10.8a1.45 1.45 0 1 0 0-2.9h-9.35V1.45a1.45 1.45 0 1 0-2.9 0v4.93c0 .8.65 1.45 1.45 1.45"></path>
									<rect width="3" height="15" x="70" fill="#000" rx="1.5"></rect>
									<path fill="#000"
										d="M64.5 13.28a1.45 1.45 0 0 0 2.73-1c-.05-.13-1-2.68-3.38-4.5l3.7-4.1a1.45 1.45 0 0 0-1.09-2.42h-9.05a1.45 1.45 0 1 0 0 2.9h5.8l-6.88 7.64a1.45 1.45 0 1 0 2.16 1.95l3.41-3.8a8 8 0 0 1 2.6 3.33M69.56 26.52h-7.01a.82.82 0 0 1-.82-.82v-1.95h8.65v1.95c0 .45-.37.82-.82.82m2.27-9.37c-.8 0-1.45.65-1.45 1.45v2.25h-8.65V18.6a1.45 1.45 0 1 0-2.9 0v7.1a3.73 3.73 0 0 0 3.72 3.72h7.01a3.73 3.73 0 0 0 3.72-3.72v-7.1c0-.8-.65-1.45-1.45-1.45M42.46 3.87c2.22 0 2.33 4.24 2.33 5.08 0 .85-.11 5.09-2.33 5.09-2.21 0-2.32-4.24-2.32-5.08 0-.86.11-5.09 2.32-5.09m0 13.07c1.76 0 3.23-.93 4.14-2.62.71-1.34 1.1-3.2 1.1-5.36s-.39-4.02-1.1-5.37A4.6 4.6 0 0 0 42.46.97c-1.76 0-3.22.93-4.13 2.62-.72 1.35-1.1 3.2-1.1 5.37s.38 4.01 1.1 5.36a4.59 4.59 0 0 0 4.13 2.62"></path>
									<path fill="#000"
										d="M51.4.49c-.8 0-1.45.65-1.45 1.45v17.78c-1.93.6-5.75 1.13-10.38 1.13h-2.2a1.45 1.45 0 0 0 0 2.9h2.2c2.64 0 7.21-.23 10.38-1.02v4.84a1.45 1.45 0 0 0 2.9 0V1.94c0-.8-.65-1.45-1.45-1.45"></path></g></svg></a>
						</div>
						<nav class="layout-navigation-primary__menu">
							<a
								class="layout-navigation-primary__menu__item layout-navigation-primary__menu__item--active layout-navigation-primary__menu__item--open"
								href="/">커뮤니티</a><a class="layout-navigation-primary__menu__item"
								href="/store">스토어</a>
						</nav>
						<div class="layout-navigation-primary__right mymenuStart">
							<div class="layout-navigation-bar-search">
								<div class="layout-navigation-search" id="id-13">
									<div class="layout-navigation-search__header">
										<div id="id-13-combobox"
											class="layout-navigation-search__combobox" role="combobox"
											aria-haspopup="listbox" aria-expanded="false">
										</div>
									</div>
								</div>
							</div>
							<button
								class="layout-navigation-bar-icon layout-navigation-bar-search-button"
								title="검색" aria-label="검색" type="button">
								<svg class="icon" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" preserveAspectRatio="xMidYMid meet">
									<path d="M22 22l-5-5"></path>
									<circle cx="11" cy="11" r="8"></circle>
								</svg>
							</button>
		<!-- 로그인 안했을 때 헤더 -------------------------------------------------------------------------------------------------------------------------------------------------------- -->											
							<sec:authorize access="!isAuthenticated()">
								<a class="layout-navigation-bar-icon" title="장바구니"aria-label="장바구니" href="/cart">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" stroke="currentColor" fill="none" stroke-linejoin="round" stroke-width="2" preserveAspectRatio="xMidYMid meet">
											<path stroke-linecap="round" d="M4 5h18l-2.6 10.5a2 2 0 0 1-2 1.5H8.6a2 2 0 0 1-2-1.5L4 5zm4 15.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0zm7 0a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0z"></path>
											<path d="M1 2h3v3"></path>
									</svg>
								</a>
							<div class="layout-navigation-bar-login">
								<a class="layout-navigation-bar-login__item" href="../member/memberLogin">로그인</a>
								<a class="layout-navigation-bar-login__item" href="../member/memberJoin">회원가입</a>
								<a class="layout-navigation-bar-login__item layout-navigation-bar-login__item--xl" href="../cscenter">고객센터</a>
							</div>
							<div class="drop-down layout-navigation-bar-upload-button">
								<button class="layout-navigation-bar-upload-button__button  writeBtn1" type="button">글쓰기
									<svg class="icon" width="1em" height="1em" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd" d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path>
									</svg>
								</button>
							</div>
							</sec:authorize>
		<!-- 로그인 했을 때 헤더 -------------------------------------------------------------------------------------------------------------------------------------------------------- -->					
							<sec:authorize access="isAuthenticated()">
							<sec:authentication property="principal" var="mem"/>
								<a class="layout-navigation-bar-icon layout-navigation-bar-icon--hide-mobile" title="스크랩북" aria-label="스크랩북" href="../member/myScrap?memberNum=${mem.memberNum}&id=${mem.id}">
									<svg class="icon" width="24" height="24" stroke="currentColor" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
										<path fill="none" stroke-width="2" d="M3 20.967zm0 0V2.5a.5.5 0 01.5-.5h17a.5.5 0 01.5.5v18.467l-8.057-4.309a2 2 0 00-1.886 0L3 20.968z"></path>
									</svg>
								</a>
								
								<a class="layout-navigation-bar-icon layout-navigation-bar-icon--hide-mobile" title="알림" aria-label="알림" href="/notifications/feed">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
										<path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.04 4.19C10.16 3.16 10.6 2 12.05 2c1.35 0 1.78 1.11 1.9 2.13C21.05 5.25 21 13.43 21 19H3c0-5.48-.05-13.48 7.04-14.81zM10 19c0 1.66.9 3 2 3s2-1.34 2-3"></path>
									</svg>
								</a>
							
								<a class="layout-navigation-bar-icon" title="장바구니" aria-label="장바구니" href="/cart">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" stroke="currentColor" fill="none" stroke-linejoin="round" stroke-width="2" preserveAspectRatio="xMidYMid meet">
										<path stroke-linecap="round" d="M4 5h18l-2.6 10.5a2 2 0 0 1-2 1.5H8.6a2 2 0 0 1-2-1.5L4 5zm4 15.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0zm7 0a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0z"></path>
										<path d="M1 2h3v3"></path>
									</svg>
										<!-- <span class="layout-navigation-bar-icon__ticker"></span> -->
								</a>
								
								<div class="drop-down layout-navigation-bar-user-section my">
									<button class="layout-navigation-bar-user-button myBtn" type="button" aria-label="">
										<div class="layout-navigation-bar-user-button__image">
											<img class="image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144 3x">
											<!-- <img class="image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x"> -->
										</div>
										<svg class="layout-navigation-bar-user-button__caret" width="8" height="8" viewBox="0 0 8 8" fill="currentColor" preserveAspectRatio="xMidYMid meet">
											<path d="M0 2l4 4 4-4z"></path>
										</svg>
									</button>
								</div>
		<!-- 로그인 했을 때 헤더 -------------------------------------------------------------------------------------------------------------------------------------------------------- -->											
							<div class="drop-down layout-navigation-bar-upload-button">
								<button class="layout-navigation-bar-upload-button__button  writeBtn1" type="button">글쓰기
									<svg class="icon" width="1em" height="1em" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd" d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path>
									</svg>
								</button>
							</div>
								
							</sec:authorize>
						</div>
					</div>
				</div>
			</div>
			
			<div data-sticky-enabled="false" data-sticky-disabled="false"
				data-sticky-always="true" data-sticky-ignore="false"
				data-direction="top" data-offset="31"
				class="sticky-container layout-navigation-secondary-wrap closeMenu">
				<div class="sticky-child layout-navigation-secondary"
					style="position: relative;">
					<div class="layout-navigation-secondary__content">
						<nav class="layout-navigation-secondary__menu">
							<a class="layout-navigation-secondary__menu__item " href="/">홈</a>
								<a class="layout-navigation-secondary__menu__item layout-navigation-secondary__menu__item--active" href="../picture/picList">사진</a>
								<a class="layout-navigation-secondary__menu__item" href="../housewarming">집들이</a>
								<a class="layout-navigation-secondary__menu__item" href="../questions">질문과답변</a>
								
						</nav>
						<div
							class="layout-navigation-app-download layout-navigation__bar__app-download">
							<a class="layout-navigation-app-download__link" href="/3d_intro"><svg
									class="icon" width="20" height="20" viewBox="0 0 20 20"
									preserveAspectRatio="xMidYMid meet">
									<g fill="none" fill-rule="evenodd">
									<path fill="#35C5F0"
										d="M16.41 0H3.59A3.59 3.59 0 0 0 0 3.59v12.82A3.59 3.59 0 0 0 3.59 20h12.82A3.59 3.59 0 0 0 20 16.41V3.59A3.59 3.59 0 0 0 16.41 0"></path>
									<path fill="#FFF"
										d="M14.75 10.34c-.74 0-1.33-.6-1.33-1.34 0-.74.6-1.34 1.33-1.34s1.32.6 1.32 1.34c0 .74-.59 1.34-1.32 1.34zm-1 3.53H6.12V8.75l3.82-2.7 2.2 1.55a3.01 3.01 0 0 0-.35 1.4 3 3 0 0 0 1.98 2.83v2.04zm1-7.87c-.34 0-.66.06-.97.17l-3.17-2.24a1.18 1.18 0 0 0-1.35 0L4.5 7.28a1.2 1.2 0 0 0-.51.98v6.54c0 .66.53 1.2 1.19 1.2h9.5a1.2 1.2 0 0 0 1.18-1.2v-3.02A3 3 0 0 0 17.7 9c0-1.65-1.32-3-2.96-3z"></path></g></svg>3D인테리어<svg
									class="icon-beta" width="30" height="14"
									preserveAspectRatio="xMidYMid meet">
									<g fill="none" fill-rule="evenodd">
									<rect width="30" height="14" fill="#757575" rx="7"></rect>
									<path fill="#FFF" fill-rule="nonzero"
										d="M7.1 10.59c1.52 0 2.24-.82 2.24-1.96 0-1-.53-1.48-1.33-1.64v-.03c.76-.26 1.05-.78 1.05-1.5 0-1.09-.64-1.73-2.12-1.73H4.69v6.86h2.4zm-.37-3.94h-.9V4.64h.95c.74 0 1.13.25 1.13.99 0 .78-.5 1.02-1.18 1.02zm.2 3.02h-1.1v-2.2h1.04c.82 0 1.26.3 1.26 1.09 0 .75-.42 1.11-1.2 1.11zm7.65.92v-.97h-2.92V7.54h2.22v-.96h-2.22V4.7h2.86v-.97h-4.01v6.86h4.07zm3.8 0V4.7h1.83v-.97h-4.83v.97h1.85v5.89h1.15zm2.92 0l.58-1.74h2.39l.58 1.74h1.2l-2.3-6.86h-1.18l-2.34 6.86h1.07zm2.68-2.66h-1.83l.9-2.74h.03l.9 2.74z"></path></g></svg></a>
						</div>
					</div>
				</div>
			</div>
		</header>
<!-- 바디 -->
	<div class="container card-feed closeMenu">
	
		<div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false" data-sticky-ignore="false" data-direction="top" data-offset="81" class="sticky-container card-feed__filter-container" style=" top: 81px;">
			<div class="sticky-child card-feed__filter-wrap" style="position: relative;">
				<div class="filter card-feed__filter">
					<div class="filter-bar">
						<div class="filter-bar__control-list">
							<ul class="filter-bar__control-list__left">
								<li class="filter-bar__control-list__item filter-bar__control-list__item--icon">
									<button class="filter-bar__control-list__icon" type="button" title="필터 전체" style=" display: none;">
										<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
											<path fill="#BDBDBD" d="M18.284 4H5.716a.7.7 0 0 0-.61.362.668.668 0 0 0 0 .724l3.963 6.978c.353.632.97 1.348.971 2.076v6.181c.002.24-.054.388.149.558.203.17.343.118.444.095l3.29-1.257c.283-.095.321-.369.317-.676v-4.9c0-.73.338-1.445.69-2.077l3.963-6.978a.668.668 0 0 0 0-.724.7.7 0 0 0-.61-.362z"></path>
										</svg>
									</button>
								</li>
								
								<li class="filter-bar__control-list__item ">
									<div class="drop-down panel-drop-down filter-bar-control dropdown">
										<button class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button dropbtn" onclick="dropAll()">정렬
											<svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
												<path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path>
											</svg>
										</button>
										<div class="dropdown-content" id="all">
											<a href="./picList?order=best">역대인기순</a>
											<a href="./picList?order=recent">최신순</a>
											<!-- <a href="#">팔로잉</a>  -->
										</div>
									</div> 
								</li>
							
								<li class="filter-bar__control-list__item">
									<div class="drop-down panel-drop-down filter-bar-control dropdown">
										<button class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button dropbtn" onclick="dropHouse()">주거형태
											<svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
												<path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path>
											</svg>
										</button>
										<div class="dropdown-content" id="house">
											<a href="./picList?kind=housetype&search=원룸">원룸&amp;오피스텔</a>
											<a href="./picList?kind=housetype&search=아파트">아파트</a>
											<a href="./picList?kind=housetype&search=빌라">빌라&amp;연립</a>
											<a href="./picList?kind=housetype&search=단독주택">단독주택</a>
											<a href="./picList?kind=housetype&search=사무공간">사무공간</a>
											<a href="./picList?kind=housetype&search=상업공간">상업공간</a>
											<a href="./picList?kind=housetype&search=기타">기타</a> 
										</div>
									</div>
								</li>
								
								<li class="filter-bar__control-list__item">
									<div class="drop-down panel-drop-down filter-bar-control dropdown">
										<button class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button dropbtn" onclick="dropArea()">공간
											<svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
												<path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path>
											</svg>
										</button>
										<div class="dropdown-content" id="area">
											<a href="./picList?kind=area&search=원룸">원룸</a>
											<a href="./picList?kind=area&search=거실">거실</a>
											<a href="./picList?kind=area&search=침실">침실</a> 
											<a href="./picList?kind=area&search=주방">주방</a> 
											<a href="./picList?kind=area&search=아이방">아이방</a> 
											<a href="./picList?kind=area&search=드레스룸">드레스룸</a> 
											<a href="./picList?kind=area&search=서재">서재&amp;작업실</a> 
											<a href="./picList?kind=area&search=베란다">베란다</a> 
											<a href="./picList?kind=area&search=사무공간">사무공간</a> 
											<a href="./picList?kind=area&search=상업공간">상업공간</a> 
											<a href="./picList?kind=area&search=가구">가구&amp;소품</a>
											<a href="./picList?kind=area&search=현관">현관</a> 
											<a href="./picList?kind=area&search=외관">외관&amp;기타</a>  
										</div>
									</div>
								</li>
								
								<li class="filter-bar__control-list__item">
									<div class="drop-down panel-drop-down filter-bar-control dropdown">
										<button class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button dropbtn" onclick="dropPyeong()">평수
											<svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
												<path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path>
											</svg>
										</button>
										<div class="dropdown-content" id="pyeong">
											<a href="./picList?kind=pyeongsu&search=10평미만">10평 미만</a>
											<a href="./picList?kind=pyeongsu&search=10평대">10평대</a>
											<a href="./picList?kind=pyeongsu&search=20">20평대</a> 
											<a href="./picList?kind=pyeongsu&search=30">30평대</a>
											<a href="./picList?kind=pyeongsu&search=40">40평대</a>
											<a href="./picList?kind=pyeongsu&search=50">50평 이상</a> 
										</div>
									</div>
								</li>
								
								<li class="filter-bar__control-list__item">
									<div class="drop-down panel-drop-down filter-bar-control dropdown">
										<button class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button dropbtn" onclick="dropStyle()">스타일
											<svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
												<path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path>
											</svg>
										</button>
										<div class="dropdown-content" id="style">
											<a href="./picList?kind=style&search=모던">모던</a>
											<a href="./picList?kind=style&search=북유럽">북유럽</a>
											<a href="./picList?kind=style&search=빈티지">빈티지</a>
											<a href="./picList?kind=style&search=내추럴">내추럴</a>
											<a href="./picList?kind=style&search=프로방스">프로방스&amp;로맨틱</a>
											<a href="./picList?kind=style&search=클래식">클래식&amp;앤틱</a> 
											<a href="./picList?kind=style&search=한국">한국&amp;아시아</a>
											<a href="./picList?kind=style&search=유니크">유니크</a>
										</div>
									</div>
								</li>
								
					
							</ul>
						</div>
							<!-- <ul class="filter-bar__tag-list">
								<li class="filter-bar__tag-list__item">
									<button class="button button--color-blue button--size-50 button--shape-4 filter-bar__tag" type="button">원룸&amp;오피스텔
										<svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
											<path d="M6 4.94L3.879 2.817l-1.061 1.06L4.939 6 2.818 8.121l1.06 1.061L6 7.061l2.121 2.121 1.061-1.06L7.061 6l2.121-2.121-1.06-1.061L6 4.939zM6 12A6 6 0 1 1 6 0a6 6 0 0 1 0 12z"></path>
										</svg>
									</button>
								</li>
							<li class="filter-bar__tag-list__item">
							<button class="filter-bar__tag-list__clear" type="button">초기화</button>
							</li>
						</ul> -->
					</div>
				</div>
			</div>
		</div>
		<ul class="css-5g53pt-ListUl e6933zq1"></ul>
	
	<!-- 리스트 시작 ----------------------------------------------------------------------------------- -->
		<div class="virtualized-list card-feed__content row" ">
			
			<c:forEach items="${pic}" var="pic" varStatus="num">
			<div class="card-feed__item-wrap col-12 col-md-4 col-lg-3">
						<div class="card-feed__item">
							<article class="card-collection-item">
								<div class="card-item-writer">
									<address class="card-item-writer__content">
										<div class="card-item-writer__header">
											<a class="card-item-writer__link" href="#">
												<!-- <img class="card-item-writer__image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163272802669688346.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163272802669688346.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163272802669688346.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163272802669688346.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x"> -->
												
													<span class="card-item-writer__name">${pic.memberVO.nickname}</span>
													<sec:authorize access="isAuthenticated()">
													<sec:authentication property="principal" var="member"/>
													<input  type="hidden" value="${member.memberNum}" id='memberNum'>
													</sec:authorize>
													<input type="hidden" value="${pic.post_id}" id="post_id${num.index}">
											</a>
											<span class="card-item-writer__separator"> </span>
											<button class="card-item-writer__follow" type="button">팔로우</button>
										</div>
									<p class="card-item-writer__introduction"></p>
									</address>
								</div>
								
								<div id="card-collection-item-10864619" class="card-collection-item__content">
									<a class="card-collection-item__content__link" aria-describedby="card-collection-item-10864619" href="./picOne?post_id=${pic.post_id}"></a>
									<div class="expandable-text card-item-description card-collection-item__description">
										<div class="card-item-description__content">${pic.post_text}</div>
									</div>
									<div class="card-collection-item__image">
										<div class="card-item-image">
										
										  <c:forEach items="${pic.pictureFileVO}" var="fileVO" varStatus="status">
										  	
										  	<c:if test="${status.index eq 0 }">
										  		<img class="image" alt="" src="../resources/upload/picture/${fileVO.picFilename}">
										  	</c:if>
										  </c:forEach>
											
											<span class="card-item-image__collection-icon">
												<svg class="icon" width="18" height="18" viewBox="0 0 18 18" preserveAspectRatio="xMidYMid meet">
													<g fill="none" fill-rule="evenodd">
														<path stroke="#000" stroke-opacity=".14" stroke-width=".75" d="M14.27 3.85H15a2.62 2.62 0 0 1 2.62 2.63V15A2.62 2.62 0 0 1 15 17.63H6.49A2.62 2.62 0 0 1 3.85 15v-.73h7.8a2.63 2.63 0 0 0 2.62-2.62v-7.8zM.37 3A2.62 2.62 0 0 1 3 .37h8.52A2.62 2.62 0 0 1 14.15 3v8.52a2.62 2.62 0 0 1-2.63 2.63H3a2.62 2.62 0 0 1-2.63-2.63V3z"></path>
														<path fill="#FFF" fill-opacity=".74" d="M14.64 4.22H15c1.25 0 2.26 1 2.26 2.26V15c0 1.24-1 2.25-2.25 2.25H6.48c-1.25 0-2.26-1-2.26-2.25v-.35h7.43a3 3 0 0 0 3-3V4.22zM.75 3C.75 1.76 1.75.75 3 .75h8.52c1.25 0 2.26 1 2.26 2.25v8.52c0 1.25-1 2.26-2.26 2.26H3c-1.24 0-2.25-1-2.25-2.26V3z"></path>
													</g>
												</svg>
											</span>
										
										<span class="card-item-image__view-count">${pic.hit}</span>
										</div>
									</div>
									<aside class="card-item-action-list">
									
									<!-- 좋아요 빈 하트일때  -->								
										<sec:authorize access="isAuthenticated()" >
											<!-- 로그인한 사람이 좋아요 누른 게시글이 있을 때 -->
											<c:if test="${not empty heartPost}">
											
												 <c:forEach items="${heartPost}" var="heartPost" varStatus="hPostStatus"> 
												
														<c:if test="${heartPost.post_id eq pic.post_id }">
															<input type="hidden" value="${heartPost.post_id}" id="post_num${hPostStatus.index}">										
															 <button class="card-item-action-list__action card-item-action-list__action--active heartFull${hPostStatus.index}" id="ht${hPostStatus.index}" type="button">
																<svg class="icon icon--stroke heartEmpty${num.index}" aria-label="좋아요" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
																	<path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
																</svg>
														
																<%-- <c:forEach items="${heartCount}" var="hCount">
																<c:if test="${hCount.post_id eq pic.post_id }">
																	<span class="hCount">${hCount.count}</span>
																</c:if>
																</c:forEach> --%>
															</button> 
														</c:if>
												
												 </c:forEach> 
											</c:if>	
											
											<!-- 좋아요한 게시글이 아닐때  -->	
										 <button class="card-item-action-list__action like${num.index}"   type="button">
											<svg class="icon icon--stroke heartEmpty${num.index}" aria-label="좋아요" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
												<path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
											</svg>
											
												<%-- <c:forEach items="${heartCount}" var="hCount">
												<c:if test="${hCount.post_id eq pic.post_id }">
													<span class="hCount">${hCount.count}</span>
												</c:if>
												</c:forEach> --%>
										</button>
										 
										
										
									<c:if test="${not empty scrapPost }">
										<c:forEach items="${scrapPost}" var="scrapPost" varStatus="sPostStatus">
											<c:if test="${scrapPost.post_id eq pic.post_id}">
													<input type="hidden" value="${scrapPost.post_id}" id="spost_num${sPostStatus.index}">
												<button class="card-item-action-list__action card-item-action-list__action--active scrapFull${sPostStatus.index}" id="sc${sPostStatus.index}" type="button">
													<svg class="icon icon--stroke emptyScrap${num.index}" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
														<path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path>
													</svg>
													<%-- <c:forEach items="${scrapCount}" var="sCount">
													<c:if test="${sCount.post_id eq pic.post_id }">
														<span class="sCount">${sCount.scrapCount}</span>
													</c:if>
													</c:forEach> --%>
											</button>
											</c:if>
										</c:forEach>
										
									</c:if>
									<!-- ---------------------------------------------------------------- -->
										<button class="card-item-action-list__action scrap${num.index}" type="button">
											<svg class="icon icon--stroke emptyScrap${num.index}" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
												<path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path>
											</svg>
												<%-- <c:forEach items="${scrapCount}" var="sCount">
												<c:if test="${sCount.post_id eq pic.post_id }">
													<span class="sCount">${sCount.scrapCount}</span>
												</c:if>
												</c:forEach> --%>
										</button>
									<!-- -------------------------------------------------------------------- -->	
										
										<a class="card-item-action-list__action" href="#">
											<svg class="icon" aria-label="댓글 달기" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
												<path fill="currentColor" fill-rule="nonzero" d="M13.665 18.434l.53-.066C19.69 17.679 23 14.348 23 10c0-4.942-4.235-8.5-11-8.5S1 5.058 1 10c0 4.348 3.31 7.68 8.804 8.368l.531.066L12 21.764l1.665-3.33zm-3.985.926C3.493 18.585 0 14.69 0 10 0 4.753 4.373.5 12 .5S24 4.753 24 10c0 4.69-3.493 8.585-9.68 9.36l-1.647 3.293c-.374.75-.974.744-1.346 0L9.68 19.36z"></path>
											</svg>
										 <c:forEach items="${count}" var="count">
										 <c:if test="${count.post_id eq pic.post_id}">
												<span class="count">${count.count}</span>
												
												</c:if>
										 </c:forEach> 
										</a>
										</sec:authorize>
										 <!-- 로그인 안했을때 -->
										<sec:authorize access="!isAuthenticated()" >
										<button class="card-item-action-list__action" type="button">
											<svg class="icon icon--stroke " aria-label="좋아요" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
												<path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
											</svg>
											
												<%-- <c:forEach items="${heartCount}" var="hCount">
												<c:if test="${hCount.post_id eq pic.post_id }">
													<span class="hCount">${hCount.count}</span>
												</c:if>
												</c:forEach> --%>
										</button>
										<!-- ---------------------------------------------------------------- -->
										<button class="card-item-action-list__action " type="button">
											<svg class="icon icon--stroke " aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
												<path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path>
											</svg>
												<%--  <c:forEach items="${scrapCount}" var="sCount">
												<c:if test="${sCount.post_id eq pic.post_id }">
													<span class="sCount">${sCount.scrapCount}</span>
												</c:if>
												</c:forEach>  --%>
										</button>
									<!-- -------------------------------------------------------------------- -->	
										
										<a class="card-item-action-list__action" href="#">
											<svg class="icon" aria-label="댓글 달기" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
												<path fill="currentColor" fill-rule="nonzero" d="M13.665 18.434l.53-.066C19.69 17.679 23 14.348 23 10c0-4.942-4.235-8.5-11-8.5S1 5.058 1 10c0 4.348 3.31 7.68 8.804 8.368l.531.066L12 21.764l1.665-3.33zm-3.985.926C3.493 18.585 0 14.69 0 10 0 4.753 4.373.5 12 .5S24 4.753 24 10c0 4.69-3.493 8.585-9.68 9.36l-1.647 3.293c-.374.75-.974.744-1.346 0L9.68 19.36z"></path>
											</svg>
										 <c:forEach items="${count}" var="count">
										 		<c:if test="${count.post_id eq pic.post_id}">
												<span class="count">${count.count}</span>
												</c:if>
										 </c:forEach>  
										</a>
										</sec:authorize>  
									</aside>
								</div>
								
								<!-- <div class="card-item-comment-wrap">
									<article class="card-item-comment" aria-label="댓글">
										<address class="card-item-comment__writer">
											<a class="card-item-comment__writer__link" href="#">
												<div class="card-item-comment__writer__image">
													<img class="image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163817191984430831.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163817191984430831.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163817191984430831.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163817191984430831.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 3x">
												</div>
													<span class="card-item-comment__writer__name">댓글</span>
											</a>
													<span class="card-item-comment__writer__separator">: </span>
										</address>
										
										<a class="card-item-comment__link" href="/contents/card_collections/10864619?affect_type=CardIndex&amp;affect_id=0#comment">
											<p class="card-item-comment__content">xx</p>
										</a>
									</article>
								</div> -->
								
							</article>
						</div>
					</div>
					</c:forEach>
		</div>
	</div>
</div>		

<!-- 팝업메뉴 나오는 곳------------------------------------------------------------------------------------------ -->
	<div>
		<div class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-2 mymenu" data-popout="true" style="position: absolute; z-index: 1000; top: 70px; right: 501.5px; display: none;">
			<div class="animated-popout drop-down__content layout-navigation-bar-user-section__content open open-active">
				<ul class="layout-navigation-bar-user-menu">
					<sec:authorize access="isAuthenticated()">
					<sec:authentication property="principal" var="num"/>
					<li class="layout-navigation-bar-user-menu__item-wrap">
						<a class="layout-navigation-bar-user-menu__item" href="../member/mypage?memberNum=${num.memberNum}&?id=${num.id}">마이페이지</a>
					</li>
					</sec:authorize>
					<li class="layout-navigation-bar-user-menu__item-wrap">
						<a class="layout-navigation-bar-user-menu__item" href="/user_shopping_pages/order_list">나의 쇼핑</a>
					</li>
					
					<li class="layout-navigation-bar-user-menu__item-wrap">
						<a class="layout-navigation-bar-user-menu__item" href="../cscenter">고객센터</a>
					</li>
					<li class="layout-navigation-bar-user-menu__item-wrap">
						<button class="layout-navigation-bar-user-menu__item logout" type="button">로그아웃</button>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- 글쓰기 팝업 로그인 안했을 때---------------------------------- -->
	<sec:authorize access="!isAuthenticated()">
	<div>
		<div class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-1 writemenu" data-popout="true" style="display:none; position: absolute; z-index: 1000; left: 1470px; top: 64px; transform: translateX(-50%);">
			<div class="animated-popout drop-down__content open open-active">
				<div class="_2TAbe navigation-upload-dropdown-content">
					<a class="navigation-upload-dropdown-content-item" href="../member/memberLogin">
						<div class="navigation-upload-dropdown-content-item__icon">
							<svg fill="none" viewBox="0 0 36 36" width="36" height="36" preserveAspectRatio="xMidYMid meet">
								<rect x="6.54" y="3.59" width="27" height="29" rx="2.5" transform="rotate(4 6.54 3.6)" fill="#DBDBDB" stroke="#000" stroke-linejoin="round"></rect>
								<rect x="2.5" y="1.5" width="27" height="29" rx="2.5" fill="#fff" stroke="#000" stroke-linejoin="round"></rect>
								<rect x="5" y="4" width="22" height="22" rx="1" fill="#FFE2C7"></rect>
								<path fill-rule="evenodd" clip-rule="evenodd" d="M14 7l5 .45v3.5l-5-.45V7zm0 4.5V15l5 .45v-3.5l-5-.45zm6 .55v3.5l5 .45v-3.5l-5-.45zm5-.55V8l-5-.45v3.5l5 .45z" fill="#fff"></path>
								<path fill-rule="evenodd" clip-rule="evenodd" d="M5 19l22 2v7L5 26v-7z" fill="#E6A87C"></path>
								<path fill-rule="evenodd" clip-rule="evenodd" d="M5 3.45h5v16l-5 4v-20z" fill="#F1C8A3"></path>
							</svg>
						
							<svg fill="none" viewBox="0 0 18 18" width="18" height="18" preserveAspectRatio="xMidYMid meet" class="css-13x8x0f-DropDownNewIcon e5mhexx0">
								<path d="M0 9a9 9 0 1118 0A9 9 0 010 9z" fill="#fff"></path>
								<path fill-rule="evenodd" clip-rule="evenodd" d="M9 18A9 9 0 109 0a9 9 0 000 18zm-1.7-5.25H5.26v-7.5h2.61l2.8 4.2h.03v-4.2h2.06v7.5h-2.3L7.36 8.07h-.05v4.68z" fill="#F77"></path>
							</svg>
						</div>
						<div class="navigation-upload-dropdown-content-item__content">
							<div class="navigation-upload-dropdown-content-item__title">사진 올리기</div>
							<div class="navigation-upload-dropdown-content-item__subtitle">동영상 기능이 추가되었어요!</div>
						</div>
					</a>
					<a class="navigation-upload-dropdown-content-item" href="../member/memberLogin">
						<div class="navigation-upload-dropdown-content-item__icon">
							<svg width="36" height="36" viewBox="0 0 36 36" preserveAspectRatio="xMidYMid meet">
								<g fill="none" fill-rule="evenodd">
									<path d="M0 0h36v36H0z"></path>
									<path fill="#FFF6E6" d="M27.2 29.31H4.8V14.38h22.4"></path>
									<path fill="#EDE2CD" d="M27.2 17.18H4.8v-2.8h22.4"></path>
									<path stroke="#000" stroke-linecap="round" stroke-linejoin="round" d="M4.8 29.31V14.38h22.4v14.93H4.8z"></path>
									<path fill="#FFF" d="M16 19.05a4.67 4.67 0 014.67 4.66v5.6h-9.34v-5.6A4.67 4.67 0 0116 19.05z"></path>
									<path fill="#fff" d="M16 19.05a4.67 4.67 0 014.67 4.66v5.6h-9.34v-5.6A4.67 4.67 0 0116 19.05z"></path>
									<path stroke="#000" d="M16 19.05a4.67 4.67 0 014.67 4.66v5.6h-9.34v-5.6A4.67 4.67 0 0116 19.05z"></path>
									<path fill="#FBDEC1" d="M2.94 14.38a.9.9 0 01-.81-1.3l3.25-6.6a.9.9 0 01.8-.5h19.64c.34 0 .65.2.8.5l3.25 6.6a.9.9 0 01-.8 1.3H2.93z"></path>
									<path fill="#E9C39D" d="M2.94 14.38a.9.9 0 01-.81-1.3l.74-1.5h26.26l.74 1.5a.9.9 0 01-.8 1.3H2.92z"></path>
									<path stroke="#000" stroke-linecap="round" stroke-linejoin="round" d="M2.94 14.38a.9.9 0 01-.81-1.3l3.25-6.6a.9.9 0 01.8-.5h19.64c.34 0 .65.2.8.5h0l3.25 6.6a.9.9 0 01-.8 1.3h0H2.93z"></path>
									
									<g transform="translate(26 9)">
										<path fill="#fff" d="M0 5h8.07v12H0z"></path>
										<path fill="#ffdb92" d="M0 0h8v4H0z"></path>
										<path d="M8.5 17.43H-.52 8.5L4 23.8l-4.52-6.37H8.5" fill="#fff6e6"></path>
										<path d="M8.5 1v0A1.49 1.49 0 007-.5H1v0A1.5 1.5 0 00-.5 1l-.02 16.43L4 23.8l4.5-6.37z" stroke="#000"></path>
										<path fill="#000" d="M4 23l2-2H2z"></path>
										<rect width="6" height="2" x="-14" y="3" stroke="#000" rx="1" transform="rotate(-90)" ry="1"></rect>
										<rect width="5" height="1" x="-13.5" y="3.5" fill="#ffdb92" rx=".5" transform="rotate(-90)" ry=".5"></rect>
										<path fill="#000" d="M0 4h8v1H0z" opacity=".9"></path>
										<path d="M-.52 17.43H8.5" stroke="#000"></path>
									</g>
									<path fill="#000" d="M30 32l2-2h-4z"></path>
								</g>
							</svg>
						</div>
						<div class="navigation-upload-dropdown-content-item__content">
							<div class="navigation-upload-dropdown-content-item__title">집들이 글쓰기</div>
							<div class="navigation-upload-dropdown-content-item__subtitle">집에 관한 이야기를 글로 작성해보세요.</div>
						</div>
					</a>
				
					<a class="navigation-upload-dropdown-content-item" href="../member/memberLogin">
						<div class="navigation-upload-dropdown-content-item__icon">
							<svg width="36" height="36" viewBox="0 0 36 36" preserveAspectRatio="xMidYMid meet">
								<g fill="none" fill-rule="evenodd">
									<path d="M0 0h36v36H0z"></path>
								
									<g stroke-linejoin="round" transform="translate(2 3)">
									<rect width="4" height="8" x="3" y="21" fill="#FFB787" stroke="#000" rx="2"></rect>
									<rect fill="#FFE2C7" width="24" height="25" rx="3"></rect>
									<rect fill="#ffe2c7" width="24" height="25" rx="3"></rect>
									<rect stroke="#000" width="24" height="25" rx="3" stroke-width="1.2"></rect>
									<rect width="6" height="3" x="9" y="5" fill="#DB9F77" stroke="#FFF" rx="1.5"></rect>
									<rect width="6" height="3" x="9" y="17" fill="#DB9F77" stroke="#FFF" rx="1.5"></rect>
									<path fill="#FFDB92" stroke="#EDC29B" d="M1.5 12.5h21"></path>
									</g>
								
									<path fill="#35C5F0" d="M26.25 31.53l-3.7 1.32a1 1 0 01-1.34-.97l.1-3.93a.99.99 0 00-.2-.64l-2.4-3.11a1 1 0 01.51-1.57l3.77-1.12a1 1 0 00.55-.39l2.22-3.24a1 1 0 011.65 0l2.22 3.24a1 1 0 00.55.4l3.77 1.1a1 1 0 01.5 1.58l-2.4 3.11a1 1 0 00-.2.64l.11 3.93a1 1 0 01-1.33.97l-3.71-1.32a1 1 0 00-.67 0z"></path>
									<path fill="#9AE2F7" d="M27.15 17.61a1 1 0 01.26.26l2.22 3.25c.06.09.13.16.22.23l-8.59 8.58.06-1.98a.99.99 0 00-.21-.64l-2.4-3.11a1 1 0 01.51-1.57l3.77-1.12a1 1 0 00.55-.39l2.22-3.24a1 1 0 011.39-.26z"></path>
									<path stroke="#000" d="M26.29 30.85l-3.31 1.17a.9.9 0 01-1.2-.86l.1-3.51c0-.2-.06-.4-.18-.57l-2.14-2.78a.9.9 0 01.45-1.4l3.37-.99a.9.9 0 00.48-.35l1.99-2.9a.9.9 0 011.47 0l1.99 2.9c.11.17.28.3.48.35l3.37 1a.9.9 0 01.45 1.4l-2.14 2.77a.89.89 0 00-.18.57l.1 3.5a.9.9 0 01-1.2.87l-3.3-1.17a.9.9 0 00-.6 0z" stroke-width="1.2"></path>
								</g>
							</svg>
						</div>
						<div class="navigation-upload-dropdown-content-item__content">
							<div class="navigation-upload-dropdown-content-item__title">상품 리뷰 쓰기</div>
							<div class="navigation-upload-dropdown-content-item__subtitle">상품 리뷰를 작성하고 포인트도 받아보세요.</div>
						</div>
					</a>
					
				
				</div>
			</div>
		</div>
	</div>
	</sec:authorize>	
	<sec:authorize access="isAuthenticated()">
	<div>
		<div class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-1 writemenu" data-popout="true" style="display:none; position: absolute; z-index: 1000; left: 1470px; top: 64px; transform: translateX(-50%);">
			<div class="animated-popout drop-down__content open open-active">
				<div class="_2TAbe navigation-upload-dropdown-content">
					<a class="navigation-upload-dropdown-content-item" href="../picture/picInsert">
						<div class="navigation-upload-dropdown-content-item__icon">
							<svg fill="none" viewBox="0 0 36 36" width="36" height="36" preserveAspectRatio="xMidYMid meet">
								<rect x="6.54" y="3.59" width="27" height="29" rx="2.5" transform="rotate(4 6.54 3.6)" fill="#DBDBDB" stroke="#000" stroke-linejoin="round"></rect>
								<rect x="2.5" y="1.5" width="27" height="29" rx="2.5" fill="#fff" stroke="#000" stroke-linejoin="round"></rect>
								<rect x="5" y="4" width="22" height="22" rx="1" fill="#FFE2C7"></rect>
								<path fill-rule="evenodd" clip-rule="evenodd" d="M14 7l5 .45v3.5l-5-.45V7zm0 4.5V15l5 .45v-3.5l-5-.45zm6 .55v3.5l5 .45v-3.5l-5-.45zm5-.55V8l-5-.45v3.5l5 .45z" fill="#fff"></path>
								<path fill-rule="evenodd" clip-rule="evenodd" d="M5 19l22 2v7L5 26v-7z" fill="#E6A87C"></path>
								<path fill-rule="evenodd" clip-rule="evenodd" d="M5 3.45h5v16l-5 4v-20z" fill="#F1C8A3"></path>
							</svg>
						
							<svg fill="none" viewBox="0 0 18 18" width="18" height="18" preserveAspectRatio="xMidYMid meet" class="css-13x8x0f-DropDownNewIcon e5mhexx0">
								<path d="M0 9a9 9 0 1118 0A9 9 0 010 9z" fill="#fff"></path>
								<path fill-rule="evenodd" clip-rule="evenodd" d="M9 18A9 9 0 109 0a9 9 0 000 18zm-1.7-5.25H5.26v-7.5h2.61l2.8 4.2h.03v-4.2h2.06v7.5h-2.3L7.36 8.07h-.05v4.68z" fill="#F77"></path>
							</svg>
						</div>
						<div class="navigation-upload-dropdown-content-item__content">
							<div class="navigation-upload-dropdown-content-item__title">사진 올리기</div>
							<div class="navigation-upload-dropdown-content-item__subtitle">동영상 기능이 추가되었어요!</div>
						</div>
					</a>
					<a class="navigation-upload-dropdown-content-item" href="../housewarming/write">
						<div class="navigation-upload-dropdown-content-item__icon">
							<svg width="36" height="36" viewBox="0 0 36 36" preserveAspectRatio="xMidYMid meet">
								<g fill="none" fill-rule="evenodd">
									<path d="M0 0h36v36H0z"></path>
									<path fill="#FFF6E6" d="M27.2 29.31H4.8V14.38h22.4"></path>
									<path fill="#EDE2CD" d="M27.2 17.18H4.8v-2.8h22.4"></path>
									<path stroke="#000" stroke-linecap="round" stroke-linejoin="round" d="M4.8 29.31V14.38h22.4v14.93H4.8z"></path>
									<path fill="#FFF" d="M16 19.05a4.67 4.67 0 014.67 4.66v5.6h-9.34v-5.6A4.67 4.67 0 0116 19.05z"></path>
									<path fill="#fff" d="M16 19.05a4.67 4.67 0 014.67 4.66v5.6h-9.34v-5.6A4.67 4.67 0 0116 19.05z"></path>
									<path stroke="#000" d="M16 19.05a4.67 4.67 0 014.67 4.66v5.6h-9.34v-5.6A4.67 4.67 0 0116 19.05z"></path>
									<path fill="#FBDEC1" d="M2.94 14.38a.9.9 0 01-.81-1.3l3.25-6.6a.9.9 0 01.8-.5h19.64c.34 0 .65.2.8.5l3.25 6.6a.9.9 0 01-.8 1.3H2.93z"></path>
									<path fill="#E9C39D" d="M2.94 14.38a.9.9 0 01-.81-1.3l.74-1.5h26.26l.74 1.5a.9.9 0 01-.8 1.3H2.92z"></path>
									<path stroke="#000" stroke-linecap="round" stroke-linejoin="round" d="M2.94 14.38a.9.9 0 01-.81-1.3l3.25-6.6a.9.9 0 01.8-.5h19.64c.34 0 .65.2.8.5h0l3.25 6.6a.9.9 0 01-.8 1.3h0H2.93z"></path>
									
									<g transform="translate(26 9)">
										<path fill="#fff" d="M0 5h8.07v12H0z"></path>
										<path fill="#ffdb92" d="M0 0h8v4H0z"></path>
										<path d="M8.5 17.43H-.52 8.5L4 23.8l-4.52-6.37H8.5" fill="#fff6e6"></path>
										<path d="M8.5 1v0A1.49 1.49 0 007-.5H1v0A1.5 1.5 0 00-.5 1l-.02 16.43L4 23.8l4.5-6.37z" stroke="#000"></path>
										<path fill="#000" d="M4 23l2-2H2z"></path>
										<rect width="6" height="2" x="-14" y="3" stroke="#000" rx="1" transform="rotate(-90)" ry="1"></rect>
										<rect width="5" height="1" x="-13.5" y="3.5" fill="#ffdb92" rx=".5" transform="rotate(-90)" ry=".5"></rect>
										<path fill="#000" d="M0 4h8v1H0z" opacity=".9"></path>
										<path d="M-.52 17.43H8.5" stroke="#000"></path>
									</g>
									<path fill="#000" d="M30 32l2-2h-4z"></path>
								</g>
							</svg>
						</div>
						<div class="navigation-upload-dropdown-content-item__content">
							<div class="navigation-upload-dropdown-content-item__title">집들이 글쓰기</div>
							<div class="navigation-upload-dropdown-content-item__subtitle">집에 관한 이야기를 글로 작성해보세요.</div>
						</div>
					</a>
				
					<a class="navigation-upload-dropdown-content-item" href="#">
						<div class="navigation-upload-dropdown-content-item__icon">
							<svg width="36" height="36" viewBox="0 0 36 36" preserveAspectRatio="xMidYMid meet">
								<g fill="none" fill-rule="evenodd">
									<path d="M0 0h36v36H0z"></path>
								
									<g stroke-linejoin="round" transform="translate(2 3)">
									<rect width="4" height="8" x="3" y="21" fill="#FFB787" stroke="#000" rx="2"></rect>
									<rect fill="#FFE2C7" width="24" height="25" rx="3"></rect>
									<rect fill="#ffe2c7" width="24" height="25" rx="3"></rect>
									<rect stroke="#000" width="24" height="25" rx="3" stroke-width="1.2"></rect>
									<rect width="6" height="3" x="9" y="5" fill="#DB9F77" stroke="#FFF" rx="1.5"></rect>
									<rect width="6" height="3" x="9" y="17" fill="#DB9F77" stroke="#FFF" rx="1.5"></rect>
									<path fill="#FFDB92" stroke="#EDC29B" d="M1.5 12.5h21"></path>
									</g>
								
									<path fill="#35C5F0" d="M26.25 31.53l-3.7 1.32a1 1 0 01-1.34-.97l.1-3.93a.99.99 0 00-.2-.64l-2.4-3.11a1 1 0 01.51-1.57l3.77-1.12a1 1 0 00.55-.39l2.22-3.24a1 1 0 011.65 0l2.22 3.24a1 1 0 00.55.4l3.77 1.1a1 1 0 01.5 1.58l-2.4 3.11a1 1 0 00-.2.64l.11 3.93a1 1 0 01-1.33.97l-3.71-1.32a1 1 0 00-.67 0z"></path>
									<path fill="#9AE2F7" d="M27.15 17.61a1 1 0 01.26.26l2.22 3.25c.06.09.13.16.22.23l-8.59 8.58.06-1.98a.99.99 0 00-.21-.64l-2.4-3.11a1 1 0 01.51-1.57l3.77-1.12a1 1 0 00.55-.39l2.22-3.24a1 1 0 011.39-.26z"></path>
									<path stroke="#000" d="M26.29 30.85l-3.31 1.17a.9.9 0 01-1.2-.86l.1-3.51c0-.2-.06-.4-.18-.57l-2.14-2.78a.9.9 0 01.45-1.4l3.37-.99a.9.9 0 00.48-.35l1.99-2.9a.9.9 0 011.47 0l1.99 2.9c.11.17.28.3.48.35l3.37 1a.9.9 0 01.45 1.4l-2.14 2.77a.89.89 0 00-.18.57l.1 3.5a.9.9 0 01-1.2.87l-3.3-1.17a.9.9 0 00-.6 0z" stroke-width="1.2"></path>
								</g>
							</svg>
						</div>
						<div class="navigation-upload-dropdown-content-item__content">
							<div class="navigation-upload-dropdown-content-item__title">상품 리뷰 쓰기</div>
							<div class="navigation-upload-dropdown-content-item__subtitle">상품 리뷰를 작성하고 포인트도 받아보세요.</div>
						</div>
					</a>
					
				
				</div>
			</div>
		</div>
	</div>
	</sec:authorize>		
	
	
<script type="text/javascript" src="../resources/js/picList.js"></script>

<script type="text/javascript">
//현재 로그인한 사람 번호
let memberNum = $("#memberNum").val();

//꽉찬 하트 있을땐 빈하트 지우기
for(let i=0; i<10; i++){
	let ht_exist = $('#ht'+i).length ? true: false;
	//console.log(ht_exist)
	if(ht_exist){
		//let cla = $(this).parent().siblings('button').hasClass('card-item-action-list__action');
		//let cla= $(this).parent().next().next().hasClass('card-item-action-list__action');
		let cla = $('#ht'+i).attr('class');
		let delCla = $('#ht'+i).next().attr('class');
		console.log(delCla);
		$('#ht'+i).next().hide();
		
	}
	
}
//꽉찬 스크랩 있을 떈 빈스크랩 지우기
for(let i=0; i<100; i++){
	let sc_exist= $('#sc'+i).length ? true:false;
	console.log(sc_exist);
	if(sc_exist){
		$('#sc'+i).next().hide();
	}
}

//하트 누른거 있는지 확인
for(let i=0; i< 10; i++){
	$('.heartFull'+i).click(function(){
		let heartC = $(this).attr('class');
		let  emptyHeart = 'card-item-action-list__action like'+i+'';
		let post_id = $('#post_num'+i).val();
		if(heartC != emptyHeart){
			console.log('같지않음');
			//$(this).attr('class', 'card-item-action-list__action like'+i+'');
			$(this).next().show();
			$(this).remove();
			//여기서 ajax로 하트 delete하기
			$.ajax({
				type:"POST",
				url:"./heartDelete",
				data:{
					post_id:post_id,
					memberNum:memberNum
				},
				success:function(result){
					console.log("하트 삭제 성공")
				},
				error:function(error){
					console.log(error)
				}
			});
		}
	})
	
}

//스크랩 누른거 있다면
for(let i=0; i<100; i++){
	$('.scrapFull'+i).click(function(){
		let scrapC = $(this).attr('class');
		let emptyScrap = 'card-item-action-list__action scrap'+i+'';
		let post_id = $('#spost_num'+i).val();
		
		if(scrapC != emptyScrap){
			console.log('같지않음');
			$(this).next().show();
			$(this).remove();
			
			$.ajax({
				type:"POST",
				url:"./scrapDelete",
				data:{
					post_id:post_id,
					memberNum:memberNum
				},
				success:function(result){
					console.log("스크랩 삭제 성공");
				},
				error:function(error){
					console.log(error);
				}
			});
		}
		
	})
	
}

	
//하트 클릭시 액티브로 바꾸기 - 빈하트에서 -꽉찬 하트만들기
for(let i=0; i<100; i++){
	let post_id = $('#post_id'+i).val();
	//console.log(post_id, memberNum);
	$('.like'+i).click(function(){
		let classattr = $(this).attr('class');
		console.log("클래스명", classattr);
		let emptyHeart = 'card-item-action-list__action like'+i+'';
		
		if(classattr == emptyHeart){
			console.log('같음')
			$(this).attr('class', 'card-item-action-list__action card-item-action-list__action--active')
			console.log("클래스명", $(this).attr('class'));
			//여기서 ajax로 하트 insert 하기
			 $.ajax({
				type:"POST",
				url:"./heartInsert",
				data:{
					post_id:post_id,
					memberNum:memberNum
				},
				success:function(result){
					console.log("하트 인서트 성공")
				},
				error:function(error){
					console.log(error)
				}
			});
			//꽉찬 하트라면
		}else if(classattr != emptyHeart){
			console.log('같지않음');
			$(this).attr('class', 'card-item-action-list__action like'+i+'');
			//여기서 ajax로 하트 delete하기
			$.ajax({
				type:"POST",
				url:"./heartDelete",
				data:{
					post_id:post_id,
					memberNum:memberNum
				},
				success:function(result){
					console.log("하트 삭제 성공")
				},
				error:function(error){
					console.log(error)
				}
			});
		}

	});
	
};


//스크랩 클릭시 꽉찬 스크랩 만들기
for(let i=0; i<100; i++){
		let post_id = $('#post_id'+i).val();
		
	$('.scrap'+i).click(function(){
		
		let scrapClass = $(this).attr('class')
		let emptyScrap = 'card-item-action-list__action scrap'+i+'';
		console.log(scrapClass);
		
		if(scrapClass == emptyScrap){
			console.log("같음");
			$(this).attr('class', 'card-item-action-list__action card-item-action-list__action--active')
			//ajax로 스크랩 인서트하기
			$.ajax({
				type:"POST",
				url:"./scrapInsert",
				data:{
					post_id:post_id,
					memberNum:memberNum
				},
				success:function(result){
					console.log("스크랩 성공");
				},
				error:function(error){
					console.log(error);
				}
			});
			
		}else if(scrapClass != emptyScrap){
			console.log("같지 않음");
			
			$(this).attr('class', 'card-item-action-list__action scrap'+i+'');
			//ajax로 스크랩 삭제
			$.ajax({
				type:"POST",
				url:"./scrapDelete",
				data:{
					post_id:post_id,
					memberNum:memberNum
				},
				success:function(result){
					console.log("스크랩 삭제 성공");
				},
				error:function(error){
					console.log(error);
				}
			});
		}
		
	});
};
/* 
$('.write').click(function(){
	location.href="./picInsert";
}) */

//마이메뉴 선택하면 마이페이지/로그아웃 등 드롭다운 메뉴 보여주기

	$('.myBtn').click(function(){
		$('.mymenu').css('display', 'block');
	})
	
// 이외의 영역을 클릭하면 사라지기	

	$('.closeMenu').click(function(e){
		//alert('마이메뉴');
		
		 if(!$(e.target).hasClass('mymenu')){
			$('.mymenu').css('display', 'none');
		}  
	});
	
// 글쓰기 선택하면 메뉴 보여주기
	
	$('.writeBtn1').click(function(){
		$('.writemenu').css('display', 'block');
	})

// 이외의 영역을 클릭하면 사라지기 
	$('.closeMenu').click(function(e){
		 if(!$(e.target).hasClass('writemenu')){
			$('.writemenu').css('display', 'none');
		} 
	});

	$('.logout').click(function(){
		location.href="../member/memberLogout"
	})


/* //로그인한 사람 하트 게시글 가져오기
$(document).ready(function(){
	$.ajax({
		type:"POST",
		url:"./heartPost",
		data:{
			memberNum:memberNum			
		},
		success:function(){
			console.log('하트 가져오기')
		},
		error:function(error){
			console.log(error)
		}
	})
}) */ 


</script>



</body>
</html>