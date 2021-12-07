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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<h1>PicOne page</h1>
	<div class="layout">
		<div class="css-2iwhjz-DetailDiv e1auuux0">
			<div class="css-sa4f8i-CardCollectionBaseDetailAuthorWrapper ew7sa7k0">
				<address class="css-umz2z6-AuthorAddress e1v9tg6s6">
					<div class="css-9pbsgo-AuthorAuthor e1v9tg6s5">
						<div class="css-1p7q7e9-AuthorTitle e1v9tg6s4">
							<a class="css-kp67iu-AuthorLink e1v9tg6s3" href="/users/2624519">
								<div class="css-1bs83ls-AuthorImage e1v9tg6s2">
									<img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163359433983074672.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163359433983074672.jpeg?gif=1&amp;w=80&amp;h=80&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163359433983074672.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163359433983074672.jpeg?gif=1&amp;w=160&amp;h=160&amp;c=c 3x">
								</div>
							라오스로맨스
							</a>
						</div>
						<div class="css-ajp79q-AuthorIntroduction e1v9tg6s1">
							<time datetime="2021-11-30 16:45:36" class="css-1p9oymj-DateItem-CardCollectionBaseDetailHeaderItem eaxmwd20">어제</time>
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
								<time datetime="2021-11-30 16:45:36" class="css-1p9oymj-DateItem-CardCollectionBaseDetailHeaderItem eaxmwd20">어제</time>
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
									<dd class="css-yn8cvv-Dd e17u2gy10">${count}</dd>
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
									<span class="comment-feed__header__count zero">${count}</span>
								</h1>
								<!-- 댓글 등록-->
								
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
												<sec:authentication property="principal" var="member"/>
												<input name="memberNum" value="${member.memberNum}" id="memberNum" type="hidden">
												<input name="comment_text" type="text" id= "comment_text" class="comment-content-input__text comment-feed__form__content__text" placeholder="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" >
												<!-- <div  class="comment-content-input__text comment-feed__form__content__text" data-ph="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" contenteditable="true"></div> -->
											</div>
										</div>
										
										<div class="comment-feed__form__actions">
											<button class="comment-feed__form__submit add" aria-label="등록" type="button" >등록</button>
										</div>
									</div>
								</form>
								
								<%-- <sec:authorize access="!isAuthenticated()">
								<p>로그인하면 댓글 작성이 가능합니다.</p>
								<a href="../member/memberLogin">로그인하러 가기</a>
								</sec:authorize> --%>
								<!-- 댓글 리스트 보여주기 -->
								<ul class="comment-feed__list commentList">
									<c:forEach items="${comment}" var="comment" varStatus="status" >
									<sec:authentication property="principal" var="loginMember"/>
									<c:forEach items="${comment.memberVO}" var="member">
									
									<c:if test="${member.memberNum eq loginMember.memberNum}">
										<li class="comment-feed__list__item" id="comment${status.index}">
										<!-- 답댓글일 경우 앞에 margin 주기 -->
											<c:forEach begin="1" end="${comment.depth }">
												<div style="margin-left: 20px;"></div>
											</c:forEach>
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
							</section>
						</div>
					</div>
				
					<%-- <div class="css-ak4bje-Col e15wafbq0">
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
											<span class="css-36arso-ActionButtonCount elwkc50">17</span>
										</button>
										
										<button class="_3Z6oR _1SCvK _2tsrJ _3aUSM css-1uts5l0-ActionButton elwkc52" type="button" aria-pressed="false" title="스크랩" aria-label="스크랩">
											<span class="css-13w5lgd-ActionButtonIcon elwkc51">
												<svg width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" class="css-1qgnuj8-ActionScrapIcon-IconSvg ek5sxnq2">
													<path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path>
												</svg>
											</span>
											<span class="css-36arso-ActionButtonCount elwkc50">2</span>
										</button>
										
										<div class="drop-down">
											<button type="button" aria-pressed="false" aria-label="더보기" title="더보기" class="css-1v8hv0n-MoreButton einumkw0">
												<svg width="1em" height="1em" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
													<g fill="currentColor" transform="translate(11 3)">
														<circle cx="1.5" cy="1.5" r="1.5"></circle>
														<circle cx="1.5" cy="8.5" r="1.5"></circle>
														<circle cx="1.5" cy="15.5" r="1.5"></circle>
													</g>
												</svg>
											</button>
										</div>
									</div>
									
									 <address class="css-cta4ra-AuthorAddress e1v9tg6s6">
										<div class="css-9pbsgo-AuthorAuthor e1v9tg6s5">
											<div class="css-1p7q7e9-AuthorTitle e1v9tg6s4">
												<a class="css-kp67iu-AuthorLink e1v9tg6s3" href="/users/2624519">
													<div class="css-snaekv-AuthorImage e1v9tg6s2">
														<img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163359433983074672.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163359433983074672.jpeg?gif=1&amp;w=80&amp;h=80&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163359433983074672.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163359433983074672.jpeg?gif=1&amp;w=160&amp;h=160&amp;c=c 3x">
													</div>
													라오스로맨스
												</a>
											</div>
											<div class="css-ajp79q-AuthorIntroduction e1v9tg6s1">갤러리를 품고 사는 우리집으로 초대합니다 :-)</div>
										</div>
										<button class="_3Z6oR _3AsCW _1XHs9 css-1ch1nkx-AuthorFollowButton e1v9tg6s0" type="button">팔로우</button>
									</address>
									
									<div class="css-1blnoph-SideBarContent ewjzpes0">
										<div class="card-detail-pc-related-card-list">
											<ul class="card-detail-pc-related-card-list__list">
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
											<a class="card-detail-pc-related-card-list__more" href="/users/2624519/card_collections">더보기</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
				 <div data-sticky-enabled="false" data-sticky-disabled="true" data-sticky-always="false" data-sticky-ignore="true" data-direction="bottom" data-offset="0" class="sticky-container content-detail-floating-wrap content-detail-floating-wrap--overlay">
					<div class="sticky-child content-detail-floating" style="position: relative;">
						<div class="css-t9d8mb-ContentDiv e4tbu8a1">
							<button class="content-detail-floating-action content-detail-floating-action--horizontal" title="좋아요" type="button">
								<span class="content-detail-floating-action__item">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" d="M22.971 7.638c-.548-5.17-7.119-7.135-10.57-2.488a.5.5 0 0 1-.802 0C8.148.503 1.577 2.469 1.029 7.625.642 12.451 3.897 17.183 12 21.436c8.104-4.252 11.36-8.984 10.972-13.798zm.996-.093c.428 5.319-3.137 10.446-11.738 14.899a.5.5 0 0 1-.46 0C3.169 17.99-.395 12.864.034 7.532.656 1.67 7.904-.683 12 4.052 16.096-.683 23.344 1.67 23.967 7.545z"></path>
									</svg>
								</span>
								<span class="content-detail-floating-action__count">17</span>
							</button>
							<button class="content-detail-floating-action content-detail-floating-action--horizontal" title="스크랩" type="button">
								<span class="content-detail-floating-action__item">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" fill="currentColor" preserveAspectRatio="xMidYMid meet">
										<path fill-rule="evenodd" transform="matrix(1 0 0 -1 0 23.033)" d="M12.943 6.342a2 2 0 0 1-1.886 0L3 2.032V20.5a.5.5 0 0 0 .5.5h17a.5.5 0 0 0 .5-.5V2.033l-8.057 4.309zm-.471-.882l8.056-4.31A1 1 0 0 1 22 2.034V20.5a1.5 1.5 0 0 1-1.5 1.5h-17A1.5 1.5 0 0 1 2 20.5V2.033a1 1 0 0 1 1.472-.882l8.056 4.31a1 1 0 0 0 .944 0z"></path>
									</svg>
								</span>
								<span class="content-detail-floating-action__count">2</span>
							</button>
							<button class="content-detail-floating-action content-detail-floating-action--horizontal" title="댓글" type="button">
								<span class="content-detail-floating-action__item">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="nonzero" d="M13.665 18.434l.53-.066C19.69 17.679 23 14.348 23 10c0-4.942-4.235-8.5-11-8.5S1 5.058 1 10c0 4.348 3.31 7.68 8.804 8.368l.531.066L12 21.764l1.665-3.33zm-3.985.926C3.493 18.585 0 14.69 0 10 0 4.753 4.373.5 12 .5S24 4.753 24 10c0 4.69-3.493 8.585-9.68 9.36l-1.647 3.293c-.374.75-.974.744-1.346 0L9.68 19.36z"></path>
									</svg>
								</span>
							</button>
							<div class="drop-down content-detail-floating__action--horizontal">
								<button class="content-detail-floating-action content-detail-floating-action--horizontal" title="공유" type="button">
									<span class="content-detail-floating-action__item">
										<svg class="icon" width="24" height="24" viewBox="0 0 24 24" fill="currentColor" preserveAspectRatio="xMidYMid meet">
											<path d="M9.64 14.646a4.5 4.5 0 1 1 0-5.292l4.54-2.476a4.5 4.5 0 1 1 .63.795l-4.675 2.55c.235.545.365 1.146.365 1.777s-.13 1.232-.365 1.777l4.675 2.55a4.5 4.5 0 1 1-.63.795l-4.54-2.476zM18 8a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM6 15.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM18 23a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"></path>
										</svg>
									</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> --%>

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
			getComment();
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
 

 //삭제 버튼 클릭시 댓글 삭제하기
 // -----------------댓글수 가져와서 i 한계 변경하기
 for(let i=0; i<100; i++){
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
			 },
			 error:function(xhr, status, error){
				 console.log(error);
			 }
		 });  
		 
		 
	 });
 };
 
 // 신고버튼 클릭시 경고창
 for(let i=0; i<100; i++){
	 $('#reportBtn'+i).click(function(){
		 alert('신고되었습니다.');
	 })
 }
 

//답댓글달기 -- 답댓글 margin left 걸기
	for(let i=0; i<100; i++){
		$('#replyBtn'+i).click(function(){
			alert('답글');
			let comment_num = $('#comment_num'+i).val();
			console.log('comment_num:'+comment_num)
			//답글 누르면 댓글쓰는 폼 띄우기
			let replyForm = '<form class="comment-feed__form comment_add" method="post" id="form" style="margin-left:20px;">';
			replyForm= replyForm+'<div class="comment-feed__form__user">';
			replyForm= replyForm+'<img  src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144 3x"></div>';
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
						}
					},
					error:function(xhr, status, error){
						console.log(error);
					}
				});
				
			});
			
			
		});
	};
 
 
 
 
</script>
</body>
</html>