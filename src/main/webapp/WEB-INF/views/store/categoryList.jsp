<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="../resources/css/categoryList.css">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<!-- header  -->




<!-- //header -->

	<!-- 왼쪽 카테고리 목록 ------------------------------------------------------>
	 <div class="category-feed-container">
        <div class="category-feed-wrap container">
            <div class="category-feed row">
                <div class="category-feed__side-bar col-12 col-md-3">
                    <section class="commerce-category-list">
                        <h2 class="commerce-category-list__title"><a href="/store/category?pr_category=0">가구</a></h2>
                        <ul class="commerce-category-tree commerce-category-list__categories">
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=1">침대</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=2">매트리스/토퍼</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=3">소파</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=4">테이블/책상</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=5">거실장/TV장</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=6">서랍/수납장</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=7">진열장/책장</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=8">선반</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=9">행거/옷장</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=10">의자</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=11">화장대/콘솔</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=12">거울</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=13">가벽/파티션</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=14">야외가구</a>
                                </div>
                                <div class="" style="overflow: hidden;"></div>
                            </li>
                            <li class="commerce-category-tree__entry">
                                <div class="commerce-category-tree__entry__header">
                                    <a class="commerce-category-tree__entry__title" href="/store/category?pr_category=15">유아동가구</a>
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
		
		
		<!-- 샘플 -->
		<div class="category-feed__content__items">
		
		
			<div class="category-feed__content__item-wrap col-4 col-lg-4" style="">
	  		<article class="production-item" id="product-310649">
	    		<a class="production-item__overlay" href="/productions/310649/selling?affect_type=ProductCategoryIndex&amp;affect_id="></a>
			<div class="production-item-image production-item__image">
	 		 <img class="image" alt="" src="" srcset="">
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
	 			<span class="production-item__header__brand">리샘 </span>
	 			<span class="production-item__header__name">[쿠폰할인] 캐더린 LED 통서랍 수납침대 SS/Q</span>
				</h1>
				<span class="production-item-price">
	  			<span class="production-item-price__rate">37<span class="percentage">% </span>
				</span>
				<span class="production-item-price__price">156,000</span></span>
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
				
				<div class="category-feed__content__item-wrap col-4 col-lg-4" style="">
	  		<article class="production-item" id="product-310649">
	    		<a class="production-item__overlay" href="/productions/310649/selling?affect_type=ProductCategoryIndex&amp;affect_id="></a>
			<div class="production-item-image production-item__image">
	 		 <img class="image" alt="" src="" srcset="">
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
	 			<span class="production-item__header__brand">리샘 </span>
	 			<span class="production-item__header__name">[쿠폰할인] 캐더린 LED 통서랍 수납침대 SS/Q</span>
				</h1>
				<span class="production-item-price">
	  			<span class="production-item-price__rate">37<span class="percentage">% </span>
				</span>
				<span class="production-item-price__price">156,000</span></span>
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
				
				
				<div class="category-feed__content__item-wrap col-4 col-lg-4" style="">
	  		<article class="production-item" id="product-310649">
	    		<a class="production-item__overlay" href="/productions/310649/selling?affect_type=ProductCategoryIndex&amp;affect_id="></a>
			<div class="production-item-image production-item__image">
	 		 <img class="image" alt="" src="" srcset="">
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
	 			<span class="production-item__header__brand">리샘 </span>
	 			<span class="production-item__header__name">[쿠폰할인] 캐더린 LED 통서랍 수납침대 SS/Q</span>
				</h1>
				<span class="production-item-price">
	  			<span class="production-item-price__rate">37<span class="percentage">% </span>
				</span>
				<span class="production-item-price__price">156,000</span></span>
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
				
				<div class="category-feed__content__item-wrap col-4 col-lg-4" style="">
	  		<article class="production-item" id="product-310649">
	    		<a class="production-item__overlay" href="/productions/310649/selling?affect_type=ProductCategoryIndex&amp;affect_id="></a>
			<div class="production-item-image production-item__image">
	 		 <img class="image" alt="" src="" srcset="">
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
	 			<span class="production-item__header__brand">리샘 </span>
	 			<span class="production-item__header__name">[쿠폰할인] 캐더린 LED 통서랍 수납침대 SS/Q</span>
				</h1>
				<span class="production-item-price">
	  			<span class="production-item-price__rate">37<span class="percentage">% </span>
				</span>
				<span class="production-item-price__price">156,000</span></span>
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
				
				<div class="category-feed__content__item-wrap col-4 col-lg-4" style="">
	  		<article class="production-item" id="product-310649">
	    		<a class="production-item__overlay" href="/productions/310649/selling?affect_type=ProductCategoryIndex&amp;affect_id="></a>
			<div class="production-item-image production-item__image">
	 		 <img class="image" alt="" src="" srcset="">
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
	 			<span class="production-item__header__brand">리샘 </span>
	 			<span class="production-item__header__name">[쿠폰할인] 캐더린 LED 통서랍 수납침대 SS/Q</span>
				</h1>
				<span class="production-item-price">
	  			<span class="production-item-price__rate">37<span class="percentage">% </span>
				</span>
				<span class="production-item-price__price">156,000</span></span>
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
				
				<div class="category-feed__content__item-wrap col-4 col-lg-4" style="">
	  		<article class="production-item" id="product-310649">
	    		<a class="production-item__overlay" href="/productions/310649/selling?affect_type=ProductCategoryIndex&amp;affect_id="></a>
			<div class="production-item-image production-item__image">
	 		 <img class="image" alt="" src="" srcset="">
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
	 			<span class="production-item__header__brand">리샘 </span>
	 			<span class="production-item__header__name">[쿠폰할인] 캐더린 LED 통서랍 수납침대 SS/Q</span>
				</h1>
				<span class="production-item-price">
	  			<span class="production-item-price__rate">37<span class="percentage">% </span>
				</span>
				<span class="production-item-price__price">156,000</span></span>
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
				
				<div class="category-feed__content__item-wrap col-4 col-lg-4" style="">
	  		<article class="production-item" id="product-310649">
	    		<a class="production-item__overlay" href="/productions/310649/selling?affect_type=ProductCategoryIndex&amp;affect_id="></a>
			<div class="production-item-image production-item__image">
	 		 <img class="image" alt="" src="" srcset="">
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
	 			<span class="production-item__header__brand">리샘 </span>
	 			<span class="production-item__header__name">[쿠폰할인] 캐더린 LED 통서랍 수납침대 SS/Q</span>
				</h1>
				<span class="production-item-price">
	  			<span class="production-item-price__rate">37<span class="percentage">% </span>
				</span>
				<span class="production-item-price__price">156,000</span></span>
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
				
				<div class="category-feed__content__item-wrap col-4 col-lg-4" style="">
	  		<article class="production-item" id="product-310649">
	    		<a class="production-item__overlay" href="/productions/310649/selling?affect_type=ProductCategoryIndex&amp;affect_id="></a>
			<div class="production-item-image production-item__image">
	 		 <img class="image" alt="" src="" srcset="">
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
	 			<span class="production-item__header__brand">리샘 </span>
	 			<span class="production-item__header__name">[쿠폰할인] 캐더린 LED 통서랍 수납침대 SS/Q</span>
				</h1>
				<span class="production-item-price">
	  			<span class="production-item-price__rate">37<span class="percentage">% </span>
				</span>
				<span class="production-item-price__price">156,000</span></span>
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

				

			</div>	
		
		

<!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>