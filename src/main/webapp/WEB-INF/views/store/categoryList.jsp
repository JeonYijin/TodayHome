<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<link rel="stylesheet" href="../resources/css/categoryList.css">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>

<!-- header  -->

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
								href="../store/category">스토어</a>
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
								<a class="layout-navigation-bar-icon" title="장바구니"aria-label="장바구니" href="../cart">
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
								<a class="layout-navigation-bar-icon layout-navigation-bar-icon--hide-mobile" title="스크랩북" aria-label="스크랩북" href="/users/4672761/collections">
									<svg class="icon" width="24" height="24" stroke="currentColor" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
										<path fill="none" stroke-width="2" d="M3 20.967zm0 0V2.5a.5.5 0 01.5-.5h17a.5.5 0 01.5.5v18.467l-8.057-4.309a2 2 0 00-1.886 0L3 20.968z"></path>
									</svg>
								</a>
								
								<a class="layout-navigation-bar-icon layout-navigation-bar-icon--hide-mobile" title="알림" aria-label="알림" href="/notifications/feed">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
										<path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.04 4.19C10.16 3.16 10.6 2 12.05 2c1.35 0 1.78 1.11 1.9 2.13C21.05 5.25 21 13.43 21 19H3c0-5.48-.05-13.48 7.04-14.81zM10 19c0 1.66.9 3 2 3s2-1.34 2-3"></path>
									</svg>
								</a>
							
								<a class="layout-navigation-bar-icon" title="장바구니" aria-label="장바구니" href="../cart">
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
				class="sticky-container layout-navigation-secondary-wrap">
				<div class="sticky-child layout-navigation-secondary"
					style="position: relative;">
					<div class="layout-navigation-secondary__content">
						<nav class="layout-navigation-secondary__menu">
							<a class="layout-navigation-secondary__menu__item layout-navigation-secondary__menu__item--active" href="/">홈</a>
								<a class="layout-navigation-secondary__menu__item" href="../picture/picList">사진</a>
								<a class="layout-navigation-secondary__menu__item" href="../housewarming/">집들이</a>
								<a class="layout-navigation-secondary__menu__item" href="../questions/">질문과답변</a>
								
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



<!-- //header -->

	<!-- 왼쪽 카테고리 목록 ------------------------------------------------------>
	 <div class="category-feed-container">
        <div class="category-feed-wrap container">
            <div class="category-feed row">
                <div class="category-feed__side-bar col-12 col-md-3">
                    <section class="commerce-category-list">
                        <h2 class="commerce-category-list__title"><a href="/store/category?pr_category=0&filter=${filter}">가구</a></h2>
                        <ul class="commerce-category-tree commerce-category-list__categories">
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=1&filter=${filter}">침대</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=2&filter=${filter}">매트리스/토퍼</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=3&filter=${filter}">소파</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=4&filter=${filter}">테이블/책상</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=5&filter=${filter}">거실장/TV장</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=6&filter=${filter}">서랍/수납장</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=7&filter=${filter}">진열장/책장</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=8&filter=${filter}">선반</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=9&filter=${filter}">행거/옷장</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=10&filter=${filter}">의자</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=11&filter=${filter}">화장대/콘솔</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=12&filter=${filter}">거울</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=13&filter=${filter}">가벽/파티션</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=14&filter=${filter}">야외가구</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=15&filter=${filter}">유아동가구</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                        </ul>
                        <ul class="commerce-category-list__others">
                            <li class="commerce-category-list__others__item"><a href="/store/category?category=">겨울용품</a></li>
                            <li class="commerce-category-list__others__item"><a href="/store/category?category=">패브릭</a></li>
                            <li class="commerce-category-list__others__item"><a href="/store/category?category=">조명</a></li>
                            <li class="commerce-category-list__others__item"><a href="/store/category?category=">가전</a></li>
                            <li class="commerce-category-list__others__item"><a href="/store/category?category=">주방용품</a></li>
                            <li class="commerce-category-list__others__item"><a href="/store/category?category=">데코/취미</a></li>
                            <li class="commerce-category-list__others__item"><a href="/store/category?category=">수납/정리</a></li>
                            <li class="commerce-category-list__others__item"><a href="/store/category?category=">생활용품</a></li>
                            <li class="commerce-category-list__others__item"><a href="/store/category?category=">생필품</a></li>
                            <li class="commerce-category-list__others__item"><a href="/store/category?category=">공구/DIY</a></li>
                            <li class="commerce-category-list__others__item"><a href="/store/category?category=">인테리어시공</a></li>
                            <li class="commerce-category-list__others__item"><a href="/store/category?category=">반려동물</a></li>
                            <li class="commerce-category-list__others__item"><a href="/store/category?category=">캠핑용품</a></li>
                            <li class="commerce-category-list__others__item"><a href="/store/category?category=">실내운동</a></li>
                            <li class="commerce-category-list__others__item"><a href="/store/category?category=">유아/아동</a></li>
                            <li class="commerce-category-list__others__item"><a href="/store/category?category=">렌탈</a></li>
                        </ul>
                    </section>
                </div>
                            
	<!-- // 왼쪽 카테고리 목록 ------------------------------------------------------>
                            
    <!-- 오른쪽 상품 목록 ----------------------------------------------------------->
                <div class="category-feed__content col-12 col-md-9">
                    <div class="commerce-category-header category-feed__content__header">
                        <div class="commerce-category-header__breadcrumb-wrap">
                            <nav class="commerce-category-breadcrumb-wrap commerce-category-header__breadcrumb">
                                <ol class="commerce-category-breadcrumb">
                                    <li class="commerce-category-breadcrumb__entry">
                                    <a class="link" href="/store/category?category=0">가구</a>
                                    
                                    <c:choose>
	                                    <c:when test="${product.pr_category eq '0'}">
	                                    	</li>
	                                    </c:when>
	                                    
	                                    <c:otherwise>
		                                    <svg class="icon" width="8" height="8" viewBox="0 0 8 8" fill="currentColor" preserveAspectRatio="xMidYMid meet">
		                                    <path d="M4.95 4L2.12 1.19l.7-.71 3.54 3.54-3.53 3.53-.7-.7z">
		                                    </path></svg>
		                                    </li>
		                                    <li class="commerce-category-breadcrumb__entry">
		                                    <a class="link" href="/store/category?category=${product.pr_category}">${categoryN}</a>
		                                    </li>
	                                    </c:otherwise>
                                    </c:choose>
                                </ol>
                            </nav>
                        </div>
                        
                        <!-- 배너  -->
                           <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
							  <div class="carousel-indicators">
							    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
							    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
							    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
							    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
							    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
							    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" aria-label="Slide 6"></button>
							    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="6" aria-label="Slide 7"></button>
							  </div>
							  <div class="carousel-inner">
							    <div class="carousel-item active">
							      <img src="../resources/img/category/banner/everything.jpg" class="d-block w-100" alt="...">
							    </div>
							    <div class="carousel-item">
							      <img src="../resources/img/category/banner/fastship.jpg" class="d-block w-100" alt="...">
							    </div>
							    <div class="carousel-item">
							      <img src="../resources/img/category/banner/free_ship.jpg" class="d-block w-100" alt="...">
							    </div>
							    <div class="carousel-item">
							      <img src="../resources/img/category/banner/hanger.jpg" class="d-block w-100" alt="...">
							    </div>
							    <div class="carousel-item">
							      <img src="../resources/img/category/banner/marketb.jpg" class="d-block w-100" alt="...">
							    </div>
							    <div class="carousel-item">
							      <img src="../resources/img/category/banner/oneday.jpg" class="d-block w-100" alt="...">
							    </div>
							    <div class="carousel-item">
							      <img src="../resources/img/category/banner/refur.jpg" class="d-block w-100" alt="...">
							    </div>
							  </div>
							  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
							    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
							    <span class="visually-hidden">Previous</span>
							  </button>
							  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
							    <span class="carousel-control-next-icon" aria-hidden="true"></span>
							    <span class="visually-hidden">Next</span>
							  </button>
							</div>
						
						<!-- // 배너  -->	
		
		<!-- 전체 / 필터  -->
		<div class="css-sa893y-SecondaryFilterWrapper e1dxjhw58">
		    <p class="css-ngpyyk-SecondaryFilterSummary e1dxjhw57">전체 ${count}개</p>
		    <div class="css-12qrzpe-SecondaryFilterRight e1dxjhw56">
		        <div class="css-11eonr5-SecondaryFilterItem e1dxjhw55">
		            <div class="drop-down panel-drop-down">
		                <button class="category-filter-bar-order-button" type="button">
		                    인기순<svg class="icon" width="8" height="8" viewBox="0 0 8 8" preserveAspectRatio="xMidYMid meet"><path fill="#BDBDBD" d="M0 2l4 4 4-4z"></path></svg>
		                </button>
		            </div>
		        </div>
		        <div class="css-11eonr5-SecondaryFilterItem e1dxjhw55">
		            <button type="button" class="css-1tgyw7s-SecondaryFilterButton e1dxjhw54">
		                <svg class="icon" width="16" height="16" preserveAspectRatio="xMidYMid meet">
		                    <g fill="none" fill-rule="evenodd">
		                        <path d="M0 0h16v16H0z"></path>
		                        <path
		                            fill="currentColor"
		                            fill-rule="nonzero"
		                            d="M12.19 2.667H3.81a.468.468 0 00-.406.241.449.449 0 000 .483l2.642 4.652c.235.42.647.898.647 1.384v4.12c.002.16-.036.26.1.373.135.113.228.078.296.063l2.193-.838c.189-.064.214-.246.211-.45V9.426c0-.486.226-.963.46-1.384l2.643-4.652a.449.449 0 000-.483.467.467 0 00-.407-.241z"
		                        ></path>
		                    </g>
		                </svg>
		                <div class="css-pr1md3-SecondaryFilterButtonText e1dxjhw53">필터</div>
		            </button>
		        </div>
		    </div>
		</div>
		<!-- //전체 / 필터  -->
		
		<select onchange="criteria_show()" class="form-control">
			<c:if test="${empty pager.filter}">
				<option value="0">판매순</option>
				<option value="0">낮은 가격순</option>
				<option value="0">높은 가격순</option>
				<option value="0">인기순</option>
				<option selected value="0">최신순</option>
			</c:if>
			<c:if test="${pager.filter == 'sales'}">
				<option value="0" selected>판매순</option>
				<option value="0"> 낮은 가격순</option>
				<option value="0">높은 가격순</option>
				<option value="0">인기순</option>
				<option value="0">최신순</option>
			</c:if>
			<c:if test="${pager.filter == 'lowPrice'}">
				<option>판매순</option>
				<option selected>낮은 가격순</option>
				<option>높은 가격순</option>
				<option>인기순</option>
				<option>최신순</option>
			</c:if>
			<c:if test="${pager.filter == 'highPrice'}">
				<option>판매순</option>
				<option>낮은 가격순</option>
				<option selected>높은 가격순</option>
				<option>인기순</option>
				<option>최신순</option>
			</c:if>
			<c:if test="${pager.filter == 'scrap'}">
				<option>판매순</option>
				<option>낮은 가격순</option>
				<option>높은 가격순</option>
				<option selected>인기순</option>
				<option>최신순</option>
			</c:if>
		</select>
		
		<script type="text/javascript">
			function criteria_show(){
				var htmll = $('.form-control option').html();
				alert(htmll);
			}
		/*
		$('.form-control option').click(function(){
			var test1 = $(this).text();
			alert(test1);
			location.href="/category?filter="+test1;
		});
		*/
		
		</script>
		
		<!-- 정렬 방식 -->
		<div class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-2" data-popout="true" style="position: absolute; z-index: 1000; top: 988.667px; right: 112.26px;">
		    <div class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
		        <div class="drop-down-panel" data-panel-title="정렬" data-panel-parents="">
		            <ul class="property-filter-panel-entry-list wide">
		                <li class="property-filter-panel-entry-list__item-wrap">
		                    <button class="property-filter-panel-entry-list__item" type="button">
		                        <div class="property-filter-panel-entry-list__item__header">
		                            <div class="property-filter-panel-entry-list__item__group">
		                                <div class="_2xClz input-type"><input type="radio" class="fs-4H" value="sales" name="filter"/><span class="_2ekY2"></span></div>
		                                <span class="property-filter-panel-entry-list__item__title">판매순</span>
		                            </div>
		                        </div>
		                    </button>
		                </li>
		                <li class="property-filter-panel-entry-list__item-wrap">
		                    <button class="property-filter-panel-entry-list__item selected" type="button">
		                        <div class="property-filter-panel-entry-list__item__header">
		                            <div class="property-filter-panel-entry-list__item__group">
		                                <div class="_2xClz input-type"><input type="radio" class="fs-4H" value="newest" name="filter" checked="" /><span class="_2ekY2"></span></div>
		                                <span class="property-filter-panel-entry-list__item__title">최신순</span>
		                            </div>
		                        </div>
		                    </button>
		                </li>
		                <li class="property-filter-panel-entry-list__item-wrap">
		                    <button class="property-filter-panel-entry-list__item" type="button">
		                        <div class="property-filter-panel-entry-list__item__header">
		                            <div class="property-filter-panel-entry-list__item__group">
		                                <div class="_2xClz input-type"><input type="radio" class="fs-4H" value="lowPrice" name="filter" /><span class="_2ekY2"></span></div>
		                                <span class="property-filter-panel-entry-list__item__title">낮은가격순</span>
		                            </div>
		                        </div>
		                    </button>
		                </li>
		                <li class="property-filter-panel-entry-list__item-wrap">
		                    <button class="property-filter-panel-entry-list__item" type="button">
		                        <div class="property-filter-panel-entry-list__item__header">
		                            <div class="property-filter-panel-entry-list__item__group">
		                                <div class="_2xClz input-type"><input type="radio" class="fs-4H" value="" /><span class="_2ekY2"></span></div>
		                                <span class="property-filter-panel-entry-list__item__title">높은가격순</span>
		                            </div>
		                        </div>
		                    </button>
		                </li>
		                <li class="property-filter-panel-entry-list__item-wrap">
		                    <button class="property-filter-panel-entry-list__item" type="button">
		                        <div class="property-filter-panel-entry-list__item__header">
		                            <div class="property-filter-panel-entry-list__item__group">
		                                <div class="_2xClz input-type"><input type="radio" class="fs-4H" value="" /><span class="_2ekY2"></span></div>
		                                <span class="property-filter-panel-entry-list__item__title">리뷰많은순</span>
		                            </div>
		                        </div>
		                    </button>
		                </li>
		                <li class="property-filter-panel-entry-list__item-wrap">
		                    <button class="property-filter-panel-entry-list__item" type="button">
		                        <div class="property-filter-panel-entry-list__item__header">
		                            <div class="property-filter-panel-entry-list__item__group">
		                                <div class="_2xClz input-type"><input type="radio" class="fs-4H" value="" /><span class="_2ekY2"></span></div>
		                                <span class="property-filter-panel-entry-list__item__title">유저사진 많은순</span>
		                            </div>
		                        </div>
		                    </button>
		                </li>
		                <li class="property-filter-panel-entry-list__item-wrap">
		                    <button class="property-filter-panel-entry-list__item" type="button">
		                        <div class="property-filter-panel-entry-list__item__header">
		                            <div class="property-filter-panel-entry-list__item__group">
		                                <div class="_2xClz input-type"><input type="radio" class="fs-4H" value="" /><span class="_2ekY2"></span></div>
		                                <span class="property-filter-panel-entry-list__item__title">최신순</span>
		                            </div>
		                        </div>
		                    </button>
		                </li>
		            </ul>
		        </div>
		    </div>
		</div>
		<!-- //정렬 방식 -->
		
		<!-- 상품 목록 --------------------------------------------- -->
		
		<div class="category-feed__content__items">
		<c:forEach var="product" items="${products}">
			<div class="category-feed__content__item-wrap col-4 col-lg-4" style="">
	  		<article class="production-item" id="product-310649">
	    		<a class="production-item__overlay" href="./page?pr_number=${product.pr_number}"></a>
			<div class="production-item-image production-item__image">
	 		 <img class="image" alt="" src="../upload/store/${product.prFiles[0].fileName}" srcset="">
	    		<button class="production-item-scrap-badge production-item-image__scrap-badge" type="button">
		      		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon">
		        	<defs>
		       		 <path id="scrap-icon-283-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z">
		         	 </path>
					<filter id="scrap-icon-283-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
		  			<feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
					<feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur>
					<feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite>
					<feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix>
					</filter>
					<filter id="scrap-icon-283-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
		  			<feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur>
					<feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
					<feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite>
					<feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix>
					</filter>
					</defs>
					<g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)">
		  			<use fill="#000" filter="url(#scrap-icon-283-a)" href="#scrap-icon-283-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-283-b"></use>
		    		<use fill="#000" filter="url(#scrap-icon-283-c)" href="#scrap-icon-283-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z">
					</path></g></svg>
					<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
		 			<path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z">
		    		</path></svg></button>
				<div class="production-item-image__dark-overlay"></div>
				</div>
				<div class="production-item__content">
	  			<h1 class="production-item__header">
	 			<span class="production-item__header__brand">${product.pr_seller}</span>
	 			<span class="production-item__header__name">${product.pr_name}</span>
				</h1>
				<span class="production-item-price">
	  			<span class="production-item-price__rate">${product.pr_discount}<span class="percentage">% </span>
				</span>
				<span class="production-item-price__price">${product.pr_dPrice}</span></span>
	  			<p class="production-item-stats production-item-stats--review">
	    		<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
	     		 <path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z">
	      		  </path></svg>
	          	<strong class="avg">4.5</strong> 리뷰 3,856</p>
	            <span class="production-item-badge-list">
	              <svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet">
	                <rect width="30" height="20" fill="#F77" rx="4"></rect>
				<path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z">
				</path></svg></span></div></article></div>
		</c:forEach>
		</div>
		
		 
		
		
		 
		

	<!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

	
</body>
</html>