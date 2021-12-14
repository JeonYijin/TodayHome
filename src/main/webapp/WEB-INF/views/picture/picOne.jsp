<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/picOne.css">
<link rel="stylesheet" href="../resources/css/picComment.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&amp;display=swap&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/preamble-97ede701.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/App-6e6c2f0c.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/templates-Home-HomePage-f3a55bf4.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/21-0e75de9b.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/23-2ef16b9a.chunk.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
	<!-- <h1>PicOne page</h1> -->
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
								<a class="layout-navigation-bar-login__item layout-navigation-bar-login__item--xl" href="/customer_center">고객센터</a>
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
								<a class="layout-navigation-secondary__menu__item" href="/projects?writer=self">집들이</a>
								<a class="layout-navigation-secondary__menu__item" href="/contents/follow/feed">질문과답변</a>
								
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
		
		
		
		
		
		
		
		<div class="css-2iwhjz-DetailDiv e1auuux0 closeMenu">
			<div class="css-sa4f8i-CardCollectionBaseDetailAuthorWrapper ew7sa7k0">
				<address class="css-umz2z6-AuthorAddress e1v9tg6s6">
					<div class="css-9pbsgo-AuthorAuthor e1v9tg6s5">
						<div class="css-1p7q7e9-AuthorTitle e1v9tg6s4">
							<a class="css-kp67iu-AuthorLink e1v9tg6s3" href="/users/2624519">
								<div class="css-1bs83ls-AuthorImage e1v9tg6s2">
									<img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163359433983074672.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163359433983074672.jpeg?gif=1&amp;w=80&amp;h=80&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163359433983074672.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163359433983074672.jpeg?gif=1&amp;w=160&amp;h=160&amp;c=c 3x">
								</div>
							
							</a>
						</div>
						<div class="css-ajp79q-AuthorIntroduction e1v9tg6s1">
							<time datetime="${picOne.post_date}" class="css-1p9oymj-DateItem-CardCollectionBaseDetailHeaderItem eaxmwd20">${picOne.post_date}</time>
						</div>
					</div>
					<button class="_3Z6oR _3AsCW _1XHs9 css-1ch1nkx-AuthorFollowButton e1v9tg6s0" type="button">팔로우</button>
				</address>
			</div>
			
			<div class="css-1hrluq4-Container ekbdbra0">
				<div class="css-1xn9eio-Row el2z1iq0">
					<div class="css-opdmar-Col-ContentCol exf9qum0">
						<div class="css-18d5kj7-HeaderDiv eog6tyi2">
							<div class="css-1pju0hq-HeaderLeft eog6tyi1">
								<span class="css-3fajxf-CardCollectionBaseDetailHeaderItem epkik100">${picOne.pyeongsu }&nbsp;</span>
								<span class="css-3fajxf-CardCollectionBaseDetailHeaderItem epkik100">${picOne.style}&nbsp;</span>
								<span class="css-3fajxf-CardCollectionBaseDetailHeaderItem epkik100">${picOne.housetype }&nbsp;</span>
							</div>
							<div class="css-1o1f2o5-DateTimePCWrapper eog6tyi0">
								<time datetime="${picOne.post_date}" class="css-1p9oymj-DateItem-CardCollectionBaseDetailHeaderItem eaxmwd20">${picOne.post_date}</time>
							</div>
						</div>
						<c:forEach items="${picOne.pictureFileVO}" var="picfile" >
						<article class="css-10bf0dk-CardArticle e84hk591">
							<div class="css-14lp4c7-ImageWrap e11tzz434">
								<div class="_33oVJ css-1obq9t8">
									<div class="css-1sg787x-ImageContent e11tzz433" style="padding-bottom: 127.979%;">
										<img class="css-1q49uwn-ImageImage e11tzz432" alt="" src="../resources/upload/picture/${picfile.picFilename }">
										<button class="scrap-button css-mi0exo-ImageScrapButton e11tzz431" type="button">
											<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon">
												<defs>
													<path id="scrap-icon-77-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path>
													
													<filter id="scrap-icon-77-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
														<feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
														<feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur>
														<feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite>
														<feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix>
													</filter>
													
													<filter id="scrap-icon-77-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
														<feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur>
														<feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
														<feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite>
														<feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix>
													</filter>
												</defs>
												
												<g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)">
													<use fill="#000" filter="url(#scrap-icon-77-a)" href="#scrap-icon-77-b"></use>
													<use fill="#FFF" fill-opacity=".4" href="#scrap-icon-77-b"></use>
													<use fill="#000" filter="url(#scrap-icon-77-c)" href="#scrap-icon-77-b"></use>
													<path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path>
												</g>
											</svg>
											
											<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
												<path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path>
											</svg>
										</button>
									</div>
								</div>
							</div>
						</article>
						</c:forEach>
						<p class="css-s07o4k-CardDescription e84hk590">${picOne.post_text}</p>
						
						<div class="css-5hu0r1-StatsDiv e1gsich81">
							<dl class="css-p3znpa-Dl e6jntye0">
								<div class="css-1qjg72w-Div e17u2gy12">
									<dt class="css-1sjfyqs-Dt e17u2gy11">조회</dt>
									<dd class="css-yn8cvv-Dd e17u2gy10">${picOne.hit}</dd>
								</div>
								<div class="css-1qjg72w-Div e17u2gy12">
									<dt class="css-1sjfyqs-Dt e17u2gy11">댓글</dt>
									<dd class="css-yn8cvv-Dd e17u2gy10">${count.count}</dd>
									<input type="hidden" value="${count.count}" id="commentCount">
								</div>
								<div class="css-1qjg72w-Div e17u2gy12">
									<dt class="css-1sjfyqs-Dt e17u2gy11">공유</dt>
									<dd class="css-yn8cvv-Dd e17u2gy10">0</dd>
								</div>
								<button type="button" class="css-17rk6qx-CardCollectionBaseDetailStatsButton e1vj69ot0">신고</button>
							</dl>
						</div>
						<div class="css-igg39q-SectionDiv ek1gwp50" style="margin-bottom: 150px;">
							<section class="comment-feed">
								<h1 class="comment-feed__header">댓글&nbsp;
									<span class="comment-feed__header__count zero">${count.count}</span>
								</h1>
								<!-- 댓글 등록-->
					<sec:authorize access="!isAuthenticated()">
						<h4>댓글은 로그인한 후에 확인가능합니다!</h4>
					</sec:authorize>
								
					<sec:authorize access="isAuthenticated()">
								<form class="comment-feed__form comment_add" method="post" id="form">
									<div class="comment-feed__form__user">
										<!-- <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=36" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=144 3x"> -->
										<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144 3x">
									</div>
									<div class="comment-feed__form__input">
										<div class="comment-feed__form__content">
											<div class="comment-content-input">
											<!-- 댓글 내용이 담기는 div -->
												<input name="post_id" value="${picOne.post_id}"  id="post_id" type="hidden">
												<sec:authentication property="principal" var="loginMember"/>
												<input name="memberNum" value="${loginMember.memberNum}" id="memberNum" type="hidden">
												
												<input name="comment_text" type="text" id= "comment_text" class="comment-content-input__text comment-feed__form__content__text" placeholder="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" >
												<!-- <div  class="comment-content-input__text comment-feed__form__content__text" data-ph="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" contenteditable="true"></div> -->
											</div>
										</div>
										
										<div class="comment-feed__form__actions">
											<button class="comment-feed__form__submit add" aria-label="등록" type="button" >등록</button>
										</div>
									</div>
								</form>
								
							
								<ul class="comment-feed__list commentList">
									<c:forEach items="${comment}" var="comment" varStatus="status" >
									
									<c:forEach items="${comment.memberVO}" var="member">
									
									<c:if test="${member.memberNum eq loginMember.memberNum}">
											<%-- <c:forEach begin="1" end="${comment.depth }">
												
											</c:forEach> --%>
										<li class="comment-feed__list__item" id="comment${status.index}">
										<!-- 답댓글일 경우 앞에 margin 주기 -->
											<article class="comment-feed__item self">
												<p class="comment-feed__item__content">
													<a href="#" class="comment-feed__item__content__author" >
														<img class="comment-feed__item__content__author__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144 3x">
														<span class="comment-feed__item__content__author__name">${loginMember.nickname}</span>
													</a>
													<span class="comment-feed__item__content__content">${comment.comment_text}&nbsp;</span>
												</p>
												<footer class="comment-feed__item__footer">
													<time class="comment-feed__item__footer__time">${comment.comment_date}</time>
													<span class="comment-feed__item__footer__likes zero">
														<button class="comment-feed__item__footer__likes__icon" type="button">
															<svg class="badge" width="15" height="14" preserveAspectRatio="xMidYMid meet">
																<path fill-rule="evenodd" class="heart" d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z"></path>
															</svg>
														</button>
														<span class="comment-feed__item__footer__likes__count">0</span>
													</span>
													
													<input id="comment_num${status.index}" value="${comment.comment_num}" type="hidden">
													<button class="comment-feed__item__footer__like-btn" type="button">좋아요</button>
													<button class="comment-feed__item__footer__reply-btn" id="replyBtn${status.index}" type="button">답글 달기</button>
													<button class="comment-feed__item__footer__delete-btn" id="deleteBtn${status.index}" type="button">삭제</button>
													
												</footer>
										</article>
										</li>
									</c:if>
									<c:if test="${member.memberNum ne loginMember.memberNum}">
											<%-- <c:forEach begin="1" end="${comment.depth }">
												
											</c:forEach> --%>
										<li class="comment-feed__list__item" id="comment${status.index}">
											<article class="comment-feed__item">
												<p class="comment-feed__item__content">
													<a href="/users/5990463" class="comment-feed__item__content__author">
														<img class="comment-feed__item__content__author__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144 3x">
														<!-- <img class="comment-feed__item__content__author__image" alt="" src=""> -->
															<c:if test="${member.memberNum eq comment.memberNum}">
																<span class="comment-feed__item__content__author__name">${member.nickname}</span>
															</c:if>
													</a>
													<span class="comment-feed__item__content__content">${comment.comment_text}</span>
												</p>
												
												<footer class="comment-feed__item__footer">
													<time class="comment-feed__item__footer__time">${comment.comment_date}</time>
														<span class="comment-feed__item__footer__likes zero">
															<button class="comment-feed__item__footer__likes__icon" type="button">
																<svg class="badge" width="15" height="14" preserveAspectRatio="xMidYMid meet">
																	<path fill-rule="evenodd" class="heart" d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z"></path>
																</svg>
															</button>
															<span class="comment-feed__item__footer__likes__count">0</span>
														</span>
														<input id="comment_num${status.index}" value="${comment.comment_num}" type="hidden">
														<button  class="comment-feed__item__footer__like-btn" >좋아요</button>
														<button class="comment-feed__item__footer__reply-btn" id="replyBtn${status.index}" >답글 달기</button>
														<button class="comment-feed__item__footer__report-btn" id="reportBtn${status.index}" >신고</button>
														
												</footer>
											
											</article>
										</li>
										</c:if>
									</c:forEach>
									</c:forEach>
								</ul>
				</sec:authorize>
							</section>
						</div>
					</div>
					 <div class="css-ak4bje-Col e15wafbq0">
						<div class="css-w0m1es-SideBarWrap e17tkvx90">
							<div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false" data-sticky-ignore="false" data-direction="top" data-offset="81" class="sticky-container" style="position: sticky; top: 81px;">
								<div class="sticky-child css-1moe4n7" style="position: relative; box-sizing: border-box; height: 266.203px;">
									<div class="css-1e8bjjw-Div ew81gs70">
										<button class="_3Z6oR _1SCvK _2tsrJ _3aUSM css-1uts5l0-ActionButton elwkc52" type="button" aria-pressed="false" title="좋아요" aria-label="좋아요">
											<span class="css-13w5lgd-ActionButtonIcon elwkc51">
												<svg width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" class="css-esg54n-ActionHeartIcon-IconSvg ek5sxnq1">
													<path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
												</svg>
											</span>
											<span class="css-36arso-ActionButtonCount elwkc50">${feeling.count}</span>
										</button>
										
										<button class="_3Z6oR _1SCvK _2tsrJ _3aUSM css-1uts5l0-ActionButton elwkc52" type="button" aria-pressed="false" title="스크랩" aria-label="스크랩">
											<span class="css-13w5lgd-ActionButtonIcon elwkc51">
												<svg width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" class="css-1qgnuj8-ActionScrapIcon-IconSvg ek5sxnq2">
													<path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path>
												</svg>
											</span>
											<span class="css-36arso-ActionButtonCount elwkc50">${scraping.scrapCount}</span>
										</button>
										
										
										<!-- 로그인한 정보가 글쓴이일때 수정 삭제 띄우기 -->
										<c:choose>
										<c:when test="${loginMember.memberNum eq picOne.memberVO.memberNum}">
										<%-- <c:if test="${loginMember.memberNum == picOne.memberVO.memberNum }"> --%>
											<div class="drop-down">
												<button type="button" aria-pressed="false" aria-label="더보기" title="더보기" class="css-1v8hv0n-MoreButton einumkw0 loginDrop">
													<svg width="1em" height="1em" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
														<g fill="currentColor" transform="translate(11 3)">
															<circle cx="1.5" cy="1.5" r="1.5"></circle>
															<circle cx="1.5" cy="8.5" r="1.5"></circle>
															<circle cx="1.5" cy="15.5" r="1.5"></circle>
														</g>
													</svg>
												</button>
													<div class="animated-popout drop-down__content open open-active update" style="display: none;">
														<ul class="content-detail-dropdown-list">
															<li class="content-detail-dropdown-list-item">
																<button class="content-detail-dropdown-list-item__button updateBtn" type="button">수정하기</button>
															</li>
														</ul>
													</div>
													<div class="animated-popout drop-down__content open open-active delete" style="display: none;">
														<ul class="content-detail-dropdown-list">
															<li class="content-detail-dropdown-list-item">
																<button class="content-detail-dropdown-list-item__button deleteBtn" type="button">삭제하기</button>
															</li>
														</ul>
													</div>
											</div>
										<%-- </c:if> --%>
										</c:when>
										
										<c:otherwise>
										<%-- <c:if test="${loginMember.memberNum ne picOne.memberVO.memberNum }"> --%>
											<div class="drop-down">
												<button type="button" aria-pressed="false" aria-label="더보기" title="더보기" class="css-1v8hv0n-MoreButton einumkw0 noLoginDrop">
													<svg width="1em" height="1em" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
														<g fill="currentColor" transform="translate(11 3)">
															<circle cx="1.5" cy="1.5" r="1.5"></circle>
															<circle cx="1.5" cy="8.5" r="1.5"></circle>
															<circle cx="1.5" cy="15.5" r="1.5"></circle>
														</g>
													</svg>
												</button>
													<div class="animated-popout drop-down__content open open-active report" style="display: none;">
														<ul class="content-detail-dropdown-list">
															<li class="content-detail-dropdown-list-item">
																<button class="content-detail-dropdown-list-item__button reportBtn" type="button">신고하기</button>
															</li>
														</ul>
													</div>
													
											</div>
										<%-- </c:if> --%>
										</c:otherwise>
										</c:choose>
									</div>
									
									 <address class="css-cta4ra-AuthorAddress e1v9tg6s6">
										<div class="css-9pbsgo-AuthorAuthor e1v9tg6s5">
											<div class="css-1p7q7e9-AuthorTitle e1v9tg6s4">
												<a class="css-kp67iu-AuthorLink e1v9tg6s3" href="/users/2624519">
													<div class="css-snaekv-AuthorImage e1v9tg6s2">
														<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144 3x">
													</div>
													${picOne.memberVO.nickname}
												</a>
											</div>
											<div class="css-ajp79q-AuthorIntroduction e1v9tg6s1">프로필 한줄</div>
										</div>
										<button class="_3Z6oR _3AsCW _1XHs9 css-1ch1nkx-AuthorFollowButton e1v9tg6s0" type="button">팔로우</button>
									</address>
									
									<div class="css-1blnoph-SideBarContent ewjzpes0">
										<div class="card-detail-pc-related-card-list">
											<!-- <ul class="card-detail-pc-related-card-list__list">
												<li class="card-detail-pc-related-card-list__item">
													<a class="card-detail-pc-related-card-list__item__link" href="/contents/card_collections/10802123">
														<img class="card-detail-pc-related-card-list__item__image" alt="" src="https://image.ohou.se/i/video-service-prd-s3-bucket-thumbnail/619e2bde26e55c13ef85783a/619e2bde26e55c13ef85783a.0000001.jpg?gif=1&amp;w=160&amp;h=160&amp;c=c" srcset="https://image.ohou.se/i/video-service-prd-s3-bucket-thumbnail/619e2bde26e55c13ef85783a/619e2bde26e55c13ef85783a.0000001.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c 1.5x,https://image.ohou.se/i/video-service-prd-s3-bucket-thumbnail/619e2bde26e55c13ef85783a/619e2bde26e55c13ef85783a.0000001.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c 2x,https://image.ohou.se/i/video-service-prd-s3-bucket-thumbnail/619e2bde26e55c13ef85783a/619e2bde26e55c13ef85783a.0000001.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c 3x">
													</a>
												</li>
												<li class="card-detail-pc-related-card-list__item">
													<a class="card-detail-pc-related-card-list__item__link" href="/contents/card_collections/10800605">
														<img class="card-detail-pc-related-card-list__item__image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/163774942943802501.jpeg?gif=1&amp;w=160&amp;h=160&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/163774942943802501.jpeg?gif=1&amp;w=240&amp;h=240&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/163774942943802501.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/163774942943802501.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c 3x">
													</a>
												</li>
												<li class="card-detail-pc-related-card-list__item">
													<a class="card-detail-pc-related-card-list__item__link" href="/contents/card_collections/10512455">
														<img class="card-detail-pc-related-card-list__item__image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163600835512766749.jpeg?gif=1&amp;w=160&amp;h=160&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163600835512766749.jpeg?gif=1&amp;w=240&amp;h=240&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163600835512766749.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163600835512766749.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c 3x">
													</a>
												</li>
												<li class="card-detail-pc-related-card-list__item">
													<a class="card-detail-pc-related-card-list__item__link" href="/contents/card_collections/10499851">
														<img class="card-detail-pc-related-card-list__item__image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163592837352263634.jpeg?gif=1&amp;w=160&amp;h=160&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163592837352263634.jpeg?gif=1&amp;w=240&amp;h=240&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163592837352263634.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163592837352263634.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c 3x">
													</a>
												</li>
											</ul>
											<a class="card-detail-pc-related-card-list__more" href="/users/2624519/card_collections">더보기</a> -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
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
						<a class="layout-navigation-bar-user-menu__item" href="../member/mypage?memberNum=${num.memberNum}">마이페이지</a>
					</li>
					</sec:authorize>
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
	</sec:authorize>	



<script type="text/javascript">
	
//add 버튼 눌렀을때 댓글 등록하기
$('.add').click(function(){
	alert('등록');
	let post_id = $('#post_id').val();
	let memberNum = $('#memberNum').val();
	let comment_text = $('#comment_text').val();
	
	console.log(post_id, memberNum, comment_text);
	
	$.ajax({
		type:"POST",
		url:"./picCommentInsert",
		data: {
			post_id:post_id,
			memberNum:memberNum,
			comment_text:comment_text
		},
		success:function(result){
			console.log(result.trim());
			console.log("댓글 등록 성공");
			document.location.reload(true);
			//getComment();
		},
		error:function(xhr, status, error){
	          console.log(error);
	    }

	});
	
});

//댓글 가져오기 function

 function getComment(){
	let post_id = $('#post_id').val();
	
	$.ajax({
		type:"GET",	
		url:"./picCommentSelect",
		data:{
			post_id:post_id
		},
		success:function(comment){
			console.log("댓글 가져오기 성공");
			console.log(comment);
			
			//result= result.trim();
			//$('.commentList').html(result);
			//console.log($('.commentList').html(result));
		},
		error:function(xhr, status, error){
	          console.log(error);
	    }
		
	});
};
 
//댓글 개수
let count = $('#commentCount').val()


 //삭제 버튼 클릭시 댓글 삭제하기
 // -----------------댓글수 가져와서 i 한계 변경하기
 for(let i=0; i<count; i++){
	 $('#deleteBtn'+i).click(function(){
		 console.log(i)
		 let comment_num = $('#comment_num'+i).val();
		 console.log("conum:" + comment_num);
		 $.ajax({
			 type:"GET",
			 url: "./picCommentDelete",
			 data: {
				 comment_num:comment_num
			 },
			 success:function(result){
				 console.log("댓글 삭제 성공")
				 document.location.reload(true);
			 },
			 error:function(xhr, status, error){
				 console.log(error);
			 }
		 });  
		 
		 
	 });
 };
 
 // 신고버튼 클릭시 경고창
 for(let i=0; i<count; i++){
	 $('#reportBtn'+i).click(function(){
		 alert('신고되었습니다.');
	 })
 }
 

//답댓글달기 -- 답댓글 margin left 걸기
	for(let i=0; i<count; i++){
		$('#replyBtn'+i).click(function(){
			alert('답글');
			let comment_num = $('#comment_num'+i).val();
			console.log('comment_num:'+comment_num)
			//답글 누르면 댓글쓰는 폼 띄우기
			let replyForm = '<form class="comment-feed__form comment_add" method="post" id="form" style="margin-left:20px;">';
			replyForm= replyForm+'<div class="comment-feed__form__user">';
			replyForm= replyForm+'<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144 3x"></div>';
			/* replyForm= replyForm+'<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=36" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=144 3x"></div>'; */
			replyForm= replyForm+'<div class="comment-feed__form__input"><div class="comment-feed__form__content"><div class="comment-content-input">';
			/* replyForm= replyForm+'<input name="post_id" value="${picOne.post_id}"  id="post_id" type="hidden"><sec:authentication property="principal" var="member"/>'; */
			replyForm= replyForm+'<input name="comment_text" type="text" id= "reply_text" class="comment-content-input__text comment-feed__form__content__text" placeholder="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" >';
			replyForm= replyForm+'</div></div><div class="comment-feed__form__actions">';
			replyForm= replyForm+'<button class="comment-feed__form__submit addReply" aria-label="등록" type="button" >등록</button></div></div></form>';
			
			$('#comment'+i).append(replyForm);
			
			//답댓글 등록
			let post_id = $('#post_id').val();
			let memberNum = $('#memberNum').val();
			
			$('.addReply').click(function(){
				let comment_text = $('#reply_text').val();
				console.log(post_id, comment_text)
				$.ajax({
					type:"POST",
					url:"./picReplyComment",
					data:{
						post_id:post_id,
						memberNum:memberNum,
						comment_text:comment_text,
						comment_num:comment_num
					},
					success:function(result){
						if(result>=1){
							console.log("답댓글 달기 성공")
							document.location.reload(true);
						}
					},
					error:function(xhr, status, error){
						console.log(error);
					}
				});
				
			});
			
			
		});
	};
 
//더보기 버튼 클릭
$('.loginDrop').click(function(){
	alert('내꺼')
	$('.update').attr('style','display:block' );
	$('.delete').attr('style','display:block' ); 
});
$('.updateBtn').click(function(){
	let post_id = $('#post_id').val();
	 location.href="./picUpdate?post_id="+post_id;
})
$('.deleteBtn').click(function(){
	let post_id = $('#post_id').val();
	 location.href="./picDelete?post_id="+post_id;
})


 $('.noLoginDrop').click(function(){
	 //alert('내꺼 아님')
	$('.report').attr('style', 'display:block');
 });
 
 $('.reportBtn').click(function(){
	 alert('신고되었습니다.');
	 $('.report').attr('style', 'display:none');
 })
 
 
 //마이메뉴 선택하면 마이페이지/로그아웃 등 드롭다운 메뉴 보여주기

	$('.myBtn').click(function(){
		//alert('마이메뉴');
		$('.mymenu').css('display', 'block');
	})
	
// 이외의 영역을 클릭하면 사라지기	

	$('.closeMenu').click(function(e){
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
	
	
 
</script>
</body>
</html>