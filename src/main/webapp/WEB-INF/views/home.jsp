<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Today Home</title>

<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&amp;display=swap&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/preamble-97ede701.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/App-6e6c2f0c.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/templates-Home-HomePage-f3a55bf4.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/21-0e75de9b.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/23-2ef16b9a.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/App-6e6c2f0c.chunk.css">
</head>
<body>
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
					<div class="layout-navigation-primary__right">
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
							<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
								fill="none" stroke="currentColor" stroke-width="2"
								preserveAspectRatio="xMidYMid meet">
								<path d="M22 22l-5-5"></path>
								<circle cx="11" cy="11" r="8"></circle></svg>
						</button>
						<a class="layout-navigation-bar-icon" title="장바구니"
							aria-label="장바구니" href="/cart"><svg class="icon" width="24"
								height="24" viewBox="0 0 24 24" stroke="currentColor"
								fill="none" stroke-linejoin="round" stroke-width="2"
								preserveAspectRatio="xMidYMid meet">
								<path stroke-linecap="round"
									d="M4 5h18l-2.6 10.5a2 2 0 0 1-2 1.5H8.6a2 2 0 0 1-2-1.5L4 5zm4 15.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0zm7 0a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0z"></path>
								<path d="M1 2h3v3"></path></svg></a>
						<div class="layout-navigation-bar-login">
							<a class="layout-navigation-bar-login__item"
								href="../member/memberLogin">로그인</a><a
								class="layout-navigation-bar-login__item"
								href="../member/memberJoin">회원가입</a><a
								class="layout-navigation-bar-login__item layout-navigation-bar-login__item--xl"
								href="/customer_center">고객센터</a>
						</div>
						<div class="drop-down layout-navigation-bar-upload-button">
							<button class="layout-navigation-bar-upload-button__button"
								type="button">
								글쓰기
								<svg class="icon" width="1em" height="1em" viewBox="0 0 16 16"
									preserveAspectRatio="xMidYMid meet">
									<path fill="currentColor" fill-rule="evenodd"
										d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path></svg>
							</button>
						</div>
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



	<!-- 바디 -->
	<div class="home-page">
		<div class="container home-header">
				<div class="row">
					<div class="col-12 col-md-9 home-header__story">
						
						<article class="story-entry home-header__story__image">
							<a class="story-entry-link" href="/projects/67669/detail?affect_type=Home&amp;affect_id=0">
								<div class="story-entry__image-wrap">
									<img class="story-entry__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163792532392928555.jpg?gif=1&amp;w=850&amp;h=567&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163792532392928555.jpg?gif=1&amp;w=1280&amp;h=854&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163792532392928555.jpg?gif=1&amp;w=1700&amp;h=1134&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163792532392928555.jpg?gif=1&amp;w=2560&amp;h=1707&amp;c=c 3x">
								</div>
								<div class="story-entry__content-wrap">
									<div class="story-entry__content">
										<div class="story-entry__content__category"></div>
										<div class="story-entry__content__title">우여곡절은 긍정파워로 해결!<br></div>
										
										<div class="story-entry__content__profile">
											<img class="story-entry__content__profile__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163869133794883507.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163869133794883507.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163869133794883507.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163869133794883507.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x">
											<span class="story-entry__content__profile__name">casa___m.n</span>
										
										</div>
									</div>
								<div class="home-header__story__more">보러가기</div>
								</div>
							</a>
						</article>
						
					</div>
					<div class="col-12 col-md-3 home-header__banner-col">
						<div class="home-header__banner-wrap">
							<div class="carousel home-header__banner-container" role="region" aria-roledescription="carousel">
								<div class="carousel__list-wrap home-header__banner">
									<div class="carousel__list home-header__banner__list" aria-live="off" style="transform: translateX(0%);">
										<div class="carousel__list__entry home-header__banner__item" role="group" aria-roledescription="slide" aria-label="3 of 13" style="width: 100%;">
											<div class="home-header__banner__item__container">
												<a class="home-header__banner__item__link" href="/exhibitions/1433?affect_type=Home&amp;affect_id=0" target="">
													<img class="pc-banner" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/banners/home_banner/163871163005228430.png?gif=1&amp;w=512" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/banners/home_banner/163871163005228430.png?gif=1&amp;w=850 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/banners/home_banner/163871163005228430.png?gif=1&amp;w=1024 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/banners/home_banner/163871163005228430.png?gif=1&amp;w=1536 3x">
													<div class="mobile-banner"></div>
												</a>
											</div>
										</div>
									</div>
								</div>
								<div class="home-header__banner-control">
									<div class="home-header__banner-control__icon">
										<svg class="home-header__banner-control__icon__arrow home-header__banner-control__icon__arrow--left" width="10" height="18" viewBox="0 0 10 18" preserveAspectRatio="xMidYMid meet">
											<path fill="#FFF" fill-rule="evenodd" d="M9.89 9l.137-.137L1.343.18l-1.37 1.37L7.424 9l-7.451 7.451 1.37 1.37 8.684-8.684L9.89 9z"></path>
										</svg>
									</div>
									<ul class="home-header__banner-control__page">
										<li class="home-header__banner-control__page__item">
											<button type="button" class="home-header__banner-control__page__item__button"></button>
										</li>
										<li class="home-header__banner-control__page__item">
											<button type="button" class="home-header__banner-control__page__item__button"></button>
										</li>
										<li class="home-header__banner-control__page__item home-header__banner-control__page__item--select">
											<button type="button" class="home-header__banner-control__page__item__button"></button>
										</li>
										<li class="home-header__banner-control__page__item">
											<button type="button" class="home-header__banner-control__page__item__button"></button>
										</li>
										<li class="home-header__banner-control__page__item">
											<button type="button" class="home-header__banner-control__page__item__button"></button>
										</li>
										<li class="home-header__banner-control__page__item">
											<button type="button" class="home-header__banner-control__page__item__button"></button>
										</li>
										<li class="home-header__banner-control__page__item">
											<button type="button" class="home-header__banner-control__page__item__button"></button>
										</li>
										<li class="home-header__banner-control__page__item">
											<button type="button" class="home-header__banner-control__page__item__button"></button>
										</li>
										<li class="home-header__banner-control__page__item">
											<button type="button" class="home-header__banner-control__page__item__button"></button>
										</li>
										<li class="home-header__banner-control__page__item">
											<button type="button" class="home-header__banner-control__page__item__button"></button>
										</li>
										<li class="home-header__banner-control__page__item">
											<button type="button" class="home-header__banner-control__page__item__button"></button>
										</li>
										<li class="home-header__banner-control__page__item">
											<button type="button" class="home-header__banner-control__page__item__button"></button>
										</li>
										<li class="home-header__banner-control__page__item">
											<button type="button" class="home-header__banner-control__page__item__button"></button>
										</li>
									</ul>
									<div class="home-header__banner-control__icon">
										<svg class="home-header__banner-control__icon__arrow home-header__banner-control__icon__arrow--right" width="10" height="18" viewBox="0 0 10 18" preserveAspectRatio="xMidYMid meet">
											<path fill="#FFF" fill-rule="evenodd" d="M9.89 9l.137-.137L1.343.18l-1.37 1.37L7.424 9l-7.451 7.451 1.37 1.37 8.684-8.684L9.89 9z"></path>
										</svg>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		</div>
		<nav class="container shortcut">
			<ul class="row shortcut__list">
				<li class="shortcut__list__item">
					<a class="shortcut__list__item__link" href="/store/?affect_type=Home&amp;affect_id=0">
						<div class="shortcut__list__item__link__image">
							<img class="shortcut__list__item__link__image__img" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-home_feed_shortcut_sets-163146766870457158.png/512/none">
						</div>
						<div class="shortcut__list__item__link__title">쇼핑하기</div>
					</a>
				</li>
				<li class="shortcut__list__item">
					<a class="shortcut__list__item__link" href="/exhibitions/1763?affect_type=Home&amp;affect_id=0">
						<div class="shortcut__list__item__link__image">
							<img class="shortcut__list__item__link__image__img" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-home_feed_shortcut_sets-162631001897809227.png/512/none">
						</div>
						<div class="shortcut__list__item__link__title">오늘의집배송</div>
					</a>
				</li>
				<li class="shortcut__list__item">
					<a class="shortcut__list__item__link" href="/projects?writer=self&amp;affect_type=Home&amp;affect_id=0#area">
						<div class="shortcut__list__item__link__image">
							<img class="shortcut__list__item__link__image__img" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-home_feed_shortcut_sets-162631007985482356.png/512/none">
						</div>
						<div class="shortcut__list__item__link__title">평수별집구경</div>
					</a>
				</li>
				<li class="shortcut__list__item">
					<a class="shortcut__list__item__link" href="/competitions/623?affect_type=Home&amp;affect_id=0">
						<div class="shortcut__list__item__link__image">
							<img class="shortcut__list__item__link__image__img" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-home_feed_shortcut_sets-163875264580793446.png/512/none">
						</div>
						<div class="shortcut__list__item__link__title">위드크리스마스</div>
					</a>
				</li>
				<li class="shortcut__list__item">
					<a class="shortcut__list__item__link" href="/experts?section=auto-matching&amp;affect_type=Home&amp;affect_id=0">
						<div class="shortcut__list__item__link__image">
							<img class="shortcut__list__item__link__image__img" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-home_feed_shortcut_sets-163280526167270880.png/512/none">
						</div>
						<div class="shortcut__list__item__link__title">빠른시공상담</div>
					</a>
				</li>
				<li class="shortcut__list__item">
					<a class="shortcut__list__item__link" href="/commerces/today_deals?special_feed=true&amp;affect_type=Home&amp;affect_id=0">
						<div class="shortcut__list__item__link__image">
							<img class="shortcut__list__item__link__image__img" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-home_feed_shortcut_sets-163724766331777405.png/512/none">
						</div>
						<div class="shortcut__list__item__link__title">오늘의딜</div>
					</a>
				</li>
				<li class="shortcut__list__item">
					<a class="shortcut__list__item__link" href="/events/thank-offering-2021?outbound=false&amp;click_action_type=webview&amp;affect_type=Home&amp;affect_id=0">
						<div class="shortcut__list__item__link__image">
							<img class="shortcut__list__item__link__image__img" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-home_feed_shortcut_sets-163832713080146282.png/512/none">
						</div>
						<div class="shortcut__list__item__link__title">연말빅세일</div>
					</a>
				</li>
				<li class="shortcut__list__item">
					<a class="shortcut__list__item__link" href="/competitions/621?affect_type=Home&amp;affect_id=0">
						<div class="shortcut__list__item__link__image">
							<img class="shortcut__list__item__link__image__img" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-home_feed_shortcut_sets-163832758393552557.png/512/none">
						</div>
						<div class="shortcut__list__item__link__title">포인트백 이벤트</div>
					</a>
				</li>
			</ul>
		</nav>
		
		<section class="container home-section home-stories">
			<header class="row home-section__header">
				<h2 class="col home-section__header__content">오늘의 스토리</h2>
			</header>
			<ul class="row home-stories__content">
				<li class="col-6 col-md-3 home-stories__content__item">
					<article class="story-entry story-story-item">
						<a class="story-entry-link" href="/projects/68051/detail?affect_type=Home&amp;affect_id=0">
							<div class="story-entry__image-wrap">
								<img class="story-entry__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163713619070517802.heic?gif=1&amp;w=320&amp;h=214&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163713619070517802.heic?gif=1&amp;w=480&amp;h=320&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163713619070517802.heic?gif=1&amp;w=640&amp;h=427&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163713619070517802.heic?gif=1&amp;w=850&amp;h=567&amp;c=c 3x">
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title">아기자기하고 따뜻함으로 가득 찬 INFP의 자취방<br></div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158805802800106286.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158805802800106286.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158805802800106286.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158805802800106286.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x">
										<span class="story-entry__content__profile__name">_baekyujin_</span>
									</div>
								</div>
							</div>
						</a>
					</article>
				</li>
				<li class="col-6 col-md-3 home-stories__content__item">
					<article class="story-entry story-story-item">
						<a class="story-entry-link" href="/projects/68082/detail?affect_type=Home&amp;affect_id=0">
							<div class="story-entry__image-wrap">
								<img class="story-entry__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/163843505621330826.jpg?gif=1&amp;w=320&amp;h=214&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/163843505621330826.jpg?gif=1&amp;w=480&amp;h=320&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/163843505621330826.jpg?gif=1&amp;w=640&amp;h=427&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/163843505621330826.jpg?gif=1&amp;w=850&amp;h=567&amp;c=c 3x">
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title">휴양지 리조트 같은 복층 빌라<br></div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1514252843_Ehvl0eCs.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1514252843_Ehvl0eCs.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1514252843_Ehvl0eCs.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1514252843_Ehvl0eCs.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x">
										<span class="story-entry__content__profile__name">미네르바의 부엉이83</span>
									</div>
								</div>
							</div>
						</a>
					</article>
				</li>
				<li class="col-6 col-md-3 home-stories__content__item">
					<article class="story-entry story-story-item">
						<a class="story-entry-link" href="/projects/69450/detail?affect_type=Home&amp;affect_id=0">
							<div class="story-entry__image-wrap">
								<img class="story-entry__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163731662763813851.jpg?gif=1&amp;w=320&amp;h=214&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163731662763813851.jpg?gif=1&amp;w=480&amp;h=320&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163731662763813851.jpg?gif=1&amp;w=640&amp;h=427&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163731662763813851.jpg?gif=1&amp;w=850&amp;h=567&amp;c=c 3x">
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title">크리스마스가 찾아온 홈 캠핑장<br></div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1480316471_L9jT.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1480316471_L9jT.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1480316471_L9jT.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1480316471_L9jT.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x">
										<span class="story-entry__content__profile__name">byulice</span>
									</div>
								</div>
							</div>
						</a>
					</article>
				</li>
				<div class="col-6 col-md-3 home-stories__content__menu-wrap">
					<div class="home-stories__content__menu">
						<a class="home-stories__content__menu__entry" href="/projects?writer=self&amp;affect_type=Home&amp;affect_id=0">
							<div class="description">예쁜 집 구경하기</div>
							<div class="title">
								<span class="text">집들이</span>
								<div class="arrow"></div>
							</div>
						</a>
						<a class="home-stories__content__menu__entry" href="/projects?writer=pro&amp;affect_type=Home&amp;affect_id=0">
							<div class="description">전문가 시공사례</div>
							<div class="title">
								<span class="text">전문가 집들이</span>
								<div class="arrow"></div>
							</div>
						</a>
						<a class="home-stories__content__menu__entry" href="/advices?affect_type=Home&amp;affect_id=0">
							<div class="description">인테리어 꿀팁 총 집합</div>
							<div class="title">
								<!-- 노하우 삭제 예정 -->
								<span class="text">노하우</span>
								<div class="arrow">
							</div>
							</div>
						</a>
					</div>
				</div>
			</ul>
		</section>
		
		<!-- 카테고리별 상품 찾기  ========================================================================== -->
		<section class="container home-section">
			<header class="row home-section__header">
				<h2 class="col home-section__header__content">카테고리별 상품 찾기</h2>
			</header>
		
			<section class="home-store-index-category-list">
				<div class="home-category-list-wrap-container">
					<div class="home-category-list" style="transition-duration: 0ms; transform: translateX(0%);">
						<div class="home-category-item-wrap">
							<a href="/store/category?category=2_6&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=1"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163654148296283533.png?gif=1&amp;w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163654148296283533.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163654148296283533.png?gif=1&amp;w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163654148296283533.png?gif=1&amp;w=256&amp;h=256&amp;c=c 3x">
								</div>
							</div>
							<div class="home-category-item__title">크리스마스</div>
						</div>
						<div class="home-category-item-wrap">
							<a href="/store/category?category=28&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=2"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163572945028172903.png?gif=1&amp;w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163572945028172903.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163572945028172903.png?gif=1&amp;w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163572945028172903.png?gif=1&amp;w=256&amp;h=256&amp;c=c 3x">
								</div>
							</div>
							<div class="home-category-item__title">겨울용품</div>
						</div>
						<div class="home-category-item-wrap">
							<a href="/store/category?category=0&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=3"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823224728615402.png?gif=1&amp;w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823224728615402.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823224728615402.png?gif=1&amp;w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823224728615402.png?gif=1&amp;w=256&amp;h=256&amp;c=c 3x">
								</div>
							</div>
							<div class="home-category-item__title">가구</div>
						</div>
						<div class="home-category-item-wrap">
							<a href="/store/category?category=1&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=4"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823225115177697.png?gif=1&amp;w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823225115177697.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823225115177697.png?gif=1&amp;w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823225115177697.png?gif=1&amp;w=256&amp;h=256&amp;c=c 3x">
								</div>
							</div>
							<div class="home-category-item__title">패브릭</div>
						</div>
						<div class="home-category-item-wrap">
							<a href="/store/category?category=27&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=5"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823225665741013.png?gif=1&amp;w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823225665741013.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823225665741013.png?gif=1&amp;w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823225665741013.png?gif=1&amp;w=256&amp;h=256&amp;c=c 3x">
								</div>
							</div>
							<div class="home-category-item__title">조명</div>
						</div>
						<div class="home-category-item-wrap">
							<a href="/store/category?category=3&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=6"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823226017937426.png?gif=1&amp;w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823226017937426.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823226017937426.png?gif=1&amp;w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823226017937426.png?gif=1&amp;w=256&amp;h=256&amp;c=c 3x">
								</div>
							</div>
							<div class="home-category-item__title">가전</div>
						</div>
						<div class="home-category-item-wrap">
							<a href="/store/category?category=5&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=7"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823226903946200.png?gif=1&amp;w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823226903946200.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823226903946200.png?gif=1&amp;w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823226903946200.png?gif=1&amp;w=256&amp;h=256&amp;c=c 3x">
								</div>
							</div>
							<div class="home-category-item__title">주방용품</div>
						</div>
						<div class="home-category-item-wrap">
							<a href="/store/category?category=2&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=8"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823227719846773.png?gif=1&amp;w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823227719846773.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823227719846773.png?gif=1&amp;w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823227719846773.png?gif=1&amp;w=256&amp;h=256&amp;c=c 3x">
								</div>
							</div>
							<div class="home-category-item__title">데코/취미</div>
						</div>
						<div class="home-category-item-wrap">
							<a href="/store/category?category=11&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=9"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823228178967968.png?gif=1&amp;w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823228178967968.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823228178967968.png?gif=1&amp;w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823228178967968.png?gif=1&amp;w=256&amp;h=256&amp;c=c 3x">
								</div>
							</div>
							<div class="home-category-item__title">수납/정리</div>
						</div>
						<div class="home-category-item-wrap">
							<a href="/store/category?category=4&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=10"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163609843911228804.png?gif=1&amp;w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163609843911228804.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163609843911228804.png?gif=1&amp;w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163609843911228804.png?gif=1&amp;w=256&amp;h=256&amp;c=c 3x">
								</div>
							</div>
							<div class="home-category-item__title">생활용품</div>
						</div>
						<div class="home-category-item-wrap">
							<a href="/store/category?category=21&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=11"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163575474448469686.png?gif=1&amp;w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163575474448469686.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163575474448469686.png?gif=1&amp;w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163575474448469686.png?gif=1&amp;w=256&amp;h=256&amp;c=c 3x">
								</div>
							</div>
							<div class="home-category-item__title">생필품</div>
						</div>
						<div class="home-category-item-wrap">
							<a href="/store/category?category=6&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=12"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823230480918647.png?gif=1&amp;w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823230480918647.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823230480918647.png?gif=1&amp;w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823230480918647.png?gif=1&amp;w=256&amp;h=256&amp;c=c 3x">
								</div>
							</div>
							<div class="home-category-item__title">공구/DIY</div>
						</div>
						<div class="home-category-item-wrap">
							<a href="/store/category?category=7&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=13"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823230908544036.png?gif=1&amp;w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823230908544036.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823230908544036.png?gif=1&amp;w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823230908544036.png?gif=1&amp;w=256&amp;h=256&amp;c=c 3x">
								</div>
							</div>
							<div class="home-category-item__title">인테리어시공</div>
						</div>
						<div class="home-category-item-wrap">
							<a href="/store/category?category=8&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=14"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823231401891024.png?gif=1&amp;w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823231401891024.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823231401891024.png?gif=1&amp;w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823231401891024.png?gif=1&amp;w=256&amp;h=256&amp;c=c 3x">
								</div>
							</div>
							<div class="home-category-item__title">반려동물</div>
						</div>
						<div class="home-category-item-wrap">
							<a href="/store/category?category=20&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=15"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823242317048198.png?gif=1&amp;w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823242317048198.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823242317048198.png?gif=1&amp;w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823242317048198.png?gif=1&amp;w=256&amp;h=256&amp;c=c 3x">
								</div>
							</div>
						<div class="home-category-item__title">캠핑용품</div>
					</div>
						<div class="home-category-item-wrap">
							<a href="/store/category?category=22&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=16"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823231949249287.png?gif=1&amp;w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823231949249287.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823231949249287.png?gif=1&amp;w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823231949249287.png?gif=1&amp;w=256&amp;h=256&amp;c=c 3x">
								</div>
							</div>
							<div class="home-category-item__title">실내운동</div>
						</div>
					</div>
					<div class="home-category-list__next">
						<button type="button">
							<svg width="32" height="32" viewBox="0 0 32 32" preserveAspectRatio="xMidYMid meet">
								<g fill="none" fill-rule="evenodd">
									<rect width="32" height="32" fill="#000" fill-opacity=".26" rx="16"></rect>
									<path fill="#FFF" fill-rule="nonzero" d="M12 21.13l1.5 1.54L20 16l-6.5-6.67-1.5 1.54L17 16z"></path>
								</g>
							</svg>
						</button>
					</div>
				</div>
			</section>
		</section>
		
	<!-- 오늘의 딜 ========================================================================= -->	
		<section class="container home-section">
			<header class="row home-section__header">
				<h2 class="col home-section__header__content">오늘의딜</h2>
				<a class="home-section__header__more home-hide-sm" href="/commerces/today_deals?affect_type=Home&amp;affect_id=0">더보기</a>
			</header>
			<div class="scroller-wrap scroller-wrap--enabled">
				<div class="scroller">
					<div class="scroller__content-wrap" tabindex="-1">
						<div class="scroller__content home-scroll-wrap" style="transform: translateX(0px);">
						<ul class="row home-scroll home-deal__scroller">
							<div class="col-12 col-md-4 col-lg-3 home-index-today-deal-list scroller__item">
								<article class="home-index-today-deal-item">
									<a class="home-index-today-deal-item__overlay" href="/productions/712050/selling?affect_type=Home&amp;affect_id=0"></a>
									<a class="home-index-today-deal-item__overlay--mobile" href="/commerces/today_deals?affect_type=Home&amp;affect_id=0&amp;content_type=HomeFeedDeal"></a>
									<div class="home-index-today-deal-item__image">
										<div class="production-item-image">
											<div class="css-167c30c-Wrapper evlxapa2">
												<div class="css-2itshy-Content evlxapa1">
													<picture>
														<source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=256&amp;h=256&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=720&amp;h=720&amp;c=c&amp;webp=1 3x">
														<img class="css-vagntg-Image evlxapa0" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=256&amp;h=256&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=360&amp;h=360&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=480&amp;h=480&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=720&amp;h=720&amp;c=c 3x">
													</picture>
												</div>
											</div>
												<img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/163411548040151935.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/163411548040151935.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/163411548040151935.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/163411548040151935.jpg?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8 3x">
											<button class="production-item-scrap-badge production-item-image__scrap-badge" type="button">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon">
													<defs>
														<path id="scrap-icon-287-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path>
														<filter id="scrap-icon-287-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
															<feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur>
															<feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite>
															<feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix>
														</filter>
														<filter id="scrap-icon-287-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur>
															<feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
															<feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite>
															<feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix>
														</filter>
													</defs>
													<g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)">
														<use fill="#000" filter="url(#scrap-icon-287-a)" href="#scrap-icon-287-b"></use>
														<use fill="#FFF" fill-opacity=".4" href="#scrap-icon-287-b"></use>
														<use fill="#000" filter="url(#scrap-icon-287-c)" href="#scrap-icon-287-b"></use>
														<path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path>
													</g>
												</svg>
												<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path>
												</svg>
											</button>
											<div class="production-item-image__dark-overlay"></div>
											<div class="home-index-today-deal-item__image__timer">6일 남음</div>
										</div>
									</div>
									<div class="home-index-today-deal-item__content">
										<div class="home-index-today-deal-item__content__timer">6일 남음</div>
										<h1 class="home-index-today-deal-item__header">
											<span class="home-index-today-deal-item__header__brand">생활공작소 </span>
											<span class="home-index-today-deal-item__header__name">천연 라텍스 고무장갑 10입 13900원 무료배송</span>
										</h1>
										<div class="home-index-today-deal-item__stats-mobile">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.7</strong> 리뷰 25,998</p>
										</div>
										<span class="production-item-price">
											<span class="production-item-price__rate">48
												<span class="percentage">% </span>
											</span>
											<span class="production-item-price__price">13,900 외</span>
										</span>
										<p class="home-index-today-deal-item__link-mobile">특가 218개 더보기 
											<svg width="10" height="10" viewBox="0 0 10 10" fill="currentColor" preserveAspectRatio="xMidYMid meet">
												<path d="M2.5 8.2L5.63 5 2.5 1.8l.94-.97L7.5 5 3.44 9.17z"></path>
											</svg>
										</p>
										<div class="home-index-today-deal-item__stats-pc">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.7</strong> 리뷰 25,998</p>
										</div>
										<span class="production-item-badge-list">
											<svg class="icon" aria-label="무료배송" width="47" height="20" viewBox="0 0 47 20" preserveAspectRatio="xMidYMid meet">
												<g fill="none" fill-rule="evenodd">
													<rect width="47" height="20" fill="#000" fill-opacity=".07" fill-rule="nonzero" rx="4"></rect>
													<path fill="#757575" d="M12.73 5.38v3.96h-6.6V5.38h6.6zm-2.68 9.43H8.76v-3.25H5v-1.03h8.86v1.03h-3.81v3.25zm1.4-6.49V6.41H7.43v1.91h4.04zm11.08 2.7h-1.42v1.54h2.26v1.02h-8.86v-1.02h2.24v-1.53h-1.1V7.78h5.32V6.65H15.6V5.63h6.66V8.8h-5.33v1.18h5.61v1.04zm-4.53 0v1.54h1.87v-1.53H18zm14.37 3.78h-1.23V9.86h-.8v4.49h-1.2V5.18h1.2v3.66h.8V5h1.23v9.8zm-4.2-2.54h-3.9V6.01h1.27v2.26h1.36V6h1.28v6.26zm-1.27-1.01v-2h-1.36v2h1.36zm14.49 1.71c0 1.13-1.25 1.82-3.41 1.82s-3.42-.7-3.42-1.82 1.25-1.82 3.4-1.82c2.18 0 3.43.7 3.43 1.82zm-3.41-6.05c-.5 1.13-2.1 1.9-3.51 2.1l-.54-1c1.64-.17 3.39-1.06 3.39-2.54V5.2h1.33v.28c0 1.48 1.99 2.47 3.4 2.53l-.55 1.01c-1.31-.18-3.03-.97-3.52-2.1zm4.42 3.78h-8.86V9.66h3.79V8.4h1.29v1.26h3.78v1.03zm-2.33 2.27c0-.5-.83-.8-2.1-.8s-2.08.3-2.08.8c0 .51.81.8 2.08.8s2.1-.29 2.1-.8z"></path>
												</g>
											</svg>
										</span>
									</div>
								</article>
							</div>
							
							<div class="col-12 col-md-4 col-lg-3 home-index-today-deal-list scroller__item">
								<article class="home-index-today-deal-item">
									<a class="home-index-today-deal-item__overlay" href="/productions/779786/selling?affect_type=Home&amp;affect_id=0"></a>
									<a class="home-index-today-deal-item__overlay--mobile" href="/commerces/today_deals?affect_type=Home&amp;affect_id=0&amp;content_type=HomeFeedDeal"></a>
									<div class="home-index-today-deal-item__image">
										<div class="production-item-image">
											<div class="css-167c30c-Wrapper evlxapa2">
												<div class="css-2itshy-Content evlxapa1">
													<picture>
														<source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=256&amp;h=256&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=720&amp;h=720&amp;c=c&amp;webp=1 3x">
														<img class="css-vagntg-Image evlxapa0" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=256&amp;h=256&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=360&amp;h=360&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=480&amp;h=480&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=720&amp;h=720&amp;c=c 3x">
													</picture>
												</div>
											</div>
												<img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163402356751342217.gif?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163402356751342217.gif?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163402356751342217.gif?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163402356751342217.gif?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8 3x">
											<button class="production-item-scrap-badge production-item-image__scrap-badge" type="button">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon">
													<defs>
														<path id="scrap-icon-288-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path>
														<filter id="scrap-icon-288-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
															<feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur>
															<feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite>
															<feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix>
														</filter>
														<filter id="scrap-icon-288-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur>
															<feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
															<feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite>
															<feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix>
														</filter>
													</defs>
													<g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)">
														<use fill="#000" filter="url(#scrap-icon-288-a)" href="#scrap-icon-288-b"></use>
														<use fill="#FFF" fill-opacity=".4" href="#scrap-icon-288-b"></use>
														<use fill="#000" filter="url(#scrap-icon-288-c)" href="#scrap-icon-288-b"></use>
														<path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path>
													</g>
												</svg>
												<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path>
												</svg>
											</button>
												<div class="production-item-image__dark-overlay"></div>
												<div class="home-index-today-deal-item__image__timer">6일 남음</div>
										</div>
									</div>
									<div class="home-index-today-deal-item__content">
										<div class="home-index-today-deal-item__content__timer">6일 남음</div>
										<h1 class="home-index-today-deal-item__header">
											<span class="home-index-today-deal-item__header__brand">디베아 </span>
											<span class="home-index-today-deal-item__header__name">2021년형 디베아 최고스펙 올뉴29000 차이슨 무선청소기 29000PA</span>
										</h1>
										<div class="home-index-today-deal-item__stats-mobile">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.8</strong> 리뷰 1,992</p>
										</div>
										<span class="production-item-price">
											<span class="production-item-price__rate">43<span class="percentage">% </span></span>
											<span class="production-item-price__price">185,000</span>
										</span>
										<div class="home-index-today-deal-item__stats-pc">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.8</strong> 리뷰 1,992</p>
										</div>
										<span class="production-item-badge-list">
											<svg class="icon" aria-label="무료배송" width="47" height="20" viewBox="0 0 47 20" preserveAspectRatio="xMidYMid meet">
												<g fill="none" fill-rule="evenodd">
													<rect width="47" height="20" fill="#000" fill-opacity=".07" fill-rule="nonzero" rx="4"></rect>
													<path fill="#757575" d="M12.73 5.38v3.96h-6.6V5.38h6.6zm-2.68 9.43H8.76v-3.25H5v-1.03h8.86v1.03h-3.81v3.25zm1.4-6.49V6.41H7.43v1.91h4.04zm11.08 2.7h-1.42v1.54h2.26v1.02h-8.86v-1.02h2.24v-1.53h-1.1V7.78h5.32V6.65H15.6V5.63h6.66V8.8h-5.33v1.18h5.61v1.04zm-4.53 0v1.54h1.87v-1.53H18zm14.37 3.78h-1.23V9.86h-.8v4.49h-1.2V5.18h1.2v3.66h.8V5h1.23v9.8zm-4.2-2.54h-3.9V6.01h1.27v2.26h1.36V6h1.28v6.26zm-1.27-1.01v-2h-1.36v2h1.36zm14.49 1.71c0 1.13-1.25 1.82-3.41 1.82s-3.42-.7-3.42-1.82 1.25-1.82 3.4-1.82c2.18 0 3.43.7 3.43 1.82zm-3.41-6.05c-.5 1.13-2.1 1.9-3.51 2.1l-.54-1c1.64-.17 3.39-1.06 3.39-2.54V5.2h1.33v.28c0 1.48 1.99 2.47 3.4 2.53l-.55 1.01c-1.31-.18-3.03-.97-3.52-2.1zm4.42 3.78h-8.86V9.66h3.79V8.4h1.29v1.26h3.78v1.03zm-2.33 2.27c0-.5-.83-.8-2.1-.8s-2.08.3-2.08.8c0 .51.81.8 2.08.8s2.1-.29 2.1-.8z"></path>
												</g>
											</svg>
										</span>
									</div>
								</article>
							</div>
							
							<div class="col-12 col-md-4 col-lg-3 home-index-today-deal-list scroller__item">
								<article class="home-index-today-deal-item">
									<a class="home-index-today-deal-item__overlay" href="/productions/384684/selling?affect_type=Home&amp;affect_id=0"></a>
									<a class="home-index-today-deal-item__overlay--mobile" href="/commerces/today_deals?affect_type=Home&amp;affect_id=0&amp;content_type=HomeFeedDeal"></a>
									<div class="home-index-today-deal-item__image">
										<div class="production-item-image">
											<div class="css-167c30c-Wrapper evlxapa2">
												<div class="css-2itshy-Content evlxapa1">
													<picture>
														<source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=256&amp;h=256&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=720&amp;h=720&amp;c=c&amp;webp=1 3x">
														<img class="css-vagntg-Image evlxapa0" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=256&amp;h=256&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=360&amp;h=360&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=480&amp;h=480&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=720&amp;h=720&amp;c=c 3x">
													</picture>
												</div>
											</div>
												<img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/163789775844969781.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/163789775844969781.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/163789775844969781.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/163789775844969781.jpg?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8 3x">
											<button class="production-item-scrap-badge production-item-image__scrap-badge" type="button">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon">
													<defs>
														<path id="scrap-icon-289-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path>
														<filter id="scrap-icon-289-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
															<feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur>
															<feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite>
															<feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix>
														</filter>
														<filter id="scrap-icon-289-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur>
															<feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
															<feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite>
															<feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix>
														</filter>
													</defs>
													<g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)">
														<use fill="#000" filter="url(#scrap-icon-289-a)" href="#scrap-icon-289-b"></use>
														<use fill="#FFF" fill-opacity=".4" href="#scrap-icon-289-b"></use>
														<use fill="#000" filter="url(#scrap-icon-289-c)" href="#scrap-icon-289-b"></use>
														<path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path>
													</g>
												</svg>
												<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path>
												</svg>
											</button>
												<div class="production-item-image__dark-overlay"></div>
												<div class="home-index-today-deal-item__image__timer">3일 남음</div>
										</div>
									</div>
										
									<div class="home-index-today-deal-item__content">
										<div class="home-index-today-deal-item__content__timer">3일 남음</div>
										<h1 class="home-index-today-deal-item__header">
											<span class="home-index-today-deal-item__header__brand">리샘 </span>
											<span class="home-index-today-deal-item__header__name">캐더린 LED조명 수납침대 호텔형 침대 모음전</span>
										</h1>
										<div class="home-index-today-deal-item__stats-mobile">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.5</strong> 리뷰 10,998</p>
										</div>
										<span class="production-item-price">
											<span class="production-item-price__rate">40<span class="percentage">% </span></span>
											<span class="production-item-price__price">149,000 외</span>
										</span>
										<div class="home-index-today-deal-item__stats-pc">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.5</strong> 리뷰 10,998</p>
										</div>
											<span class="production-item-badge-list"></span>
									</div>
								</article>
							</div>
							
							<div class="col-12 col-md-4 col-lg-3 home-index-today-deal-list scroller__item">
								<article class="home-index-today-deal-item">
									<a class="home-index-today-deal-item__overlay" href="/productions/484751/selling?affect_type=Home&amp;affect_id=0"></a>
									<a class="home-index-today-deal-item__overlay--mobile" href="/commerces/today_deals?affect_type=Home&amp;affect_id=0&amp;content_type=HomeFeedDeal"></a>
									<div class="home-index-today-deal-item__image">
										<div class="production-item-image">
											<div class="css-167c30c-Wrapper evlxapa2">
												<div class="css-2itshy-Content evlxapa1">
													<picture>
														<source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=256&amp;h=256&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=720&amp;h=720&amp;c=c&amp;webp=1 3x">
														<img class="css-vagntg-Image evlxapa0" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=256&amp;h=256&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=360&amp;h=360&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=480&amp;h=480&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=720&amp;h=720&amp;c=c 3x">
													</picture>
												</div>
											</div>
												<img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/162359683580114816.jpeg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/162359683580114816.jpeg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/162359683580114816.jpeg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/162359683580114816.jpeg?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8 3x">
											<button class="production-item-scrap-badge production-item-image__scrap-badge" type="button">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon">
													<defs>
														<path id="scrap-icon-290-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path>
														<filter id="scrap-icon-290-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
															<feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur>
															<feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite>
															<feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix>
														</filter>
														<filter id="scrap-icon-290-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur>
															<feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
															<feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite>
															<feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix>
														</filter>
													</defs>
													<g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)">
														<use fill="#000" filter="url(#scrap-icon-290-a)" href="#scrap-icon-290-b"></use>
														<use fill="#FFF" fill-opacity=".4" href="#scrap-icon-290-b"></use>
														<use fill="#000" filter="url(#scrap-icon-290-c)" href="#scrap-icon-290-b"></use>
														<path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path>
													</g>
												</svg>
												<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path>
												</svg>
											</button>
												<div class="production-item-image__dark-overlay"></div>
												<div class="home-index-today-deal-item__image__timer">4일 남음</div>
										</div>
									</div>
									
									<div class="home-index-today-deal-item__content">
										<div class="home-index-today-deal-item__content__timer">4일 남음</div>
										<h1 class="home-index-today-deal-item__header">
											<span class="home-index-today-deal-item__header__brand">먼데이하우스 </span>
											<span class="home-index-today-deal-item__header__name">[10%쿠폰] 아쿠아패브릭 소파/소파베드시리즈 25종        </span>
										</h1>
										<div class="home-index-today-deal-item__stats-mobile">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.6</strong> 리뷰 20,892</p>
										</div>
										<span class="production-item-price">
											<span class="production-item-price__rate">47<span class="percentage">% </span></span>
											<span class="production-item-price__price">73,900 외</span>
										</span>
										<div class="home-index-today-deal-item__stats-pc">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.6</strong> 리뷰 20,892</p>
										</div>
											<span class="production-item-badge-list"></span>
									</div>
								</article>
							</div>
							
							<div class="col-12 col-md-4 col-lg-3 home-index-today-deal-list scroller__item">
								<article class="home-index-today-deal-item">
									<a class="home-index-today-deal-item__overlay" href="/productions/1120626/selling?affect_type=Home&amp;affect_id=0"></a>
									<a class="home-index-today-deal-item__overlay--mobile" href="/commerces/today_deals?affect_type=Home&amp;affect_id=0&amp;content_type=HomeFeedDeal"></a>
									<div class="home-index-today-deal-item__image">
										<div class="production-item-image">
											<div class="image"></div>
											<button class="production-item-scrap-badge production-item-image__scrap-badge" type="button">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon">
													<defs>
														<path id="scrap-icon-291-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path>
														<filter id="scrap-icon-291-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
															<feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur>
															<feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite>
															<feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix>
														</filter>
														<filter id="scrap-icon-291-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur>
															<feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
															<feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite>
															<feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix>
														</filter>
													</defs>
													<g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)">
														<use fill="#000" filter="url(#scrap-icon-291-a)" href="#scrap-icon-291-b"></use>
														<use fill="#FFF" fill-opacity=".4" href="#scrap-icon-291-b"></use>
														<use fill="#000" filter="url(#scrap-icon-291-c)" href="#scrap-icon-291-b"></use>
														<path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path>
													</g>
												</svg>
												<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path>
												</svg>
											</button>
												<div class="production-item-image__dark-overlay"></div>
												<div class="home-index-today-deal-item__image__timer">6일 남음</div>
										</div>
									</div>
									<div class="home-index-today-deal-item__content">
										<div class="home-index-today-deal-item__content__timer">6일 남음</div>
										<h1 class="home-index-today-deal-item__header">
											<span class="home-index-today-deal-item__header__brand">몬드 </span>
											<span class="home-index-today-deal-item__header__name">싱크대에 딱 붙는 양면 플레이팅 대형 대나무 도마</span>
										</h1>
										<div class="home-index-today-deal-item__stats-mobile">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">5</strong> 리뷰 4</p>
										</div>
										<span class="production-item-price">
											<span class="production-item-price__rate">49<span class="percentage">% </span></span>
											<span class="production-item-price__price">22,900</span>
										</span>
										<div class="home-index-today-deal-item__stats-pc">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">5</strong> 리뷰 4</p>
										</div>
										<span class="production-item-badge-list">
											<svg class="icon" aria-label="무료배송" width="47" height="20" viewBox="0 0 47 20" preserveAspectRatio="xMidYMid meet">
												<g fill="none" fill-rule="evenodd">
													<rect width="47" height="20" fill="#000" fill-opacity=".07" fill-rule="nonzero" rx="4"></rect>
													<path fill="#757575" d="M12.73 5.38v3.96h-6.6V5.38h6.6zm-2.68 9.43H8.76v-3.25H5v-1.03h8.86v1.03h-3.81v3.25zm1.4-6.49V6.41H7.43v1.91h4.04zm11.08 2.7h-1.42v1.54h2.26v1.02h-8.86v-1.02h2.24v-1.53h-1.1V7.78h5.32V6.65H15.6V5.63h6.66V8.8h-5.33v1.18h5.61v1.04zm-4.53 0v1.54h1.87v-1.53H18zm14.37 3.78h-1.23V9.86h-.8v4.49h-1.2V5.18h1.2v3.66h.8V5h1.23v9.8zm-4.2-2.54h-3.9V6.01h1.27v2.26h1.36V6h1.28v6.26zm-1.27-1.01v-2h-1.36v2h1.36zm14.49 1.71c0 1.13-1.25 1.82-3.41 1.82s-3.42-.7-3.42-1.82 1.25-1.82 3.4-1.82c2.18 0 3.43.7 3.43 1.82zm-3.41-6.05c-.5 1.13-2.1 1.9-3.51 2.1l-.54-1c1.64-.17 3.39-1.06 3.39-2.54V5.2h1.33v.28c0 1.48 1.99 2.47 3.4 2.53l-.55 1.01c-1.31-.18-3.03-.97-3.52-2.1zm4.42 3.78h-8.86V9.66h3.79V8.4h1.29v1.26h3.78v1.03zm-2.33 2.27c0-.5-.83-.8-2.1-.8s-2.08.3-2.08.8c0 .51.81.8 2.08.8s2.1-.29 2.1-.8z"></path>
												</g>
											</svg>
										</span>
									</div>
								</article>
							</div>
							
							<div class="col-12 col-md-4 col-lg-3 home-index-today-deal-list scroller__item">
								<article class="home-index-today-deal-item">
									<a class="home-index-today-deal-item__overlay" href="/productions/969818/selling?affect_type=Home&amp;affect_id=0"></a>
									<a class="home-index-today-deal-item__overlay--mobile" href="/commerces/today_deals?affect_type=Home&amp;affect_id=0&amp;content_type=HomeFeedDeal"></a>
									<div class="home-index-today-deal-item__image">
										<div class="production-item-image">
											<div class="image"></div>
											<button class="production-item-scrap-badge production-item-image__scrap-badge" type="button">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon">
													<defs>
														<path id="scrap-icon-292-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path>
														<filter id="scrap-icon-292-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
															<feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur>
															<feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite>
															<feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix>
														</filter>
														<filter id="scrap-icon-292-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur>
															<feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
															<feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite>
															<feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix>
														</filter>
													</defs>
													<g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)">
														<use fill="#000" filter="url(#scrap-icon-292-a)" href="#scrap-icon-292-b"></use>
														<use fill="#FFF" fill-opacity=".4" href="#scrap-icon-292-b"></use>
														<use fill="#000" filter="url(#scrap-icon-292-c)" href="#scrap-icon-292-b"></use>
														<path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path>
													</g>
												</svg>
												<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path>
												</svg>
											</button>
												<div class="production-item-image__dark-overlay"></div>
												<div class="home-index-today-deal-item__image__timer">4일 남음</div>
										</div>
									</div>
									<div class="home-index-today-deal-item__content">
										<div class="home-index-today-deal-item__content__timer">4일 남음</div>
										<h1 class="home-index-today-deal-item__header">
											<span class="home-index-today-deal-item__header__brand">삼성전자 </span>
											<span class="home-index-today-deal-item__header__name">[쿠폰] 삼성 갤럭시 워치4 / 워치4 클래식 스마트워치 8종 모음전</span>
										</h1>
										<div class="home-index-today-deal-item__stats-mobile">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.8</strong> 리뷰 545</p>
										</div>
										<span class="production-item-price">
											<span class="production-item-price__price">269,000 외</span>
										</span>
										<div class="home-index-today-deal-item__stats-pc">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.8</strong> 리뷰 545</p>
										</div>
										<span class="production-item-badge-list">
											<svg class="icon" aria-label="무료배송" width="47" height="20" viewBox="0 0 47 20" preserveAspectRatio="xMidYMid meet">
												<g fill="none" fill-rule="evenodd">
													<rect width="47" height="20" fill="#000" fill-opacity=".07" fill-rule="nonzero" rx="4"></rect>
													<path fill="#757575" d="M12.73 5.38v3.96h-6.6V5.38h6.6zm-2.68 9.43H8.76v-3.25H5v-1.03h8.86v1.03h-3.81v3.25zm1.4-6.49V6.41H7.43v1.91h4.04zm11.08 2.7h-1.42v1.54h2.26v1.02h-8.86v-1.02h2.24v-1.53h-1.1V7.78h5.32V6.65H15.6V5.63h6.66V8.8h-5.33v1.18h5.61v1.04zm-4.53 0v1.54h1.87v-1.53H18zm14.37 3.78h-1.23V9.86h-.8v4.49h-1.2V5.18h1.2v3.66h.8V5h1.23v9.8zm-4.2-2.54h-3.9V6.01h1.27v2.26h1.36V6h1.28v6.26zm-1.27-1.01v-2h-1.36v2h1.36zm14.49 1.71c0 1.13-1.25 1.82-3.41 1.82s-3.42-.7-3.42-1.82 1.25-1.82 3.4-1.82c2.18 0 3.43.7 3.43 1.82zm-3.41-6.05c-.5 1.13-2.1 1.9-3.51 2.1l-.54-1c1.64-.17 3.39-1.06 3.39-2.54V5.2h1.33v.28c0 1.48 1.99 2.47 3.4 2.53l-.55 1.01c-1.31-.18-3.03-.97-3.52-2.1zm4.42 3.78h-8.86V9.66h3.79V8.4h1.29v1.26h3.78v1.03zm-2.33 2.27c0-.5-.83-.8-2.1-.8s-2.08.3-2.08.8c0 .51.81.8 2.08.8s2.1-.29 2.1-.8z"></path>
												</g>
											</svg>
										</span>
									</div>
								</article>
							</div>
							
							<div class="col-12 col-md-4 col-lg-3 home-index-today-deal-list scroller__item">
								<article class="home-index-today-deal-item">
									<a class="home-index-today-deal-item__overlay" href="/productions/585078/selling?affect_type=Home&amp;affect_id=0"></a>
									<a class="home-index-today-deal-item__overlay--mobile" href="/commerces/today_deals?affect_type=Home&amp;affect_id=0&amp;content_type=HomeFeedDeal"></a>
									<div class="home-index-today-deal-item__image">
										<div class="production-item-image">
											<div class="css-167c30c-Wrapper evlxapa2">
												<div class="css-2itshy-Content evlxapa1">
													<picture>
														<source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163849450926711980.png?w=256&amp;h=256&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163849450926711980.png?w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163849450926711980.png?w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163849450926711980.png?w=720&amp;h=720&amp;c=c&amp;webp=1 3x">
														<img class="css-vagntg-Image evlxapa0" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163849450926711980.png?w=256&amp;h=256&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163849450926711980.png?w=360&amp;h=360&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163849450926711980.png?w=480&amp;h=480&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163849450926711980.png?w=720&amp;h=720&amp;c=c 3x">
													</picture>
												</div>
											</div>
										<div class="image"></div>
											<button class="production-item-scrap-badge production-item-image__scrap-badge" type="button">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon">
													<defs>
														<path id="scrap-icon-293-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path>
														<filter id="scrap-icon-293-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
															<feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur>
															<feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite>
															<feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix>
														</filter>
														<filter id="scrap-icon-293-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur>
															<feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
															<feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite>
															<feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix>
														</filter>
													</defs>
													<g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)">
														<use fill="#000" filter="url(#scrap-icon-293-a)" href="#scrap-icon-293-b"></use>
														<use fill="#FFF" fill-opacity=".4" href="#scrap-icon-293-b"></use
														><use fill="#000" filter="url(#scrap-icon-293-c)" href="#scrap-icon-293-b"></use>
														<path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path>
													</g>
												</svg>
												<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path>
												</svg>
											</button>
												<div class="production-item-image__dark-overlay"></div>
												<div class="home-index-today-deal-item__image__timer">6일 남음</div>
										</div>
									</div>
									<div class="home-index-today-deal-item__content">
										<div class="home-index-today-deal-item__content__timer">6일 남음</div>
										<h1 class="home-index-today-deal-item__header">
											<span class="home-index-today-deal-item__header__brand">누베스 </span>
											<span class="home-index-today-deal-item__header__name">맞춤제작 오동나무 우드 블라인드 셀프 블라인드 20colors</span>
										</h1>
										<div class="home-index-today-deal-item__stats-mobile">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.8</strong> 리뷰 3,498</p>
										</div>
										<span class="production-item-price">
											<span class="production-item-price__rate">49<span class="percentage">% </span></span>
											<span class="production-item-price__price">12,600</span>
										</span>
										<div class="home-index-today-deal-item__stats-pc">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.8</strong> 리뷰 3,498</p>
										</div>
										<span class="production-item-badge-list">
											<svg class="icon" aria-label="무료배송" width="47" height="20" viewBox="0 0 47 20" preserveAspectRatio="xMidYMid meet">
												<g fill="none" fill-rule="evenodd">
													<rect width="47" height="20" fill="#000" fill-opacity=".07" fill-rule="nonzero" rx="4"></rect>
													<path fill="#757575" d="M12.73 5.38v3.96h-6.6V5.38h6.6zm-2.68 9.43H8.76v-3.25H5v-1.03h8.86v1.03h-3.81v3.25zm1.4-6.49V6.41H7.43v1.91h4.04zm11.08 2.7h-1.42v1.54h2.26v1.02h-8.86v-1.02h2.24v-1.53h-1.1V7.78h5.32V6.65H15.6V5.63h6.66V8.8h-5.33v1.18h5.61v1.04zm-4.53 0v1.54h1.87v-1.53H18zm14.37 3.78h-1.23V9.86h-.8v4.49h-1.2V5.18h1.2v3.66h.8V5h1.23v9.8zm-4.2-2.54h-3.9V6.01h1.27v2.26h1.36V6h1.28v6.26zm-1.27-1.01v-2h-1.36v2h1.36zm14.49 1.71c0 1.13-1.25 1.82-3.41 1.82s-3.42-.7-3.42-1.82 1.25-1.82 3.4-1.82c2.18 0 3.43.7 3.43 1.82zm-3.41-6.05c-.5 1.13-2.1 1.9-3.51 2.1l-.54-1c1.64-.17 3.39-1.06 3.39-2.54V5.2h1.33v.28c0 1.48 1.99 2.47 3.4 2.53l-.55 1.01c-1.31-.18-3.03-.97-3.52-2.1zm4.42 3.78h-8.86V9.66h3.79V8.4h1.29v1.26h3.78v1.03zm-2.33 2.27c0-.5-.83-.8-2.1-.8s-2.08.3-2.08.8c0 .51.81.8 2.08.8s2.1-.29 2.1-.8z"></path>
												</g>
											</svg>
										</span>
									</div>
								</article>
							</div>
							
							<div class="col-12 col-md-4 col-lg-3 home-index-today-deal-list scroller__item">
								<article class="home-index-today-deal-item">
									<a class="home-index-today-deal-item__overlay" href="/productions/1106154/selling?affect_type=Home&amp;affect_id=0"></a>
									<a class="home-index-today-deal-item__overlay--mobile" href="/commerces/today_deals?affect_type=Home&amp;affect_id=0&amp;content_type=HomeFeedDeal"></a>
									<div class="home-index-today-deal-item__image">
										<div class="production-item-image">
											<div class="css-167c30c-Wrapper evlxapa2">
												<div class="css-2itshy-Content evlxapa1">
													<picture>
														<source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=256&amp;h=256&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=720&amp;h=720&amp;c=c&amp;webp=1 3x">
														<img class="css-vagntg-Image evlxapa0" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=256&amp;h=256&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=360&amp;h=360&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=480&amp;h=480&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=720&amp;h=720&amp;c=c 3x">
													</picture>
												</div>
											</div>
											<div class="image"></div>
											<button class="production-item-scrap-badge production-item-image__scrap-badge" type="button">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon">
												<defs>
														<path id="scrap-icon-294-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path>
														<filter id="scrap-icon-294-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
															<feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur>
															<feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite>
															<feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix>
														</filter>
														<filter id="scrap-icon-294-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur>
															<feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
															<feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite>
															<feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix>
														</filter>
													</defs>
													<g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)">
														<use fill="#000" filter="url(#scrap-icon-294-a)" href="#scrap-icon-294-b"></use>
														<use fill="#FFF" fill-opacity=".4" href="#scrap-icon-294-b"></use><use fill="#000" filter="url(#scrap-icon-294-c)" href="#scrap-icon-294-b"></use>
														<path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path>
													</g>
												</svg>
												<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path>
												</svg>
											</button>
												<div class="production-item-image__dark-overlay"></div>
												<div class="home-index-today-deal-item__image__timer">6일 남음</div>
										</div>
									</div>
									<div class="home-index-today-deal-item__content">
										<div class="home-index-today-deal-item__content__timer">6일 남음</div>
										<h1 class="home-index-today-deal-item__header">
											<span class="home-index-today-deal-item__header__brand">데이홈 </span>
											<span class="home-index-today-deal-item__header__name">2021신상추가! LED 크리스마스 벽트리 앵두전구/ 별모양 줄조명 7종</span>
										</h1>
										<div class="home-index-today-deal-item__stats-mobile">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.7</strong> 리뷰 4,712</p>
										</div>
										<span class="production-item-price">
											<span class="production-item-price__rate">10<span class="percentage">% </span></span>
											<span class="production-item-price__price">12,510 외</span>
										</span>
										<div class="home-index-today-deal-item__stats-pc">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.7</strong> 리뷰 4,712</p>
										</div>
										<span class="production-item-badge-list"></span>
									</div>
								</article>
							</div>
							
							<div class="col-12 col-md-4 col-lg-3 home-index-today-deal-list scroller__item">
								<article class="home-index-today-deal-item">
									<a class="home-index-today-deal-item__overlay" href="/productions/442758/selling?affect_type=Home&amp;affect_id=0"></a>
									<a class="home-index-today-deal-item__overlay--mobile" href="/commerces/today_deals?affect_type=Home&amp;affect_id=0&amp;content_type=HomeFeedDeal"></a>
									<div class="home-index-today-deal-item__image">
										<div class="production-item-image">
											<div class="css-167c30c-Wrapper evlxapa2">
												<div class="css-2itshy-Content evlxapa1">
													<picture>
														<source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=256&amp;h=256&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=720&amp;h=720&amp;c=c&amp;webp=1 3x">
														<img class="css-vagntg-Image evlxapa0" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=256&amp;h=256&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=360&amp;h=360&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=480&amp;h=480&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163823608051713566.png?w=720&amp;h=720&amp;c=c 3x">
													</picture>
												</div>
											</div>
											<div class="image"></div>
											<button class="production-item-scrap-badge production-item-image__scrap-badge" type="button">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon">
												<defs>
													<path id="scrap-icon-295-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path>
													<filter id="scrap-icon-295-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
														<feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
														<feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur>
														<feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite>
														<feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix>
													</filter>
													<filter id="scrap-icon-295-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
														<feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur>
														<feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
														<feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite>
														<feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix>
													</filter>
												</defs>
													<g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)">
														<use fill="#000" filter="url(#scrap-icon-295-a)" href="#scrap-icon-295-b"></use>
														<use fill="#FFF" fill-opacity=".4" href="#scrap-icon-295-b"></use>
														<use fill="#000" filter="url(#scrap-icon-295-c)" href="#scrap-icon-295-b"></use>
														<path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path>
													</g>
												</svg>
												<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path>
												</svg>
											</button>
												<div class="production-item-image__dark-overlay"></div>
												<div class="home-index-today-deal-item__image__timer">6일 남음</div>
										</div>
									</div>
									<div class="home-index-today-deal-item__content">
										<div class="home-index-today-deal-item__content__timer">6일 남음</div>
										<h1 class="home-index-today-deal-item__header">
											<span class="home-index-today-deal-item__header__brand">가구레시피 </span>
											<span class="home-index-today-deal-item__header__name">누적후기 2만개! 가구레시피 국내생산 조립식 렌지대/선반</span>
										</h1>
										<div class="home-index-today-deal-item__stats-mobile">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.7</strong> 리뷰 13,225</p>
										</div>
										<span class="production-item-price">
											<span class="production-item-price__rate">12<span class="percentage">% </span></span>
											<span class="production-item-price__price">17,500 외</span>
										</span>
										<div class="home-index-today-deal-item__stats-pc">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.7</strong> 리뷰 13,225</p>
										</div>
										<span class="production-item-badge-list">
											<svg class="icon" aria-label="무료배송" width="47" height="20" viewBox="0 0 47 20" preserveAspectRatio="xMidYMid meet">
												<g fill="none" fill-rule="evenodd">
													<rect width="47" height="20" fill="#000" fill-opacity=".07" fill-rule="nonzero" rx="4"></rect>
													<path fill="#757575" d="M12.73 5.38v3.96h-6.6V5.38h6.6zm-2.68 9.43H8.76v-3.25H5v-1.03h8.86v1.03h-3.81v3.25zm1.4-6.49V6.41H7.43v1.91h4.04zm11.08 2.7h-1.42v1.54h2.26v1.02h-8.86v-1.02h2.24v-1.53h-1.1V7.78h5.32V6.65H15.6V5.63h6.66V8.8h-5.33v1.18h5.61v1.04zm-4.53 0v1.54h1.87v-1.53H18zm14.37 3.78h-1.23V9.86h-.8v4.49h-1.2V5.18h1.2v3.66h.8V5h1.23v9.8zm-4.2-2.54h-3.9V6.01h1.27v2.26h1.36V6h1.28v6.26zm-1.27-1.01v-2h-1.36v2h1.36zm14.49 1.71c0 1.13-1.25 1.82-3.41 1.82s-3.42-.7-3.42-1.82 1.25-1.82 3.4-1.82c2.18 0 3.43.7 3.43 1.82zm-3.41-6.05c-.5 1.13-2.1 1.9-3.51 2.1l-.54-1c1.64-.17 3.39-1.06 3.39-2.54V5.2h1.33v.28c0 1.48 1.99 2.47 3.4 2.53l-.55 1.01c-1.31-.18-3.03-.97-3.52-2.1zm4.42 3.78h-8.86V9.66h3.79V8.4h1.29v1.26h3.78v1.03zm-2.33 2.27c0-.5-.83-.8-2.1-.8s-2.08.3-2.08.8c0 .51.81.8 2.08.8s2.1-.29 2.1-.8z"></path>
												</g>
											</svg>
										</span>
									</div>
								</article>
							</div>
							
							<div class="col-12 col-md-4 col-lg-3 home-index-today-deal-list scroller__item">
								<article class="home-index-today-deal-item">
									<a class="home-index-today-deal-item__overlay" href="/productions/996396/selling?affect_type=Home&amp;affect_id=0"></a>
									<a class="home-index-today-deal-item__overlay--mobile" href="/commerces/today_deals?affect_type=Home&amp;affect_id=0&amp;content_type=HomeFeedDeal"></a>
									<div class="home-index-today-deal-item__image">
										<div class="production-item-image">
											<div class="image"></div>
											<button class="production-item-scrap-badge production-item-image__scrap-badge" type="button">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon">
													<defs>
														<path id="scrap-icon-296-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path>
														<filter id="scrap-icon-296-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
															<feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur>
															<feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite>
															<feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix>
														</filter>
														<filter id="scrap-icon-296-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox">
															<feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur>
															<feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
															<feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite>
															<feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix>
														</filter>
													</defs>
													<g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)">
														<use fill="#000" filter="url(#scrap-icon-296-a)" href="#scrap-icon-296-b"></use>
														<use fill="#FFF" fill-opacity=".4" href="#scrap-icon-296-b"></use>
														<use fill="#000" filter="url(#scrap-icon-296-c)" href="#scrap-icon-296-b"></use>
														<path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path>
													</g>
												</svg>
												<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path>
												</svg>
											</button>
												<div class="production-item-image__dark-overlay"></div>
												<div class="home-index-today-deal-item__image__timer">6일 남음</div>
										</div>
									</div>
									<div class="home-index-today-deal-item__content">
										<div class="home-index-today-deal-item__content__timer">6일 남음</div>
										<h1 class="home-index-today-deal-item__header">
											<span class="home-index-today-deal-item__header__brand">러쉬 </span>
											<span class="home-index-today-deal-item__header__name">(전고객 선물) 촉촉한 마스크팩/보디 스프레이 러쉬 BEST 제품전</span>
										</h1>
										<div class="home-index-today-deal-item__stats-mobile">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.8</strong> 리뷰 209</p>
										</div>
										<span class="production-item-price">
											<span class="production-item-price__price">25,000 외</span>
										</span>
										<div class="home-index-today-deal-item__stats-pc">
											<p class="production-item-stats production-item-stats--review">
												<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path>
												</svg>
											<strong class="avg">4.8</strong> 리뷰 209</p>
										</div>
									<span class="production-item-badge-list"></span>
									</div>
								</article>
							</div>
						</ul>
						</div>
					</div>
					
					<div class="scroller__ui">
						<div class="scroller__ui__left scroller-hide scroller-fixed" style="top: 134.5px;">
							<svg class="inactive" width="40" height="40" viewBox="0 0 40 40" preserveAspectRatio="xMidYMid meet">
								<g fill="none">
									<circle cx="20" cy="20" r="20" fill="#FFF" class="circle"></circle>
									<path fill="#424242" d="M17 20l7.5 7.5-1.4 1.4-8.4-8.4-.5-.5.5-.5 8.4-8.4 1.4 1.4-7.5 7.5z" class="arrow"></path>
								</g>
							</svg>
							<svg class="active" width="40" height="40" viewBox="0 0 40 40" preserveAspectRatio="xMidYMid meet">
								<g fill="none">
									<circle cx="20" cy="20" r="20" fill="#35C5F0"></circle>
									<path fill="#FFF" d="M17 20l7.5 7.5-1.4 1.4-8.4-8.4-.5-.5.5-.5 8.4-8.4 1.4 1.4-7.5 7.5z"></path>
								</g>
							</svg>
							</div>
						<div class="scroller__ui__right scroller-fixed" style="top: 134.5px;">
							<svg class="inactive" width="40" height="40" viewBox="0 0 40 40" preserveAspectRatio="xMidYMid meet">
								<g fill="none" transform="matrix(-1 0 0 1 40 0)"><circle cx="20" cy="20" r="20" fill="#FFF" class="circle"></circle>
									<path fill="#424242" d="M17 20l7.5 7.5-1.4 1.4-8.4-8.4-.5-.5.5-.5 8.4-8.4 1.4 1.4-7.5 7.5z" class="arrow"></path>
								</g>
							</svg>
							<svg class="active" width="40" height="40" viewBox="0 0 40 40" preserveAspectRatio="xMidYMid meet">
								<g fill="none" transform="matrix(-1 0 0 1 40 0)">
									<circle cx="20" cy="20" r="20" fill="#35C5F0"></circle>
									<path fill="#FFF" d="M17 20l7.5 7.5-1.4 1.4-8.4-8.4-.5-.5.5-.5 8.4-8.4 1.4 1.4-7.5 7.5z"></path>
								</g>
							</svg>
						</div>
					</div>
				</div>
			</div>
		</section>
		
	<!-- 오늘의 인기 사진 ======================================== -->
		<section class="container home-section home-cards">
			<header class="row home-section__header">
				<h2 class="col home-section__header__content">오늘의 인기 사진</h2>
				<a class="home-section__header__more home-hide-sm" href="/contents/card_collections?order=popular&amp;affect_type=Home&amp;affect_id=0">더보기</a>
			</header>
			<ul class="row home-cards__content">
				<li class="col-6 col-md-3 home-cards__content__item">
					<article class="story-entry story-card-item">
						<a class="story-entry-link" href="/contents/card_collections/11026014?affect_type=Home&amp;affect_id=0">
						<div class="story-entry__image-wrap">
							<img class="story-entry__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163887206196276069.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163887206196276069.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163887206196276069.jpeg?gif=1&amp;w=640&amp;h=640&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163887206196276069.jpeg?gif=1&amp;w=850&amp;h=850&amp;c=c 3x">
							<svg class="story-entry__gallery-icon" width="24" height="24" viewBox="0 0 24 24" fill="currentColor" preserveAspectRatio="xMidYMid meet">
								<path fill-rule="evenodd" d="M20.21 5.053h.788A3.004 3.004 0 0 1 24 8.055v12.943A3.004 3.004 0 0 1 20.998 24H8.055a3.004 3.004 0 0 1-3.002-3.002v-.787h11.165c2.199 0 3.993-1.788 3.993-3.993V5.053zM0 3.003A3.004 3.004 0 0 1 3.002 0h12.943a3.004 3.004 0 0 1 3.002 3.002v12.943a3.004 3.004 0 0 1-3.002 3.002H3.002A3.004 3.004 0 0 1 0 15.945V3.002z"></path>
							</svg>
						</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title"><br></div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158823906171465556.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158823906171465556.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158823906171465556.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158823906171465556.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x">
										<span class="story-entry__content__profile__name">romang_house</span>
									</div>
								</div>
							</div>
						</a>
					</article>
					<div class="home-rank-icon">
						<span>1</span>
					</div>
				</li>
				<li class="col-6 col-md-3 home-cards__content__item">
					<article class="story-entry story-card-item">
						<a class="story-entry-link" href="/contents/card_collections/11033522?affect_type=Home&amp;affect_id=0">
							<div class="story-entry__image-wrap">
								<img class="story-entry__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163888901930842234.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163888901930842234.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163888901930842234.jpeg?gif=1&amp;w=640&amp;h=640&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163888901930842234.jpeg?gif=1&amp;w=850&amp;h=850&amp;c=c 3x">
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title"><br></div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163637094624659614.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163637094624659614.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163637094624659614.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163637094624659614.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x">
										<span class="story-entry__content__profile__name">Umie.haus</span>
									</div>
								</div>
							</div>
						</a>
					</article>
					<div class="home-rank-icon">
						<span>2</span>
					</div>
				</li>
				<li class="col-6 col-md-3 home-cards__content__item">
					<article class="story-entry story-card-item">
						<a class="story-entry-link" href="/contents/card_collections/11024932?affect_type=Home&amp;affect_id=0">
							<div class="story-entry__image-wrap">
								<img class="story-entry__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163886844981200909.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163886844981200909.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163886844981200909.jpeg?gif=1&amp;w=640&amp;h=640&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163886844981200909.jpeg?gif=1&amp;w=850&amp;h=850&amp;c=c 3x">
								<svg class="story-entry__gallery-icon" width="24" height="24" viewBox="0 0 24 24" fill="currentColor" preserveAspectRatio="xMidYMid meet">
									<path fill-rule="evenodd" d="M20.21 5.053h.788A3.004 3.004 0 0 1 24 8.055v12.943A3.004 3.004 0 0 1 20.998 24H8.055a3.004 3.004 0 0 1-3.002-3.002v-.787h11.165c2.199 0 3.993-1.788 3.993-3.993V5.053zM0 3.003A3.004 3.004 0 0 1 3.002 0h12.943a3.004 3.004 0 0 1 3.002 3.002v12.943a3.004 3.004 0 0 1-3.002 3.002H3.002A3.004 3.004 0 0 1 0 15.945V3.002z"></path>
								</svg>
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title"><br></div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1587137202_t.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1587137202_t.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1587137202_t.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1587137202_t.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x">
										<span class="story-entry__content__profile__name">2yujin22</span>
									</div>
								</div>
							</div>
						</a>
					</article>
					<div class="home-rank-icon">
						<span>3</span>
					</div>
				</li>
				<li class="col-6 col-md-3 home-cards__content__item">
					<article class="story-entry story-card-item">
						<a class="story-entry-link" href="/contents/card_collections/11017950?affect_type=Home&amp;affect_id=0">
							<div class="story-entry__image-wrap">
								<img class="story-entry__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163884136259910005.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163884136259910005.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163884136259910005.jpeg?gif=1&amp;w=640&amp;h=640&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163884136259910005.jpeg?gif=1&amp;w=850&amp;h=850&amp;c=c 3x">
								<svg class="story-entry__gallery-icon" width="24" height="24" viewBox="0 0 24 24" fill="currentColor" preserveAspectRatio="xMidYMid meet">
									<path fill-rule="evenodd" d="M20.21 5.053h.788A3.004 3.004 0 0 1 24 8.055v12.943A3.004 3.004 0 0 1 20.998 24H8.055a3.004 3.004 0 0 1-3.002-3.002v-.787h11.165c2.199 0 3.993-1.788 3.993-3.993V5.053zM0 3.003A3.004 3.004 0 0 1 3.002 0h12.943a3.004 3.004 0 0 1 3.002 3.002v12.943a3.004 3.004 0 0 1-3.002 3.002H3.002A3.004 3.004 0 0 1 0 15.945V3.002z"></path>
								</svg>
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title"><br></div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1570547076_VZf.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1570547076_VZf.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1570547076_VZf.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1570547076_VZf.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x">
										<span class="story-entry__content__profile__name">onehoho</span>
									</div>
								</div>
							</div>
						</a>
					</article>
				</li>
				<li class="col-6 col-md-3 home-cards__content__item">
					<article class="story-entry story-card-item">
						<a class="story-entry-link" href="/contents/card_collections/11017508?affect_type=Home&amp;affect_id=0">
							<div class="story-entry__image-wrap">
								<img class="story-entry__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163883872054797798.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163883872054797798.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163883872054797798.jpeg?gif=1&amp;w=640&amp;h=640&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163883872054797798.jpeg?gif=1&amp;w=850&amp;h=850&amp;c=c 3x">
								<svg class="story-entry__gallery-icon" width="24" height="24" viewBox="0 0 24 24" fill="currentColor" preserveAspectRatio="xMidYMid meet">
									<path fill-rule="evenodd" d="M20.21 5.053h.788A3.004 3.004 0 0 1 24 8.055v12.943A3.004 3.004 0 0 1 20.998 24H8.055a3.004 3.004 0 0 1-3.002-3.002v-.787h11.165c2.199 0 3.993-1.788 3.993-3.993V5.053zM0 3.003A3.004 3.004 0 0 1 3.002 0h12.943a3.004 3.004 0 0 1 3.002 3.002v12.943a3.004 3.004 0 0 1-3.002 3.002H3.002A3.004 3.004 0 0 1 0 15.945V3.002z"></path>
								</svg>
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title"><br></div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163086152103760164.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163086152103760164.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163086152103760164.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163086152103760164.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x">
										<span class="story-entry__content__profile__name">moca.home2903</span>
									</div>
								</div>
							</div>
						</a>
					</article>
				</li>
				<li class="col-6 col-md-3 home-cards__content__item">
					<article class="story-entry story-card-item"><a class="story-entry-link" href="/contents/card_collections/11027541?affect_type=Home&amp;affect_id=0">
						<div class="story-entry__image-wrap">
							<img class="story-entry__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/163887621976669077.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/163887621976669077.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/163887621976669077.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/163887621976669077.jpg?gif=1&amp;w=850&amp;h=850&amp;c=c 3x">
							<svg class="story-entry__gallery-icon" width="24" height="24" viewBox="0 0 24 24" fill="currentColor" preserveAspectRatio="xMidYMid meet">
								<path fill-rule="evenodd" d="M20.21 5.053h.788A3.004 3.004 0 0 1 24 8.055v12.943A3.004 3.004 0 0 1 20.998 24H8.055a3.004 3.004 0 0 1-3.002-3.002v-.787h11.165c2.199 0 3.993-1.788 3.993-3.993V5.053zM0 3.003A3.004 3.004 0 0 1 3.002 0h12.943a3.004 3.004 0 0 1 3.002 3.002v12.943a3.004 3.004 0 0 1-3.002 3.002H3.002A3.004 3.004 0 0 1 0 15.945V3.002z"></path>
							</svg>
						</div>
						<div class="story-entry__content-wrap">
							<div class="story-entry__content">
								<div class="story-entry__content__category"></div>
								<div class="story-entry__content__title"><br></div>
								<div class="story-entry__content__profile">
									<img class="story-entry__content__profile__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163318996237863585.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163318996237863585.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163318996237863585.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163318996237863585.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x">
									<span class="story-entry__content__profile__name">ngray</span>
								</div>
							</div>
						</div>
					</a>
					</article>
				</li>
				<li class="col-6 col-md-3 home-cards__content__item">
					<article class="story-entry story-card-item">
						<a class="story-entry-link" href="/contents/card_collections/11015726?affect_type=Home&amp;affect_id=0">
						<div class="story-entry__image-wrap">
							<img class="story-entry__image" src="https://image.ohou.se/i/video-service-prd-s3-bucket-thumbnail/61ae388826e55c13ef857cda/61ae388826e55c13ef857cda.0000001.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c" srcset="https://image.ohou.se/i/video-service-prd-s3-bucket-thumbnail/61ae388826e55c13ef857cda/61ae388826e55c13ef857cda.0000001.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c 1.5x,https://image.ohou.se/i/video-service-prd-s3-bucket-thumbnail/61ae388826e55c13ef857cda/61ae388826e55c13ef857cda.0000001.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c 2x,https://image.ohou.se/i/video-service-prd-s3-bucket-thumbnail/61ae388826e55c13ef857cda/61ae388826e55c13ef857cda.0000001.jpg?gif=1&amp;w=850&amp;h=850&amp;c=c 3x">
							<div class="css-1x31csd-DurationDiv e1thgqy50">00:32</div>
						</div>
						<div class="story-entry__content-wrap">
							<div class="story-entry__content">
								<div class="story-entry__content__category"></div>
								<div class="story-entry__content__title"><br></div>
								<div class="story-entry__content__profile">
									<img class="story-entry__content__profile__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162635821439089688.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162635821439089688.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162635821439089688.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162635821439089688.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x">
									<span class="story-entry__content__profile__name">드리밍룸룸</span>
								</div>
							</div>
						</div>
					</a>
					</article>
				</li>
				<li class="col-6 col-md-3 home-cards__content__item">
					<article class="story-entry story-card-item">
						<a class="story-entry-link" href="/contents/card_collections/11029480?affect_type=Home&amp;affect_id=0">
							<div class="story-entry__image-wrap">
								<img class="story-entry__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163887990395338316.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163887990395338316.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163887990395338316.jpeg?gif=1&amp;w=640&amp;h=640&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/163887990395338316.jpeg?gif=1&amp;w=850&amp;h=850&amp;c=c 3x">
								<svg class="story-entry__gallery-icon" width="24" height="24" viewBox="0 0 24 24" fill="currentColor" preserveAspectRatio="xMidYMid meet">
									<path fill-rule="evenodd" d="M20.21 5.053h.788A3.004 3.004 0 0 1 24 8.055v12.943A3.004 3.004 0 0 1 20.998 24H8.055a3.004 3.004 0 0 1-3.002-3.002v-.787h11.165c2.199 0 3.993-1.788 3.993-3.993V5.053zM0 3.003A3.004 3.004 0 0 1 3.002 0h12.943a3.004 3.004 0 0 1 3.002 3.002v12.943a3.004 3.004 0 0 1-3.002 3.002H3.002A3.004 3.004 0 0 1 0 15.945V3.002z"></path>
								</svg>
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title"><br></div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162604105446922945.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162604105446922945.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162604105446922945.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162604105446922945.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x">
										<span class="story-entry__content__profile__name">Yoo’s Bistro </span>
									</div>
								</div>
							</div>
						</a>
					</article>
				</li>
			</ul>
			<div class="row home-section__more-wrap">
				<div class="col home-section__more">
					<a class="col home-section__more__btn" href="/contents/card_collections?order=popular&amp;affect_type=Home&amp;affect_id=0">인기 사진 더보기</a>
				</div>
			</div>
		</section>
		
		<div>
			<a class="container home-banner home-banner--pc" href="/competitions/621?affect_type=Home&amp;affect_id=0">
				<div class="pc-banner"></div>
			</a>
			<a class="container home-banner home-banner--mobile" href="/competitions/621?affect_type=Home&amp;affect_id=0">
				<div class="mobile-banner"></div>
			</a>
		</div>
	

	<section class="container home-section home-rank">
		<header class="row home-section__header">
			<h2 class="col home-section__header__content">베스트</h2>
		</header>
		<div class="production-rank-feed">
			<ul class="production-rank-feed__category">
				<li class="production-rank-feed__category__item active">전체</li>
				<li class="production-rank-feed__category__item">겨울용품</li>
				<li class="production-rank-feed__category__item">가구</li>
				<li class="production-rank-feed__category__item">패브릭</li>
				<li class="production-rank-feed__category__item">조명</li>
				<li class="production-rank-feed__category__item">가전</li>
				<li class="production-rank-feed__category__item">주방용품</li>
				<li class="production-rank-feed__category__item">데코/취미</li>
				<li class="production-rank-feed__category__item">수납/정리</li>
				<li class="production-rank-feed__category__item">생활용품</li>
				<li class="production-rank-feed__category__item">생필품</li>
				<li class="production-rank-feed__category__item">공구/DIY</li>
				<li class="production-rank-feed__category__item">인테리어시공</li>
				<li class="production-rank-feed__category__item">반려동물</li>
				<li class="production-rank-feed__category__item">캠핑용품</li>
				<li class="production-rank-feed__category__item">실내운동</li>
				<li class="production-rank-feed__category__item">유아/아동</li>
				<li class="production-rank-feed__category__item">렌탈</li>
			</ul>
			<div class="row production-rank-feed__group">
				<div class="col production-rank-feed__list-wrap">
					<ul class="row production-rank-feed__list">
						<div class="col-4 production-rank-feed__item">
							<div class="home-production-item">
								<a href="/productions/111255/selling?affect_type=Home&amp;affect_id=0&amp;content_type=HomeFeedRank">
									<div class="img-wrap square home-production-item__wrapper">
										<div class="home-production-item__image"></div>
										<div class="css-167c30c-Wrapper evlxapa2">
											<div class="css-2itshy-Content evlxapa1">
												<picture>
													<source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=256&amp;h=256&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=720&amp;h=720&amp;c=c&amp;webp=1 3x"><img class="css-vagntg-Image evlxapa0" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=256&amp;h=256&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=360&amp;h=360&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=480&amp;h=480&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=720&amp;h=720&amp;c=c 3x">
												</picture>
											</div>
										</div>
									</div>
									<div class="info">
										<p class="product-name text-caption-1 line-height-normal">Q4 유로탑 롤팩 매트리스 2size</p>
										<p class="price text-caption-3">
										<span class="discount-ratio text-blue text-body-1 bold">62%</span>
										<strong class="selling-price text-body-1 text-black"> 269,000</strong>
									</p>
									</div>
									<div class="home-rank-icon">
										<span>1</span>
									</div>
								</a>
							</div>
						</div>
						<div class="col-4 production-rank-feed__item">
							<div class="home-production-item">
								<a href="/productions/329364/selling?affect_type=Home&amp;affect_id=0&amp;content_type=HomeFeedRank">
									<div class="img-wrap square home-production-item__wrapper">
										<div class="home-production-item__image"></div>
										<div class="css-167c30c-Wrapper evlxapa2">
											<div class="css-2itshy-Content evlxapa1">
												<picture>
													<source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=256&amp;h=256&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=720&amp;h=720&amp;c=c&amp;webp=1 3x"><img class="css-vagntg-Image evlxapa0" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=256&amp;h=256&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=360&amp;h=360&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=480&amp;h=480&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163850031735884496.png?w=720&amp;h=720&amp;c=c 3x">
												</picture>
											</div>
										</div>
									</div>
									<div class="info">
										<p class="product-name text-caption-1 line-height-normal">[10%쿠폰] 편안한 제주 필로우탑 본넬스프링 침대 매트리스 (싱글/슈퍼싱글/퀸/킹)</p>
										<p class="price text-caption-3">
											<span class="discount-ratio text-blue text-body-1 bold">59%</span>
											<strong class="selling-price text-body-1 text-black"> 99,900</strong>
										</p>
									</div>
									<div class="home-rank-icon">
										<span>2</span>
									</div>
								</a>
							</div>
						</div>
						<div class="col-4 production-rank-feed__item">
							<div class="home-production-item">
								<a href="/productions/755263/selling?affect_type=Home&amp;affect_id=0&amp;content_type=HomeFeedRank">
									<div class="img-wrap square home-production-item__wrapper"><div class="home-production-item__image"></div>
										<div class="css-167c30c-Wrapper evlxapa2">
											<div class="css-2itshy-Content evlxapa1">
												<picture>
													<source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163849450926711980.png?w=256&amp;h=256&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163849450926711980.png?w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163849450926711980.png?w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163849450926711980.png?w=720&amp;h=720&amp;c=c&amp;webp=1 3x"><img class="css-vagntg-Image evlxapa0" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163849450926711980.png?w=256&amp;h=256&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163849450926711980.png?w=360&amp;h=360&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163849450926711980.png?w=480&amp;h=480&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/thumbnail_badges/163849450926711980.png?w=720&amp;h=720&amp;c=c 3x">
												</picture>
											</div>
										</div>
									</div>
										<div class="info">
											<p class="product-name text-caption-1 line-height-normal">[최대 235만원대] 워시타워 3color 세탁24kg건조17kg (화이트/실버/블랙)</p>
												<p class="price text-caption-3">
													<span class="discount-ratio text-blue text-body-1 bold">15%</span>
													<strong class="selling-price text-body-1 text-black"> 2,777,000</strong>
												</p>
										</div>
										<div class="home-rank-icon">
											<span>3</span>
										</div>
								</a>
							</div>
						</div>
					</ul>
				</div>
				<div class="col-12 col-md-3 home-rank__more-wrap">
					<div class="home-rank__more-container">
						<a class="home-rank__more" href="/commerces/ranks?type=best">
							<div class="home-rank__more__text">베스트셀러 더보기
								<div class="home-rank__more__icon">
									<svg class="home-rank__more__icon__arrow" width="40" height="40" viewBox="0 0 40 40" preserveAspectRatio="xMidYMid meet">
										<g fill="none" fill-rule="evenodd" transform="rotate(-180 20 20)">
											<circle cx="20" cy="20" r="20" fill="#FFF"></circle>
											<g fill="#424242">
												<path d="M24.303 27.89l-1.414 1.413-9.192-9.192 1.414-1.414z"></path>
												<path d="M22.89 10.697l1.413 1.414-9.192 9.192-1.414-1.414z"></path>
											</g>
										</g>
									</svg>
								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-12 home-section__more-wrap">
					<div class="home-section__more">
						<a class="home-section__more__btn" href="/commerces/ranks?type=best">베스트셀러 더보기</a>
					</div>
				</div>
			</div>
		</div>
	</section>
<section class="home-b2b-notice container"><a class="home-b2b-notice__entry" href="https://pro.ohou.se/?utm_source=ohouse&amp;utm_medium=web&amp;utm_campaign=prosignup&amp;utm_content=bottombanner"><div class="home-b2b-notice__entry__title"><svg class="tag" width="44" height="18" viewBox="0 0 44 18" preserveAspectRatio="xMidYMid meet"><rect width="44" height="18" fill="#F77" rx="9"></rect><path fill="#FFF" d="M9.49 11.42c1.06 0 1.62-.8 1.62-2.46v-.44c0-1.82-.52-2.56-1.66-2.56-1.08 0-1.64.79-1.64 2.44v.44c0 1.89.56 2.58 1.68 2.58zm-.06 1.78c-2.34 0-4.18-1.29-4.18-4.34v-.3c0-3.1 2.01-4.38 4.25-4.38 2.33 0 4.19 1.28 4.19 4.34v.28c0 3.11-2.02 4.4-4.26 4.4zm8.01-4.62h.9c.9 0 1.21-.41 1.21-1.28 0-.98-.36-1.3-1.16-1.3h-.95v2.58zM15 13.05V4.32h3.63c2.32 0 3.46 1.01 3.46 2.84 0 1.98-1.2 3-3.4 3h-1.24v2.9H15zm8.28 0V4.32h6.03v1.75H25.7v1.67h2.82v1.71H25.7v1.85h3.73v1.75h-6.15zm7.55 0V4.32h2.64L36.3 9.2h.04V4.3h2.08v8.74H36.1l-3.12-5.44h-.06v5.44h-2.08z"></path></svg>전문가 가입신청<svg class="caret" width="1em" height="1em" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="nonzero" d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z"></path></svg></div><div class="home-b2b-notice__entry__caption">인테리어 전문가님! 오늘의집과 함께하세요<svg class="caret" width="1em" height="1em" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="nonzero" d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z"></path></svg></div></a><a class="home-b2b-notice__entry" href="/contacts/b2b"><div class="home-b2b-notice__entry__title">사업자 구매 회원 전환<svg class="caret" width="1em" height="1em" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="nonzero" d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z"></path></svg></div><div class="home-b2b-notice__entry__caption">사업자 회원에게 구매 시 혜택을 드립니다<svg class="caret" width="1em" height="1em" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="nonzero" d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z"></path></svg></div></a></section>
</div>

</div>
</body>
</html>