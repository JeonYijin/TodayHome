<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/productPage.css">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&amp;display=swap&amp;subset=korean"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://assets.ohou.se/web/dist/css/preamble-97ede701.chunk.css">
<link rel="stylesheet"
	href="https://assets.ohou.se/web/dist/css/5-1fc4abe5.chunk.css">
<link rel="stylesheet"
	href="https://assets.ohou.se/web/dist/css/7-122a7274.chunk.css">
<link rel="stylesheet"
	href="https://assets.ohou.se/web/dist/css/8-b8609d1a.chunk.css">
<link rel="stylesheet"
	href="https://assets.ohou.se/web/dist/css/14-70cf3ee0.chunk.css">
<link rel="stylesheet"
	href="https://assets.ohou.se/web/dist/css/templates-Commerce-StoreHome-StoreHomePage-2ef124c8.chunk.css">
<link rel="stylesheet"
	href="https://assets.ohou.se/web/dist/css/21-0e75de9b.chunk.css">
<link rel="stylesheet"
	href="https://assets.ohou.se/web/dist/css/23-2ef16b9a.chunk.css">
<link rel="stylesheet"
	href="https://assets.ohou.se/web/dist/css/App-6e6c2f0c.chunk.css">
<script async="" src="https://static.hotjar.com/c/hotjar-877658.js?sv=6"></script>
<script async=""
	src="https://script.hotjar.com/modules.cbd9b920d05cd9e47f57.js"
	charset="utf-8"></script>
<link rel="stylesheet" type="text/css"
	href="https://assets.ohou.se/web/dist/css/45-8242b1ed.chunk.css">
<link rel="stylesheet" type="text/css"
	href="https://assets.ohou.se/web/dist/css/templates-Commerce-Category-Feed-CategoryFeedPage-4b4f4d2a.chunk.css">
<link rel="stylesheet" type="text/css"
	href="https://assets.ohou.se/web/dist/css/templates-Commerce-Product-Detail-ProductDetailPage-7980d1fd.chunk.css">
<link rel="canonical" href="https://ohou.se/productions/310649/selling"
	data-react-helmet="true">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<%@ include file="../nav_store/header.jsp" %>
	<div class="production-selling-overview container">
		<nav
			class="commerce-category-breadcrumb-wrap production-selling-overview__category">
			<ol class="commerce-category-breadcrumb">
				<li class="commerce-category-breadcrumb__entry"><a class="link"
					href="/store/category?category=0&amp;affect_type= ProductSaleDetail&amp;affect_id=310649">가구</a>
					<svg class="icon" width="8" height="8" viewBox="0 0 8 8"
						fill="currentColor" preserveAspectRatio="xMidYMid meet">
						<path d="M4.95 4L2.12 1.19l.7-.71 3.54 3.54-3.53 3.53-.7-.7z"></path></svg></li>
				<li class="commerce-category-breadcrumb__entry"><a class="link"
					href="/store/category?category=0_22&amp;affect_type= ProductSaleDetail&amp;affect_id=310649">${categoryN}</a>
			</ol>
		</nav>
		<div class="production-selling-overview__container row">
			<div
				class="production-selling-overview__cover-image-wrap col-12 col-md-6 col-lg-7">
				<div class="production-selling-cover-image-container">
					<div
						class="carousel production-selling-cover-image production-selling-overview__cover-image"
						role="region" aria-roledescription="carousel">
						<div
							class="carousel__list-wrap production-selling-cover-image__carousel-wrap">
							<div class="carousel__list" aria-live="polite"
								style="transform: translateX(0%);">
								<div
									class="carousel__list__entry production-selling-cover-image__entry"
									role="group" aria-roledescription="slide" aria-label="2 of 8"
									style="width: 100%;">
									<img
										class="production-selling-cover-image__entry__image image1"
										src="../upload/store/${product.prFiles[0].fileName}" srcset="">
									<div class="production-selling-cover-image__timer--pc"></div>
									<div class="css-167c30c-Wrapper evlxapa2">
										<div class="css-uny98z-Content evlxapa1"></div>
									</div>
								</div>
							</div>
						</div>
						<ul class="production-selling-cover-image__list">
							<c:forEach items="${product.prFiles}" var="fileVO">
								<c:if test="${fileVO.ori_type eq 1}">
									<li class="production-selling-cover-image__list__item"><button
											class="production-selling-cover-image__list__btn button1"
											type="button" aria-label="8개 중 1번째 항목">

											<img class="image" src="../upload/store/${fileVO.fileName}"
												srcset="">
										</button></li>
								</c:if>
							</c:forEach>
						</ul>

						<!-- 이미지 클릭시 해당 이미지로 대표 이미지 변경   -->
						<script type="text/javascript">
							$(".button1").click(function() {
								let s = $(this).children().attr("src");
								$(".image1").attr("src", s);
							});
						</script>










					</div>
					<div class="production-selling-cover-image__timer--mobile"></div>
				</div>
			</div>
			<div
				class="production-selling-overview__content col-12 col-md-6 col-lg-5">
				<div class="production-selling-header">
					<h1 class="production-selling-header__title">
						<p class="production-selling-header__title__brand-wrap">
							<a class="production-selling-header__title__brand"
								href="/brands/home?query=%EB%A6%AC%EC%83%98&amp;affect_type=ProductSaleDetail&amp;affect_id=310649">${product.pr_seller}
							</a>
						</p>
						<div class="production-selling-header__title__name-wrap">
							<span class="production-selling-header__title__name">${product.pr_name}</span>
							<div class="production-selling-header__action">
								<button
									class="production-selling-header__action__button production-selling-header__action__button-scrap"
									type="button">
									<svg class="icon--stroke" aria-label="스크랩" width="24"
										height="24" fill="currentColor" stroke="currentColor"
										stroke-width="0.5" viewBox="0 0 24 24"
										preserveAspectRatio="xMidYMid meet">
										<path
											d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path></svg>
									<span class="count">45,480</span>
								</button>

								<div class="drop-down">
									<button class="production-selling-header__action__button"
										type="button">
										<svg class="icon" aria-label="공유하기" width="24" height="24"
											viewBox="0 0 24 24" fill="currentColor"
											preserveAspectRatio="xMidYMid meet">
											<path
												d="M9.64 14.646a4.5 4.5 0 1 1 0-5.292l4.54-2.476a4.5 4.5 0 1 1 .63.795l-4.675 2.55c.235.545.365 1.146.365 1.777s-.13 1.232-.365 1.777l4.675 2.55a4.5 4.5 0 1 1-.63.795l-4.54-2.476zM18 8a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM6 15.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM18 23a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"></path></svg>
									</button>
								</div>
							</div>
						</div>

					</h1>
					<div class="production-selling-header__content">
						<div class="production-selling-header__info-wrap">
							<div class="production-selling-header__promotion">
								<div class="production-selling-header__promotion__title-wrap">
									<span>혜택</span>
								</div>
								<div class="production-selling-header__promotion__content-wrap">
									<p class="production-selling-header__promotion__entry">
										<b>${product.pr_dPrice/1000}p</b>(WELCOME 0.1% 적립)
									</p>
									<p class="production-selling-header__promotion__entry"></p>
								</div>
							</div>
							<div class="production-selling-header__delivery">
								<div class="production-selling-header__delivery__title-wrap">
									<span>배송</span>
								</div>
								<div class="production-selling-header__delivery__content-wrap">
									<span class="production-selling-header__delivery__fee"><b>2500원</b></span><span
										class="production-selling-header__delivery__type"><span>화물택배</span></span><span
										class="production-selling-header__delivery__disclaimer-wrap"><span
										class="production-selling-header__delivery__disclaimer"><svg
												class="check-icon" width="10" height="9" fill="none"
												preserveAspectRatio="xMidYMid meet">
												<path d="M1 3.83l2.153 3.03a1 1 0 001.627.005L9 1"
													stroke="#BDBDBD" stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg><span>제주도/도서산간 지역
												2500원</span></span></span>
								</div>
							</div>
						</div>
						<p class="production-selling-header__review-wrap">
							<a class="production-selling-header__review"
								href="#production-selling-review"><span
								class="production-selling-header__review__icon"
								aria-label="별점 4.6점"><svg fill="#35C5F0" width="1em"
										height="1em" preserveAspectRatio="xMidYMid meet"
										viewBox="0 0 24 24">
										<defs>
										<path id="star-path-1.000"
											d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
										<clipPath id="star-clip-1.000">
										<rect x="0" y="0" width="24" height="24"></rect></clipPath></defs>
										<use xlink:href="#star-path-1.000" fill="#DBDBDB"></use>
										<use clip-path="url(#star-clip-1.000)"
											xlink:href="#star-path-1.000"></use></svg> <svg fill="#35C5F0"
										width="1em" height="1em" preserveAspectRatio="xMidYMid meet"
										viewBox="0 0 24 24">
										<defs>
										<path id="star-path-1.000"
											d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
										<clipPath id="star-clip-1.000">
										<rect x="0" y="0" width="24" height="24"></rect></clipPath></defs>
										<use xlink:href="#star-path-1.000" fill="#DBDBDB"></use>
										<use clip-path="url(#star-clip-1.000)"
											xlink:href="#star-path-1.000"></use></svg> <svg fill="#35C5F0"
										width="1em" height="1em" preserveAspectRatio="xMidYMid meet"
										viewBox="0 0 24 24">
										<defs>
										<path id="star-path-1.000"
											d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
										<clipPath id="star-clip-1.000">
										<rect x="0" y="0" width="24" height="24"></rect></clipPath></defs>
										<use xlink:href="#star-path-1.000" fill="#DBDBDB"></use>
										<use clip-path="url(#star-clip-1.000)"
											xlink:href="#star-path-1.000"></use></svg> <svg fill="#35C5F0"
										width="1em" height="1em" preserveAspectRatio="xMidYMid meet"
										viewBox="0 0 24 24">
										<defs>
										<path id="star-path-1.000"
											d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
										<clipPath id="star-clip-1.000">
										<rect x="0" y="0" width="24" height="24"></rect></clipPath></defs>
										<use xlink:href="#star-path-1.000" fill="#DBDBDB"></use>
										<use clip-path="url(#star-clip-1.000)"
											xlink:href="#star-path-1.000"></use></svg> <svg fill="#35C5F0"
										width="1em" height="1em" preserveAspectRatio="xMidYMid meet"
										viewBox="0 0 24 24">
										<defs>
										<path id="star-path-0.583"
											d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
										<clipPath id="star-clip-0.583">
										<rect x="0" y="0" width="13.993445928913545" height="24"></rect></clipPath></defs>
										<use xlink:href="#star-path-0.583" fill="#DBDBDB"></use>
										<use clip-path="url(#star-clip-0.583)"
											xlink:href="#star-path-0.583"></use></svg></span><span
								class="production-selling-header__review__text"><span
									class="number"><span class="mobile-wrapper">(</span>3,967<span
										class="mobile-wrapper">)</span></span><span class="postfix">개
										리뷰</span></span></a>
						</p>
						<div class="production-selling-header__price">
							<span class="production-selling-header__price__price-wrap"><span
								class="production-selling-header__price__discount"><span
									class="number">${product.pr_discount}</span><span
									class="percent">%</span></span> <del
									class="production-selling-header__price__original">
									<span class="number">${product.pr_price}</span><span
										class="won">원</span>
								</del><span class="production-selling-header__price__separator"></span><span
								class="production-selling-header__price__price"><span
									class="number">${product.pr_dPrice}</span><span class="won">원</span>
						</div>
					</div>


				</div>
				<div
					class="production-selling-option-form production-selling-overview__option-form">
					<section
						class="selling-option-form-content production-selling-option-form__form">

						<ul class="selling-option-form-content__list"></ul>
					</section>

					<div class="production-selling-option-form__footer">
						<button
							class="button button--color-blue-inverted button--size-55 button--shape-4"
							type="button" onclick="location.href='/cart'">장바구니</button>
						<button
							class="button button--color-blue button--size-55 button--shape-4"
							type="button" onclick="location.href='/payment'">바로구매</button>
					</div>
				</div>

			</div>
		</div>
		<div data-sticky-enabled="false" data-sticky-disabled="false"
			data-sticky-always="false" data-sticky-ignore="false"
			data-direction="top" data-offset="130"
			class="sticky-container production-selling-navigation-wrap"
			style="position: sticky; top: 130px;">
			<div class="sticky-child production-selling-navigation"
				style="position: relative;">
				<nav class="production-selling-navigation__content">
					<ol class="production-selling-navigation__list">
						<li><a
							class="production-selling-navigation__item production-selling-navigation__item--active"
							button onclick="fnMove('1')">상품정보</a></li>
						<li><a class="production-selling-navigation__item" button
							onclick="fnMove('3')">문의<span
								class="production-selling-navigation__item__count"></span></a></li>
						<li><a class="production-selling-navigation__item" button
							onclick="fnMove('4')">배송/환불</a></li>
					</ol>
					<div id="div1">
						<h1 class="production-selling-section__title">
							<br></br>상품정보
						</h1>
						<c:forEach items="${product.prFiles}" var="fileVO">
							<c:if test="${fileVO.ori_type eq 2}">
								<img class="image" src="../upload/store/${fileVO.fileName}">

							</c:if>
						</c:forEach>
					</div>


					<div id="div3">
						<section class="production-selling-section">
							<header class="production-selling-section__header">
								<h1 class="production-selling-section__title">
									문의 <span class="count">7,058</span>
								</h1>
								<div class="production-selling-section__right">
									<button>문의하기</button>
								</div>
							</header>
							<div class="production-question-feed">
								<div class="production-question-feed__list">
									<article class="production-question-feed__item"
										data-qna-id="5019055">
										<header class="production-question-feed__item__header">
											구매 | 상품 | <span class="unanswered">미답변</span>
										</header>
										<p class="production-question-feed__item__author">seon****
											| 2021년 12월 19일 08시 36분</p>
										<div class="production-question-feed__item__question">
											<span class="production-question-feed__item__badge">Q&nbsp;</span>
											<p class="production-question-feed__item__content">
												<span
													class="production-question-feed__item__content__option-name">SS
													슈퍼싱글<br>
												</span>슈퍼싱글 매트리스 두 개를 구매했는데 배송 와서 보니까 각각 박스 크기와 박스 속 내용물의 포장 크기가
												다릅니다. 왜 그런거죠?
											</p>
										</div>
									</article>
						</section>
					</div>


					<div id="div4">
						<table class="production-selling-table">
							<tbody>
								<h1 class="production-selling-section__title">환불정보</h1>
								<tr>
									<th>배송</th>
									<td>업체직접배달 | 7일 이내 배송</td>
								</tr>
								<tr>
									<th>배송불가 지역</th>
									<td>도서산간 지역 / 제주도</td>
								</tr>
								<tr>
									<th>비례 배송비</th>
									<td>주문 상품 개수에 비례하여 배송비 부과</td>
								</tr>
							</tbody>
						</table>
						<section class="production-selling-section">
							<header class="production-selling-section__header">
								<h1 class="production-selling-section__title">교환/환불</h1>
							</header>
							<div class="production-selling-refund">
								<table
									class="production-selling-table production-selling-refund__table">
									<tbody>
										<tr>
											<th>보내실 곳</th>
											<td>${product.pr_address}</td>
										</tr>
									</tbody>
								</table>
								<h2 class="production-selling-refund__title">반품/교환 사유에 따른
									요청 가능 기간</h2>
								<p class="production-selling-refund__note">반품 시 먼저 판매자와
									연락하셔서 반품사유, 택배사, 배송비, 반품지 주소 등을 협의하신 후 반품상품을 발송해 주시기 바랍니다.</p>
								<ol class="production-selling-refund__list">
									<li>구매자 단순 변심은 상품 수령 후 7일 이내&nbsp;<small>(구매자
											반품배송비 부담)</small></li>
									<li>표시/광고와 상이, 상품하자의 경우 상품 수령 후 3개월 이내 혹은 표시/광고와 다른 사실을 안
										날로부터 30일 이내.<br>둘 중 하나 경과 시 반품/교환 불가&nbsp;<small>(판매자
											반품배송비 부담)</small>
									</li>
								</ol>
								<h2 class="production-selling-refund__title">반품/교환 불가능 사유</h2>
								<p class="production-selling-refund__note">아래와 같은 경우 반품/교환이
									불가능합니다.</p>
								<ol class="production-selling-refund__list">
									<li>반품요청기간이 지난 경우</li>
									<li>구매자의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우&nbsp;<small>(단,
											상품의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외)</small></li>
									<li>포장을 개봉하였으나 포장이 훼손되어 상품가치가 현저히 상실된 경우&nbsp;<small>(예:
											식품, 화장품)</small></li>
									<li>구매자의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우&nbsp;<small>(라벨이
											떨어진 의류 또는 태그가 떨어진 명품관 상품인 경우)</small></li>
									<li>시간의 경과에 의하여 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우&nbsp;<small>(예:
											식품, 화장품)</small></li>
									<li>고객주문 확인 후 상품제작에 들어가는 주문제작상품</li>
									<li>복제가 가능한 상품 등의 포장을 훼손한 경우&nbsp;<small>(CD/DVD/GAME/도서의
											경우 포장 개봉 시)</small></li>
								</ol>
							</div>
						</section>
					</div>


				</nav>
			</div>
		</div>
	</div>
	<!-- 메뉴 버튼 누를떄 해당 메뉴로 이동  -->
	<script>
		function fnMove(seq) {
			var offset = $("#div" + seq).offset();
			$('html, body').animate({
				scrollTop : offset.top
			}, 400);
		}
	</script>
	<%@ include file="../store/footer.jsp"%>

</body>
</html>