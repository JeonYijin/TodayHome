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
	<h1>PicList page</h1>
	<a href="./picInsert">글쓰기</a>
<div class="layout">
	<div class="container card-feed">
	
		<div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false" data-sticky-ignore="false" data-direction="top" data-offset="81" class="sticky-container card-feed__filter-container" style="position: sticky; top: 81px;">
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
											<a href="#">역대인기순</a>
											<a href="#">최신순</a>
											<a href="#">팔로잉</a> 
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
											<a href="#">원룸&amp;오피스텔</a>
											<a href="#">아파트</a>
											<a href="#">빌라&amp;연립</a>
											<a href="#">단독주택</a>
											<a href="#">사무공간</a>
											<a href="#">상업공간</a>
											<a href="#">기타</a> 
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
											<a href="#">원룸</a>
											<a href="#">거실</a>
											<a href="#">침실</a> 
											<a href="#">주방</a> 
											<a href="#">아이방</a> 
											<a href="#">드레스룸</a> 
											<a href="#">서재&amp;작업실</a> 
											<a href="#">베란다</a> 
											<a href="#">사무공간</a> 
											<a href="#">상업공간</a> 
											<a href="#">가구&amp;소품</a>
											<a href="#">현관</a> 
											<a href="#">외관&amp;기타</a>  
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
											<a href="#">10평 미만</a>
											<a href="#">10평대</a>
											<a href="#">20평대</a> 
											<a href="#">30평대</a>
											<a href="#">40평대</a>
											<a href="#">50평 이상</a> 
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
											<a href="#">모던</a>
											<a href="#">북유럽</a>
											<a href="#">빈티지</a>
											<a href="#">내추럴</a>
											<a href="#">프로방스&amp;로맨틱</a>
											<a href="#">클래식&amp;앤틱</a> 
											<a href="#">한국&amp;아시아</a>
											<a href="#">유니크</a>
										</div>
									</div>
								</li>
								
					
							</ul>
						</div>
						<ul class="filter-bar__tag-list"></ul>
					</div>
				</div>
			</div>
		</div>
		<ul class="css-5g53pt-ListUl e6933zq1"></ul>
	
	<!-- 리스트 시작  -->
		<div class="virtualized-list card-feed__content row" ">
			
			<c:forEach items="${pic}" var="pic">
			<div class="card-feed__item-wrap col-12 col-md-4 col-lg-3">
						<div class="card-feed__item">
							<article class="card-collection-item">
								<div class="card-item-writer">
									<address class="card-item-writer__content">
										<div class="card-item-writer__header">
											<a class="card-item-writer__link" href="#">
												<!-- <img class="card-item-writer__image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163272802669688346.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163272802669688346.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163272802669688346.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163272802669688346.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x"> -->
												
													<span class="card-item-writer__name">${pic.memberVO.nickname}</span>
													
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
										
										  <c:forEach items="${pic.pictureFileVO}" var="fileVO">
										  	<c:if test="${fileVO.idx eq 1 }">
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
										<button class="card-item-action-list__action" type="button">
											<svg class="icon icon--stroke" aria-label="좋아요" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
												<path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
											</svg>
												<span class="count">20</span>
										</button>
										
										<button class="card-item-action-list__action" type="button">
											<svg class="icon icon--stroke" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
												<path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path>
											</svg><span class="count">20</span>
										</button>
										
										<a class="card-item-action-list__action" href="/contents/card_collections/10864619?affect_type=CardIndex&amp;affect_id=0#comment">
											<svg class="icon" aria-label="댓글 달기" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
												<path fill="currentColor" fill-rule="nonzero" d="M13.665 18.434l.53-.066C19.69 17.679 23 14.348 23 10c0-4.942-4.235-8.5-11-8.5S1 5.058 1 10c0 4.348 3.31 7.68 8.804 8.368l.531.066L12 21.764l1.665-3.33zm-3.985.926C3.493 18.585 0 14.69 0 10 0 4.753 4.373.5 12 .5S24 4.753 24 10c0 4.69-3.493 8.585-9.68 9.36l-1.647 3.293c-.374.75-.974.744-1.346 0L9.68 19.36z"></path>
											</svg>
												<span class="count">20</span>
										</a>
										
										
									</aside>
								</div>
								
								<div class="card-item-comment-wrap">
									<article class="card-item-comment" aria-label="댓글">
										<address class="card-item-comment__writer">
											<a class="card-item-comment__writer__link" href="#">
												<div class="card-item-comment__writer__image">
													<!-- <img class="image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163817191984430831.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163817191984430831.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163817191984430831.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163817191984430831.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 3x"> -->
												</div>
													<span class="card-item-comment__writer__name">댓글</span>
											</a>
													<span class="card-item-comment__writer__separator">: </span>
										</address>
										
										<a class="card-item-comment__link" href="/contents/card_collections/10864619?affect_type=CardIndex&amp;affect_id=0#comment">
											<p class="card-item-comment__content">xx</p>
										</a>
									</article>
								</div>
								
							</article>
						</div>
					</div>
					</c:forEach>
		</div>
	</div>
</div>		
	
	
	
<script type="text/javascript" src="../resources/js/picList.js"></script>
</body>
</html>