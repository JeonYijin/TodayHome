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
<link rel="stylesheet" href="../resources/css/picheader.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
	<!-- <h1>PicOne page</h1> -->
	<div class="layout">
		<header class="layout-navigation-bar">
			<div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="true" data-sticky-ignore="false" data-direction="top" data-offset="0" class="sticky-container layout-navigation-primary-wrap" style="">
				<div class="sticky-child layout-navigation-primary" style="position: relative;">
					<div class="layout-navigation-primary__content">
						<div class="layout-navigation-primary__leftmost">
							<button class="layout-navigation-bar-icon layout-navigation-bar-drawer-button" title="메뉴" aria-label="메뉴" type="button">
								<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
									<path fill="currentColor" d="M3 4h18v2H3V4zm0 7h18v2H3v-2zm0 7h18v2H3v-2z"></path>
								</svg>
							</button>
						</div>
						<div class="layout-navigation-primary__left">
							<a class="layout-navigation-logo layout-navigation__bar__logo" aria-label="오늘의집" href="/">
								<svg class="icon" width="74" height="30" viewBox="0 0 74 30" preserveAspectRatio="xMidYMid meet">
									<g fill="none" fill-rule="evenodd">
										<path fill="#000" d="M14.2 25.17H9.28V20.7a1.45 1.45 0 0 0-2.9 0v4.47H1.44a1.45 1.45 0 1 0 0 2.9H14.2a1.45 1.45 0 0 0 0-2.9M4.5 9.15c0-4.6 2.08-5.28 3.33-5.28 1.24 0 3.33.69 3.33 5.28v.36c0 4.6-2.09 5.28-3.33 5.28-1.25 0-3.34-.69-3.34-5.28v-.36zm3.33 8.54c3.84 0 6.23-3.13 6.23-8.18v-.36c0-5.05-2.39-8.18-6.23-8.18-3.85 0-6.24 3.13-6.24 8.18v.36c0 5.05 2.39 8.19 6.24 8.19zm25.54-7.34H17.81a1.45 1.45 0 0 0 0 2.9h15.56a1.45 1.45 0 1 0 0-2.9m-1.55 15.5c-7.08 1.83-9.45.79-10.14.25-.45-.35-.65-.8-.65-1.48v-.87h10.25c.8 0 1.46-.65 1.46-1.45v-5.08c0-.8-.66-1.45-1.46-1.45h-11.7a1.45 1.45 0 1 0 0 2.9h10.25v2.18H19.57c-.8 0-1.45.65-1.45 1.45v2.32a4.6 4.6 0 0 0 1.78 3.78c1.2.93 2.94 1.39 5.21 1.39 2.05 0 4.54-.38 7.44-1.13a1.45 1.45 0 1 0-.73-2.82M20.3 7.83h10.8a1.45 1.45 0 1 0 0-2.9h-9.35V1.45a1.45 1.45 0 1 0-2.9 0v4.93c0 .8.65 1.45 1.45 1.45"></path>
											<rect width="3" height="15" x="70" fill="#000" rx="1.5"></rect>
										<path fill="#000" d="M64.5 13.28a1.45 1.45 0 0 0 2.73-1c-.05-.13-1-2.68-3.38-4.5l3.7-4.1a1.45 1.45 0 0 0-1.09-2.42h-9.05a1.45 1.45 0 1 0 0 2.9h5.8l-6.88 7.64a1.45 1.45 0 1 0 2.16 1.95l3.41-3.8a8 8 0 0 1 2.6 3.33M69.56 26.52h-7.01a.82.82 0 0 1-.82-.82v-1.95h8.65v1.95c0 .45-.37.82-.82.82m2.27-9.37c-.8 0-1.45.65-1.45 1.45v2.25h-8.65V18.6a1.45 1.45 0 1 0-2.9 0v7.1a3.73 3.73 0 0 0 3.72 3.72h7.01a3.73 3.73 0 0 0 3.72-3.72v-7.1c0-.8-.65-1.45-1.45-1.45M42.46 3.87c2.22 0 2.33 4.24 2.33 5.08 0 .85-.11 5.09-2.33 5.09-2.21 0-2.32-4.24-2.32-5.08 0-.86.11-5.09 2.32-5.09m0 13.07c1.76 0 3.23-.93 4.14-2.62.71-1.34 1.1-3.2 1.1-5.36s-.39-4.02-1.1-5.37A4.6 4.6 0 0 0 42.46.97c-1.76 0-3.22.93-4.13 2.62-.72 1.35-1.1 3.2-1.1 5.37s.38 4.01 1.1 5.36a4.59 4.59 0 0 0 4.13 2.62"></path><path fill="#000" d="M51.4.49c-.8 0-1.45.65-1.45 1.45v17.78c-1.93.6-5.75 1.13-10.38 1.13h-2.2a1.45 1.45 0 0 0 0 2.9h2.2c2.64 0 7.21-.23 10.38-1.02v4.84a1.45 1.45 0 0 0 2.9 0V1.94c0-.8-.65-1.45-1.45-1.45"></path>
									</g>
								</svg>
							</a>
						</div>
						<nav class="layout-navigation-primary__menu">
							<a class="layout-navigation-primary__menu__item layout-navigation-primary__menu__item--active layout-navigation-primary__menu__item--open" href="/">커뮤니티</a>
							<a class="layout-navigation-primary__menu__item" href="/store">스토어</a>
							<a class="layout-navigation-primary__menu__item" href="/experts">인테리어시공</a>
						</nav>
						<div class="layout-navigation-primary__right">
							<div class="layout-navigation-bar-search">
								<div class="layout-navigation-search" id="id-12">
									<div class="layout-navigation-search__header">
										<div id="id-12-combobox" class="layout-navigation-search__combobox" role="combobox" aria-haspopup="listbox" aria-expanded="false">
											<div class="layout-navigation-search__input">
												<input class="layout-navigation-search__input__text" type="text" autocomplete="off" size="1" id="id-12-input" aria-autocomplete="list" placeholder="오늘의집 통합검색" aria-label="오늘의집 통합검색" value="">
												<svg class="layout-navigation-search__input__icon" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" preserveAspectRatio="xMidYMid meet">
													<path d="M22 22l-5-5"></path>
													<circle cx="11" cy="11" r="8"></circle>
												</svg>
											</div>
										</div>
									</div>
								</div>
							</div>
							<button class="layout-navigation-bar-icon layout-navigation-bar-search-button" title="검색" aria-label="검색" type="button">
								<svg class="icon" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" preserveAspectRatio="xMidYMid meet">
									<path d="M22 22l-5-5"></path>
									<circle cx="11" cy="11" r="8"></circle>
								</svg>
							</button>
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
								<span class="layout-navigation-bar-icon__ticker">6</span>
							</a>
							<div class="drop-down layout-navigation-bar-user-section">
								<button class="layout-navigation-bar-user-button" type="button" aria-label="콘무지">
									<div class="layout-navigation-bar-user-button__image">
										<img class="image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x">
									</div>
									<svg class="layout-navigation-bar-user-button__caret" width="8" height="8" viewBox="0 0 8 8" fill="currentColor" preserveAspectRatio="xMidYMid meet">
										<path d="M0 2l4 4 4-4z"></path>
									</svg>
								</button>
							</div>
							<div class="drop-down layout-navigation-bar-upload-button">
								<button class="layout-navigation-bar-upload-button__button" type="button">글쓰기
									<svg class="icon" width="1em" height="1em" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd" d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path>
									</svg>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="true" data-sticky-ignore="false" data-direction="top" data-offset="31" class="sticky-container layout-navigation-secondary-wrap" style="">
				<div class="sticky-child layout-navigation-secondary" style="position: relative;">
					<div class="layout-navigation-secondary__content">
						<nav class="layout-navigation-secondary__menu">
							<a class="layout-navigation-secondary__menu__item" href="/">홈</a>
							<a class="layout-navigation-secondary__menu__item" href="/contents/follow/feed">팔로잉</a>
							<a class="layout-navigation-secondary__menu__item layout-navigation-secondary__menu__item--active" href="./picList">사진</a>
							<a class="layout-navigation-secondary__menu__item" href="/projects?writer=self">집들이</a>
							<a class="layout-navigation-secondary__menu__item" href="/advices">노하우</a>
							<a class="layout-navigation-secondary__menu__item" href="/projects?writer=pro">전문가집들이</a>
							<a class="layout-navigation-secondary__menu__item" href="/advices/guides/self_interior">셀프가이드</a>
							<a class="layout-navigation-secondary__menu__item" href="/questions">질문과답변</a>
							<a class="layout-navigation-secondary__menu__item" href="/competitions/feed">이벤트</a>
						</nav>
						<!-- <div class="layout-navigation-app-download layout-navigation__bar__app-download">
							<a class="layout-navigation-app-download__link" href="/3d_intro">
								<svg class="icon" width="20" height="20" viewBox="0 0 20 20" preserveAspectRatio="xMidYMid meet">
									<g fill="none" fill-rule="evenodd">
										<path fill="#35C5F0" d="M16.41 0H3.59A3.59 3.59 0 0 0 0 3.59v12.82A3.59 3.59 0 0 0 3.59 20h12.82A3.59 3.59 0 0 0 20 16.41V3.59A3.59 3.59 0 0 0 16.41 0"></path>
										<path  fill="rgb(255, 255, 255)" d="M14.75 10.34c-.74 0-1.33-.6-1.33-1.34 0-.74.6-1.34 1.33-1.34s1.32.6 1.32 1.34c0 .74-.59 1.34-1.32 1.34zm-1 3.53H6.12V8.75l3.82-2.7 2.2 1.55a3.01 3.01 0 0 0-.35 1.4 3 3 0 0 0 1.98 2.83v2.04zm1-7.87c-.34 0-.66.06-.97.17l-3.17-2.24a1.18 1.18 0 0 0-1.35 0L4.5 7.28a1.2 1.2 0 0 0-.51.98v6.54c0 .66.53 1.2 1.19 1.2h9.5a1.2 1.2 0 0 0 1.18-1.2v-3.02A3 3 0 0 0 17.7 9c0-1.65-1.32-3-2.96-3z"></path>
									</g>
								</svg>
							3D인테리어
								<svg class="icon-beta" width="30" height="14" preserveAspectRatio="xMidYMid meet">
									<g fill="none" fill-rule="evenodd">
										<rect width="30" height="14" fill="#757575" rx="7"></rect>
										<path fill="#FFF" fill-rule="nonzero" d="M7.1 10.59c1.52 0 2.24-.82 2.24-1.96 0-1-.53-1.48-1.33-1.64v-.03c.76-.26 1.05-.78 1.05-1.5 0-1.09-.64-1.73-2.12-1.73H4.69v6.86h2.4zm-.37-3.94h-.9V4.64h.95c.74 0 1.13.25 1.13.99 0 .78-.5 1.02-1.18 1.02zm.2 3.02h-1.1v-2.2h1.04c.82 0 1.26.3 1.26 1.09 0 .75-.42 1.11-1.2 1.11zm7.65.92v-.97h-2.92V7.54h2.22v-.96h-2.22V4.7h2.86v-.97h-4.01v6.86h4.07zm3.8 0V4.7h1.83v-.97h-4.83v.97h1.85v5.89h1.15zm2.92 0l.58-1.74h2.39l.58 1.74h1.2l-2.3-6.86h-1.18l-2.34 6.86h1.07zm2.68-2.66h-1.83l.9-2.74h.03l.9 2.74z"></path>
									</g>
								</svg>
							</a>
						</div> -->
					</div>
				</div>
			</div>
		</header>
		
		
		
		
		
		
		
		<div class="css-2iwhjz-DetailDiv e1auuux0">
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
 
</script>
</body>
</html>