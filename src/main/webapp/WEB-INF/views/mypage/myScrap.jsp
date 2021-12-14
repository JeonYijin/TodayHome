<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&amp;display=swap&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/preamble-97ede701.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/App-6e6c2f0c.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/templates-Home-HomePage-f3a55bf4.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/21-0e75de9b.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/23-2ef16b9a.chunk.css">
<link rel="stylesheet" href="../resources/css/mypage.css">
<link rel="stylesheet" href="../resources/css/myScrap.css">
<!-- <link rel="stylesheet" href="../resources/css/myPicture.css"> -->
<style data-emotion="css 1293549-Container" data-s="">
.css-1293549-Container{
	display:-webkit-box;
	display:-webkit-flex;
	display:-ms-flexbox;
	display:flex;
	-webkit-align-items:center;
	-webkit-box-align:center;
	-ms-flex-align:center;
	align-items:center;
}
.css-1p6gxrd-Info{
	font-size:10px;
	line-height:14px;
	color:#828c94;
	margin-left:8px;
}
.css-wkl218-SectionWrapper{
margin-top:32px;
}
@media (min-width: 768px){
.css-wkl218-SectionWrapper{
margin-top:26px;
}
}
.css-167c30c-Wrapper{position:absolute;width:100%;height:100%;box-sizing:border-box;z-index:1;pointer-events:none;}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	
	<div class="layout">
	<sec:authentication property="principal" var="member"/>
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
								class="layout-navigation-primary__menu__item "
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
							
		<!-- 로그인 했을 때 헤더 -------------------------------------------------------------------------------------------------------------------------------------------------------- -->					
							<sec:authorize access="isAuthenticated()">
								<a class="layout-navigation-bar-icon layout-navigation-bar-icon--hide-mobile" title="스크랩북" aria-label="스크랩북" href="./myScrap?memberNum=${member.memberNum }">
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
		</header>
		
		
		<!-- 바디 -->
		
		<div class="container collection-feed">
			<main>
				<header class="row collection-book-header">
					<div>
						<h1 class="collection-book-title__book-name">스크랩북</h1>
						<p class="collection-book-owner">
							<a class="collection-book-owner__link" href="/users/4672761">
								<img class="profile-image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144&amp;h=144&amp;c=c 3x">
								<span class="collection-book-owner__name">${member.nickname}</span>
							</a>
						</p>
					</div>
				
				</header>
				<div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false" data-sticky-ignore="false" data-direction="top" data-offset="81" class="sticky-container collection-feed__navi" style="position: sticky; top: 81px;">
					<div class="sticky-child" style="position: relative;">
						<nav class="page-navigation collection-book-nav">
							<ul style="transform: translateX(0px);">
								<li class="page-navigation__item">
									<a class="active" href="/users/4672761/collections" target="_self">모두 ()</a>
								</li>
								<li class="page-navigation__item">
									<a class="" href="/users/4672761/collections?filter=production" target="_self">상품 (0)</a>
								</li>
								<li class="page-navigation__item">
									<a class="" href="/users/4672761/collections?filter=card" target="_self">사진 (${scrapCount})</a>
								</li>
								<li class="page-navigation__item">
									<a class="" href="/users/4672761/collections?filter=project" target="_self">집들이 (0)</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
				<div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false" data-sticky-ignore="false" data-direction="top" data-offset="142" class="sticky-container collection-feed__edit-panel" style="position: sticky; top: 142px;">
					<div class="sticky-child" style="position: relative;">
						<div class="collection-feed__edit-panel__wrap">
							<div class="collection-feed__edit-panel__left">
								<div class="collection-feed-filter__empty"></div>
							</div>
							<div class="collection-feed__edit-panel__menus">
								<button type="button" class="collection-feed__edit-panel__menus__menu collection-feed__edit-panel__menus__menu--skyblue">편집</button>
							</div>
				        </div>
			        </div>
		        </div>
		        <div class="virtualized-list collection-feed-collections row" style="padding-top: 0px; padding-bottom: 289px; transform: translateY(0px);">
				    
				    <c:forEach items="${scrapPic}" var="scrap">
				    <div class="col-6 col-md-4 col-lg-3">
					    <div class="collection__wrap">
						    <a href="../picture/picOne?post_id=${scrap.post_id}">
							    <div class="collection collection--total">
								    <div class="collection__image-wrap">
								    <c:forEach items="${scrap.pictureFileVO}" var="file" varStatus="status">
								    	<c:if test="${status.index eq 0 }">
								 	   <img class="collection__image" src="../resources/upload/picture/${file.picFilename}">
								 	   </c:if>
								   </c:forEach>
								    </div>
							   	 <span class="collection__type">사진</span>
								    <svg class="collection__corner-icon" width="14" height="18" viewBox="0 0 18 18" preserveAspectRatio="xMidYMid meet">
									    <g fill="none" fill-rule="evenodd">
									 	   <path stroke="#000" stroke-opacity=".14" stroke-width=".75" d="M14.27 3.85H15a2.62 2.62 0 0 1 2.62 2.63V15A2.62 2.62 0 0 1 15 17.63H6.49A2.62 2.62 0 0 1 3.85 15v-.73h7.8a2.63 2.63 0 0 0 2.62-2.62v-7.8zM.37 3A2.62 2.62 0 0 1 3 .37h8.52A2.62 2.62 0 0 1 14.15 3v8.52a2.62 2.62 0 0 1-2.63 2.63H3a2.62 2.62 0 0 1-2.63-2.63V3z"></path>
									 	   <path fill="#FFF" fill-opacity=".74" d="M14.64 4.22H15c1.25 0 2.26 1 2.26 2.26V15c0 1.24-1 2.25-2.25 2.25H6.48c-1.25 0-2.26-1-2.26-2.25v-.35h7.43a3 3 0 0 0 3-3V4.22zM.75 3C.75 1.76 1.75.75 3 .75h8.52c1.25 0 2.26 1 2.26 2.25v8.52c0 1.25-1 2.26-2.26 2.26H3c-1.24 0-2.25-1-2.25-2.26V3z"></path>
									    </g>
								    </svg>
							    </div>
						    </a>
					    </div>
				    </div>
				    </c:forEach>
				   <!--  <div class="col-6 col-md-4 col-lg-3">
					    <div class="collection__wrap">
						    <a href="/projects/66363/detail?affect_type=UserScrapbook&amp;affect_id=4672761">
							    <div class="collection collection--total">
								    <div class="collection__image-wrap">
								   	 <img class="collection__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163603876676993157.JPG?gif=1&amp;w=320&amp;h=320&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163603876676993157.JPG?gif=1&amp;w=480&amp;h=480&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163603876676993157.JPG?gif=1&amp;w=640&amp;h=640&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163603876676993157.JPG?gif=1&amp;w=960&amp;h=960&amp;c=c 3x">
								    </div>
							   		 <span class="collection__type">집들이</span>
							    </div>
						    </a>
					    </div>
				    </div>
				    <div class="col-6 col-md-4 col-lg-3">
					    <div class="collection__wrap">
						    <a href="/productions/245825/selling?affect_type=UserScrapbook&amp;affect_id=4672761">
							    <div class="collection collection--total">
								    <div class="collection__image-wrap">
								   	 	<img class="collection__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1582019727_100125_1.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1582019727_100125_1.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1582019727_100125_1.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1582019727_100125_1.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c 3x">
								    </div>
							    		<span class="collection__type">상품</span>
							    </div>
						    </a>
					    </div>
				    </div> -->
		        </div>
	        </main>
        </div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- footer -->
	<div class="layout-footer__content" style="background-color: #fafafa;">
		<div class="layout-footer__top">
			<address class="layout-footer__cs">
				<div class="layout-footer__cs__row">
					<a class="layout-footer__cs__link" href="/customer_center">고객센터<svg
							class="icon" aria-hidden="true" width="1em" height="1em"
							viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
							<path fill="currentColor" fill-rule="nonzero"
								d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z"></path></svg></a>
				</div>
				<div class="layout-footer__cs__row">
					<a class="layout-footer__cs__tel" href="tel:1670-0876">1670-0876</a>
				</div>
				<span class="layout-footer__cs__time">평일 09:00 ~ 18:00 (주말
					&amp; 공휴일 제외)</span>
			</address>
			<div class="layout-footer__outbound">
				<a class="layout-footer__outbound__item"
					href="https://itunes.apple.com/kr/app/oneul-uijib-intelieo-gong/id1008236892"
					target="_blank" rel="noreferrer noopener" title="앱스토어"
					aria-label="앱스토어"><svg class="icon" width="30" height="30"
						viewBox="0 0 30 30" preserveAspectRatio="xMidYMid meet">
						<path fill-rule="evenodd"
							d="M22.34 15.57a5.6 5.6 0 0 0 3.42 5.15c-.02.1-.53 1.84-1.78 3.62-1.05 1.57-2.15 3.1-3.9 3.13-1.69.04-2.26-1-4.2-1-1.96 0-2.57.97-4.2 1.04-1.65.06-2.92-1.67-4-3.23-2.18-3.17-3.87-8.93-1.6-12.85a6.23 6.23 0 0 1 5.24-3.2c1.66-.03 3.2 1.12 4.22 1.12 1 0 2.91-1.38 4.88-1.17.82.02 3.17.32 4.68 2.52-.13.08-2.8 1.64-2.76 4.87zm-3.2-9.48a4.8 4.8 0 0 1-3.8 1.8c-.18-1.46.54-3 1.34-3.95A5.81 5.81 0 0 1 20.44 2c.17 1.5-.43 3-1.3 4.09z"></path></svg></a><a
					class="layout-footer__outbound__item"
					href="https://play.google.com/store/apps/details?id=net.bucketplace"
					target="_blank" rel="noreferrer noopener" title="플레이스토어"
					aria-label="플레이스토어"><svg class="icon" width="30" height="30"
						viewBox="0 0 30 30" preserveAspectRatio="xMidYMid meet">
						<path fill-rule="evenodd"
							d="M4.22 26.95A2.35 2.35 0 0 1 4 25.9V3.8c0-.42.08-.77.22-1.05l12.1 12.1-12.1 12.1zm.74.68l12.07-12.07 3.7 3.7-14.2 8.1c-.6.34-1.14.42-1.57.27zm15.78-17.2l-3.71 3.71L4.96 2.07c.14-.04.3-.07.45-.07.34 0 .72.1 1.12.34l14.2 8.1zm.9.52l4.32 2.46c1.39.8 1.39 2.09 0 2.88l-4.32 2.46-3.9-3.9 3.9-3.9z"></path></svg></a><a
					class="layout-footer__outbound__item"
					href="https://story.kakao.com/ch/bucketplace" target="_blank"
					rel="noreferrer noopener" title="카카오스토리" aria-label="카카오스토리"><svg
						class="icon" width="30" height="30" viewBox="0 0 30 30"
						preserveAspectRatio="xMidYMid meet">
						<path fill="#757575" fill-rule="evenodd"
							d="M19.02 6h-8.04a.96.96 0 0 0-.98.93v8.16c0 .51.44.93.98.93h3.7c-.02.9-.4 1.9-.99 2.77a10.3 10.3 0 0 1-2 2.06l-.03.03c-.11.1-.2.22-.2.38 0 .12.07.21.14.31l.02.02 2.57 2.76s.13.12.23.15c.12.02.25.03.34-.04A12.25 12.25 0 0 0 20 14.79V6.93a.96.96 0 0 0-.98-.93"></path></svg></a><a
					class="layout-footer__outbound__item"
					href="https://www.facebook.com/interiortoday" target="_blank"
					rel="noreferrer noopener" title="페이스북" aria-label="페이스북"><svg
						class="icon" width="30" height="30" viewBox="0 0 30 30"
						preserveAspectRatio="xMidYMid meet">
						<path fill="#757575" fill-rule="evenodd"
							d="M16.67 26V15H20v-3.38h-3.33V9.07c-.02-.76.08-1.29 1.66-1.7H20V4h-3.33c-3.2 0-4.46 1.84-4.17 5.08v2.53H10V15h2.5v11h4.17z"></path></svg></a><a
					class="layout-footer__outbound__item"
					href="https://www.instagram.com/todayhouse" target="_blank"
					rel="noreferrer noopener" title="인스타그램" aria-label="인스타그램"><svg
						class="icon" width="30" height="30" viewBox="0 0 30 30"
						preserveAspectRatio="xMidYMid meet">
						<path fill="#757575" fill-rule="evenodd"
							d="M15 3c3.26 0 3.67.02 4.95.08 1.27.05 2.14.26 2.9.55a5.88 5.88 0 0 1 2.13 1.39 5.88 5.88 0 0 1 1.39 2.12c.3.77.5 1.64.55 2.91.06 1.28.08 1.7.08 4.95s-.02 3.67-.08 4.95a8.78 8.78 0 0 1-.55 2.9 5.88 5.88 0 0 1-1.39 2.13 5.88 5.88 0 0 1-2.12 1.39c-.77.3-1.64.5-2.91.55-1.28.06-1.7.08-4.95.08s-3.67-.02-4.95-.08a8.78 8.78 0 0 1-2.9-.55 5.88 5.88 0 0 1-2.13-1.39 5.88 5.88 0 0 1-1.39-2.12c-.3-.77-.5-1.64-.55-2.91C3.02 18.67 3 18.25 3 15s.02-3.67.08-4.95c.05-1.27.26-2.15.55-2.9a5.88 5.88 0 0 1 1.39-2.13 5.88 5.88 0 0 1 2.12-1.39c.76-.3 1.64-.5 2.91-.55C11.33 3.02 11.75 3 15 3zm0 2.17c-3.2 0-3.58 0-4.85.07-1.17.05-1.8.24-2.22.4-.56.23-.96.49-1.38.9a3.7 3.7 0 0 0-.9 1.39 6.64 6.64 0 0 0-.41 2.22A82.92 82.92 0 0 0 5.17 15c0 3.2 0 3.58.07 4.85.05 1.17.24 1.8.4 2.22.23.56.49.96.9 1.38.43.42.83.68 1.39.9.42.17 1.05.36 2.22.41 1.27.06 1.65.07 4.85.07 3.2 0 3.58 0 4.85-.07a6.67 6.67 0 0 0 2.23-.4c.56-.23.96-.49 1.38-.9.42-.43.68-.83.9-1.39.16-.42.35-1.05.4-2.22.06-1.27.07-1.65.07-4.85 0-3.2 0-3.58-.06-4.85a6.66 6.66 0 0 0-.42-2.23 3.72 3.72 0 0 0-.9-1.38 3.7 3.7 0 0 0-1.37-.9 6.64 6.64 0 0 0-2.23-.4A82.92 82.92 0 0 0 15 5.15zm0 3.67a6.16 6.16 0 1 1 0 12.32 6.16 6.16 0 0 1 0-12.32zM15 19a4 4 0 1 0 0-8 4 4 0 0 0 0 8zm7.84-10.4a1.44 1.44 0 1 1-2.88 0 1.44 1.44 0 0 1 2.88 0z"></path></svg></a><a
					class="layout-footer__outbound__item"
					href="https://blog.naver.com/bucket_place" target="_blank"
					rel="noreferrer noopener" title="네이버 블로그" aria-label="네이버 블로그"><svg
						class="icon" width="30" height="30" viewBox="0 0 30 30"
						fill="none" preserveAspectRatio="xMidYMid meet">
						<path
							d="M9.01887 11.8719C8.86199 11.8716 8.70853 11.9178 8.57793 12.0048C8.44733 12.0917 8.34545 12.2154 8.28519 12.3602C8.22493 12.5051 8.20899 12.6646 8.2394 12.8185C8.26981 12.9724 8.3452 13.1138 8.45602 13.2249C8.56684 13.3359 8.70812 13.4116 8.86196 13.4423C9.01581 13.4731 9.17531 13.4574 9.32029 13.3975C9.46526 13.3375 9.58919 13.2359 9.67639 13.1055C9.76358 12.975 9.81012 12.8217 9.81012 12.6648C9.81012 12.4548 9.72681 12.2534 9.57847 12.1047C9.43013 11.9561 9.22887 11.8723 9.01887 11.8719Z"
							fill="#757575"></path>
						<path
							d="M16.842 11.7907C16.6733 11.7907 16.5083 11.8408 16.368 11.9346C16.2277 12.0284 16.1183 12.1617 16.0538 12.3176C15.9893 12.4736 15.9725 12.6452 16.0056 12.8107C16.0386 12.9762 16.12 13.1282 16.2395 13.2474C16.3589 13.3666 16.5111 13.4477 16.6766 13.4805C16.8422 13.5132 17.0138 13.4961 17.1696 13.4313C17.3254 13.3665 17.4585 13.2569 17.5521 13.1164C17.6456 12.9759 17.6954 12.8108 17.695 12.642C17.6946 12.4161 17.6045 12.1996 17.4446 12.0399C17.2847 11.8803 17.068 11.7907 16.842 11.7907Z"
							fill="#757575"></path>
						<path
							d="M23.9227 4H7.07728C6.26114 4 5.47842 4.32421 4.90131 4.90131C4.32421 5.47842 4 6.26113 4 7.07728V17.076C4 17.8922 4.32421 18.6749 4.90131 19.252C5.47842 19.8291 6.26114 20.1533 7.07728 20.1533H13.0271L15.0499 24.9203C15.0499 24.9203 15.1897 25.3346 15.5276 25.3346C15.8639 25.3346 16.0037 24.9203 16.0037 24.9203L18.0281 20.1533H23.9227C24.3268 20.1533 24.727 20.0737 25.1003 19.919C25.4737 19.7644 25.8129 19.5377 26.0987 19.252C26.3844 18.9662 26.6111 18.627 26.7658 18.2536C26.9204 17.8803 27 17.4801 27 17.076V7.07728C27 6.67316 26.9204 6.27301 26.7658 5.89965C26.6111 5.5263 26.3844 5.18707 26.0987 4.90131C25.8129 4.61556 25.4737 4.38889 25.1003 4.23424C24.727 4.07959 24.3268 4 23.9227 4ZM11.2253 12.8387C11.2155 14.6665 9.32594 14.7185 9.32594 14.7185C9.11332 14.718 8.90299 14.6746 8.70755 14.5908C8.51212 14.5071 8.33561 14.3847 8.18861 14.2311V14.556H6.81245V8.88888C6.89856 8.90188 8.18861 8.88888 8.18861 8.88888V11.0595C8.51356 10.5071 9.44942 10.5169 9.44942 10.5169C11.4804 10.7037 11.2253 12.8387 11.2253 12.8387ZM13.6494 10.6875V14.5739H12.3074V10.7265C12.3074 10.2033 11.6575 10.0571 11.6575 10.0571V8.70041C13.8038 8.78815 13.6494 10.6875 13.6494 10.6875ZM16.842 14.7217C15.5942 14.7217 14.5836 13.7908 14.5836 12.6421C14.5836 11.4934 15.5942 10.564 16.842 10.564C18.0899 10.564 19.1005 11.495 19.1005 12.6421C19.1005 13.7891 18.0899 14.7217 16.842 14.7217ZM24.2217 14.7217C24.2217 14.7217 24.2412 16.6958 22.2346 16.6958H21.6253V15.4171H21.9925C21.9925 15.4171 22.8358 15.4951 22.826 14.1953C22.826 14.1953 22.6635 14.7217 21.4791 14.7217C21.4791 14.7217 19.8023 14.6015 19.8023 12.9654V12.3447C19.8023 12.3447 19.8413 10.6485 21.6822 10.5136C21.9056 10.4983 22.1293 10.538 22.3339 10.6292C22.5384 10.7204 22.7174 10.8604 22.8553 11.0368V10.6192H24.2217V14.7217Z"
							fill="#757575"></path>
						<path
							d="M22.0802 11.8102C21.9153 11.8102 21.7541 11.8591 21.617 11.9508C21.4799 12.0424 21.3731 12.1727 21.31 12.3251C21.247 12.4775 21.2306 12.6452 21.2629 12.8069C21.2952 12.9686 21.3747 13.1171 21.4914 13.2336C21.6082 13.3501 21.7568 13.4294 21.9186 13.4614C22.0804 13.4933 22.248 13.4766 22.4003 13.4133C22.5526 13.3499 22.6827 13.2428 22.774 13.1056C22.8654 12.9683 22.914 12.807 22.9137 12.6421C22.9133 12.4213 22.8253 12.2097 22.669 12.0537C22.5128 11.8978 22.301 11.8102 22.0802 11.8102Z"
							fill="#757575"></path></svg></a><a class="layout-footer__outbound__item"
					href="https://naver.me/51ckkDZh" target="_blank"
					rel="noreferrer noopener" title="네이버 포스트" aria-label="네이버 포스트"><svg
						class="icon" width="30" height="30" viewBox="0 0 30 30"
						preserveAspectRatio="xMidYMid meet">
						<path fill="#757575" fill-rule="evenodd"
							d="M8.5 5h13v13h-13V5zm7.45 4v2.52L14.05 9H12v5h2.05v-2.52l1.9 2.52H18V9h-2.05zm3.11 13h-8.12L8.5 19h13l-2.44 3zm-.81 1L15 27l-3.25-4h6.5z"></path></svg></a>
			</div>
		</div>
		<ul class="layout-footer__shortcut">
			<li><a class="layout-footer__shortcut__item" rel="noopener"
				href="http://bucketplace.co.kr/brand-story" target="_blank">브랜드
					스토리</a></li>
			<li><a class="layout-footer__shortcut__item" rel="noopener"
				href="http://bucketplace.co.kr/" target="_blank">회사소개</a></li>
			<li><a class="layout-footer__shortcut__item" rel="noopener"
				href="http://bucketplace.co.kr/recruit" target="_blank">채용정보</a></li>
			<li><a class="layout-footer__shortcut__item" rel="noopener"
				href="/usepolicy" target="_blank">이용약관</a></li>
			<li><a class="layout-footer__shortcut__item" rel="noopener"
				href="/privacy" target="_blank">개인정보처리방침</a></li>
			<li><a class="layout-footer__shortcut__item" rel="noopener"
				href="/customer_notices" target="_blank">공지사항</a></li>
			<li><a class="layout-footer__shortcut__item" rel="noopener"
				href="/customer_center" target="_blank">고객센터</a></li>
			<li><a class="layout-footer__shortcut__item" rel="noopener"
				href="/contacts/new" target="_blank">고객의 소리</a></li>
			<li><a class="layout-footer__shortcut__item" rel="noopener"
				href="https://pro.ohou.se/?utm_source=ohouse&amp;utm_medium=web&amp;utm_campaign=prosignup&amp;utm_content=footer"
				target="_blank">전문가 등록</a></li>
			<li><a class="layout-footer__shortcut__item" rel="noopener"
				href="/contacts/b2b" target="_blank">사업자 구매회원</a></li>
			<li><a class="layout-footer__shortcut__item" rel="noopener"
				href="/contacts/new?type=request" target="_blank">제휴/광고 문의</a></li>
			<li><a class="layout-footer__shortcut__item" rel="noopener"
				href="https://partners.ohou.se/partner/applications/new"
				target="_blank">입점신청 문의</a></li>
		</ul>
		<address class="layout-footer__info-wrap">
			<dl class="layout-footer__info">
				<a class="layout-footer__info__item"
					href="http://bucketplace.co.kr/" target="_blank"><dt>상호명</dt>
					<dd>(주)버킷플레이스</dd></a>
				<span class="layout-footer__info__item"><dt>이메일</dt>
					<dd>
						(고객문의)<a href="mailto:cs@bucketplace.net"> cs@bucketplace.net
						</a>(제휴문의)<a href="mailto:contact@bucketplace.net">
							contact@bucketplace.net</a>
					</dd></span>
				<span class="layout-footer__info__item"><dt>대표이사</dt>
					<dd>이승재</dd></span>
				<span class="layout-footer__info__item"><dt>사업자등록번호</dt>
					<dd>119-86-91245</dd></span>
				<span class="layout-footer__info__item"><dt>통신판매업신고번호</dt>
					<dd>
						제2018-서울서초-0580호<b class="layout-footer__info__item__check-link">&nbsp;사업자정보확인</b>
					</dd></span>
			</dl>
			<dl class="layout-footer__info">
				<span class="layout-footer__info__item"><dt>주소</dt>
					<dd>서울 서초구 서초대로74길 4 삼성생명서초타워 25, 27층</dd></span>
				<span class="layout-footer__info__item"><dt>우리은행
						채무지급보증안내</dt>
					<dd>
						(주)버킷플레이스는 고객님이 현금결제한&nbsp; 금액에 대해 우리은행과 채무지급보증 계약을 체결하여 안전거래를
						보장하고 있습니다.&nbsp;<a class="layout-footer__info__item__link"
							href="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161646429944190689.jpg?gif=1&amp;w=1440"
							target="_blank" rel="noopener noreferrer">서비스가입사실 확인</a>
					</dd></span>
			</dl>
			<span class="layout-footer__info"><span
				class="layout-footer__info__item">오늘의집은 개별 판매자가 상품을 판매하는
					오픈마켓이며 (주)버킷플레이스는 통신판매중개자로 거래 당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해
					일체 책임을 지지 않습니다.<br>단 ㈜버킷플레이스가 판매자로 등록 판매한 상품의 경우는 판매자로서 책임을
					부담합니다.
			</span></span>
		</address>
		<p class="layout-footer__copyright">Copyright 2014. bucketplace,
			Co., Ltd. All rights reserved</p>
		<div class="css-wkl218-SectionWrapper e1q59vf02">
			<div class="css-1293549-Container e1q59vf01">
				<svg width="32" height="32" viewBox="0 0 32 32" fill="none"
					preserveAspectRatio="xMidYMid meet">
					<rect width="32" height="32" fill="url(#pattern0)"></rect>
					<defs>
					<pattern id="pattern0" patternContentUnits="objectBoundingBox"
						width="1" height="1">
					<use xlink:href="#image0"
						transform="translate(-0.125 -0.125) scale(0.00208333)"></use></pattern>
					<image id="image0" width="600" height="600"
						xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAlgAAAJYCAYAAAC+ZpjcAAAgAElEQVR4AeydB3gc1bXHxza9hhYSQmhaUQyYYryzogpirdx2VjbImGIs7dx7R7YxseklgOjFxBB6M8VaATGE0Eso1ookL3lphIQ8khCSGBIgCRCCQzHY876z2pFnR7PS7uzMnS1/fd98s5q95ZzfuffO2VsVBX8gAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIg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INCVCARBjyOvfeSAUVc/eMOoqx94H3GwinYRLt505MlPfG/EyWrjUVNxlE1XevYxFxAAARAAARAoBQHegXjE1Q8dOPKqn98w4or73uvGgUYXbnbEKb/cfNQ0tVHNtO+Vgj36AAEQAAEQAAEQ6A4EgqDHyKvu3/2wy+49b/il9748/JJ7lnXlSO5bH3P6+1sedfqdW4yaPmrzmskbdodbjDmCAAiAAAiAAAiUmUD6ijlbDL3ontFDL77n1uqL5v61CxyV8/HWNWc+tNUxp0/9Qc1p/T3P61FmxOgeBEAABEAABECguxOovqhhqyE/axgz+IKGq4dcMOfFQfWzvzr0/FnBIefNrMSzCJdtO/bcv/Yae86cH40++4Qfjj5nLzipd/cnGPMHARAAARAAgU5AYGD9/LUG1s/sP/C8mbUDz5txxcHn3PmLg8+5662Dzr5z2YFn3REcUKLDnrefeMHHVRPrm6sm1N9aNb7+pB+N/ckhvWvO6NkJEGKIIAACIAACIAACINA2AgOmzfvOwLNu2/GAM28desCZt5n9z7jlon1PvXXGgFNvfmTf6Te9uO8pN/5ln2k3fLT31Os/3fvk677e66Rrgz2nXBPsceLV4c/uJ1y1ePfJV36626QrPu5fd/mbO2cve3knc+njO+tLcv3okiv7qotO7qt+OqqfunD3nVQ9HNLbdltQCgRAAARAAARAAARAAARAAARAAARAAARAAARAnJPSjAAABfBJREFUAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAARAAAS6IYH/D31gL+hK5ryjAAAAAElFTkSuQmCC"></image></defs></svg>
				<div class="css-1p6gxrd-Info e1q59vf00">
					오늘의집 서비스 운영 <br>2021. 09. 08 ~ 2024. 09. 07
				</div>
			</div>
		</div>
	</div>


<!-- footer 종료 ----------------------------------------------------------------------------------- -->		
		</div>
		
		
		
	</div>
<!-- 팝업메뉴 나오는 곳------------------------------------------------------------------------------------------ -->
	<div>
		<div class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-2 mymenu" data-popout="true" style="position: absolute; z-index: 1000; top: 70px; right: 501.5px; display: none;">
			<div class="animated-popout drop-down__content layout-navigation-bar-user-section__content open open-active">
				<ul class="layout-navigation-bar-user-menu">
					
					<li class="layout-navigation-bar-user-menu__item-wrap">
						<a class="layout-navigation-bar-user-menu__item" href="../member/mypage?memberNum=${member.memberNum}">마이페이지</a>
					</li>
					<li class="layout-navigation-bar-user-menu__item-wrap">
						<a class="layout-navigation-bar-user-menu__item" href="/user_shopping_pages/order_list">나의 쇼핑</a>
					</li>
					
					<li class="layout-navigation-bar-user-menu__item-wrap">
						<a class="layout-navigation-bar-user-menu__item" href="/customer_center">고객센터</a>
					</li>
					<li class="layout-navigation-bar-user-menu__item-wrap">
						<button class="layout-navigation-bar-user-menu__item logout" type="button">로그아웃</button>
					</li>
				</ul>
			</div>
		</div>
	</div>

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
					<a class="navigation-upload-dropdown-content-item" href="#">
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
	
<script type="text/javascript">
//마이메뉴 선택하면 마이페이지/로그아웃 등 드롭다운 메뉴 보여주기

$('.myBtn').click(function(){
	//alert('마이메뉴');
	$('.mymenu').css('display', 'block');
})

//이외의 영역을 클릭하면 사라지기	

$('.closeMenu').click(function(e){
	 if(!$(e.target).hasClass('mymenu')){
		$('.mymenu').css('display', 'none');
	} 
});

//글쓰기 선택하면 메뉴 보여주기

$('.writeBtn1').click(function(){
	$('.writemenu').css('display', 'block');
})

//이외의 영역을 클릭하면 사라지기 
$('.closeMenu').click(function(e){
	 if(!$(e.target).hasClass('writemenu')){
		$('.writemenu').css('display', 'none');
	} 
});

$('.logout').click(function(){
	location.href="../member/memberLogout"
})


</script>
</body>
</html>