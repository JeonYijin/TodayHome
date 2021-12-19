<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&display=swap&subset=korean"
    rel="stylesheet">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/preamble-97ede701.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/App-6e6c2f0c.chunk.css">
<link rel="stylesheet"
    href="https://assets.ohou.se/web/dist/css/templates-Home-HomePage-f3a55bf4.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/21-0e75de9b.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/23-2ef16b9a.chunk.css">

     ​

<style>
    .modal_wrap {
        position: absolute;
        top: -50%;
        left: 64%;
        width: 380px;
        height: 100px;
        margin-top: -200px;
        margin-left: -80px;
        line-height: 15px;
        cursor: pointer;
    }

      .popout--cross-dir-22 {
        width: 400px;
        height: 5px;
        background: #fff;
        border-radius: 10px;
        position: relative;
        top: 50%;
        left: 100%;
        margin-top: -900px;
        margin-left: -55px;
        text-align: center;
        box-sizing: border-box;
        padding: 0px 0;
        line-height: 23px;
        cursor: pointer;
    }
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="../resources/css/categoryList.css">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
    crossorigin="anonymous">

<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&display=swap&subset=korean"
    rel="stylesheet">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/preamble-97ede701.chunk.css">
<link rel="stylesheet"
    href="https://assets.ohou.se/web/dist/css/templates-Home-HomePage-f3a55bf4.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/21-0e75de9b.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/23-2ef16b9a.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/App-6e6c2f0c.chunk.css">
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
<link rel="stylesheet" type="text/css" href="https://assets.ohou.se/web/dist/css/5-1fc4abe5.chunk.css">
<link rel="stylesheet" type="text/css" href="https://assets.ohou.se/web/dist/css/8-b8609d1a.chunk.css">
<link rel="stylesheet" type="text/css" href="https://assets.ohou.se/web/dist/css/45-8242b1ed.chunk.css">
<link rel="stylesheet" type="text/css"
    href="https://assets.ohou.se/web/dist/css/templates-Commerce-Category-Feed-CategoryFeedPage-4b4f4d2a.chunk.css">
<link rel="canonical" href="https://ohou.se/store/category?category=0" data-react-helmet="true">

<!-- 필터 모달 CSS -->

<style>
    .modal_wrap {
        position: absolute;
        top: 50%;
        left: 50%;
        width: 120px;
        height: 30px;
        margin-top: -10px;
        margin-left: -60px;
        line-height: 15px;
        cursor: pointer;
    }

    ​ .popout--cross-dir-22 {
        width: 400px;
        height: 5px;
        background: #fff;
        border-radius: 10px;
        position: relative;
        top: 10%;
        left: 50%;
        margin-top: -229px;
        margin-left: 8px;
        text-align: center;
        box-sizing: border-box;
        padding: 0px 0;
        line-height: 23px;
        cursor: pointer;
    }
</style>
</head>

 <body>
<%@ include file="../nav_store/header.jsp" %>

   <!-- 왼쪽 카테고리 목록 ------------------------------------------------------>

   <div class="category-feed-container">

       <div class="category-feed-wrap container">

           <div class="category-feed row">

               <div class="category-feed__side-bar col-12 col-md-3">

                   <section class="commerce-category-list">

                       <h2 class="commerce-category-list__title"><a
                               href="/store/category?pr_category=0&filter=${filter}">가구</a></h2>

                       <ul class="commerce-category-tree commerce-category-list__categories">

                           <li class="commerce-category-tree__entry">

                               <div class="commerce-category-tree__entry__header">

                                   <a onclick="getDOM(event);"
                                       class="commerce-category-tree__entry__title" data-num="1"
                                       href="/store/category?pr_category=1&filter=${filter}">침대</a>

                               </div>

                               <div class="" style="overflow: hidden;"></div>

                           </li>

                           <li class="commerce-category-tree__entry">

                               <div class="commerce-category-tree__entry__header">

                                   <a class="commerce-category-tree__entry__title" data-num="2"
                                       href="/store/category?pr_category=2&filter=${filter}">매트리스/토퍼</a>

                               </div>

                               <div class="" style="overflow: hidden;"></div>

                           </li>

                           <li class="commerce-category-tree__entry">

                               <div class="commerce-category-tree__entry__header">

                                   <a class="commerce-category-tree__entry__title" data-num="3"
                                       href="/store/category?pr_category=3&filter=${filter}">소파</a>

                               </div>

                               <div class="" style="overflow: hidden;"></div>

                           </li>

                           <li class="commerce-category-tree__entry">

                               <div class="commerce-category-tree__entry__header">

                                   <a class="commerce-category-tree__entry__title" data-num="4"
                                       href="/store/category?pr_category=4&filter=${filter}">테이블/책상</a>

                               </div>

                               <div class="" style="overflow: hidden;"></div>

                           </li>

                           <li class="commerce-category-tree__entry">

                               <div class="commerce-category-tree__entry__header">

                                   <a class="commerce-category-tree__entry__title" data-num="5"
                                       href="/store/category?pr_category=5&filter=${filter}">거실장/TV장</a>

                               </div>

                               <div class="" style="overflow: hidden;"></div>

                           </li>

                           <li class="commerce-category-tree__entry">

                               <div class="commerce-category-tree__entry__header">

                                   <a class="commerce-category-tree__entry__title" data-num="6"
                                       href="/store/category?pr_category=6&filter=${filter}">서랍/수납장</a>

                               </div>

                               <div class="" style="overflow: hidden;"></div>

                           </li>

                           <li class="commerce-category-tree__entry">

                               <div class="commerce-category-tree__entry__header">

                                   <a class="commerce-category-tree__entry__title" data-num="7"
                                       href="/store/category?pr_category=7&filter=${filter}">진열장/책장</a>

                               </div>

                               <div class="" style="overflow: hidden;"></div>

                           </li>

                           <li class="commerce-category-tree__entry">

                               <div class="commerce-category-tree__entry__header">

                                   <a class="commerce-category-tree__entry__title" data-num="8"
                                       href="/store/category?pr_category=8&filter=${filter}">선반</a>

                               </div>

                               <div class="" style="overflow: hidden;"></div>

                           </li>

                           <li class="commerce-category-tree__entry">

                               <div class="commerce-category-tree__entry__header">

                                   <a class="commerce-category-tree__entry__title" data-num="9"
                                       href="/store/category?pr_category=9&filter=${filter}">행거/옷장</a>

                               </div>

                               <div class="" style="overflow: hidden;"></div>

                           </li>

                           <li class="commerce-category-tree__entry">

                               <div class="commerce-category-tree__entry__header">

                                   <a class="commerce-category-tree__entry__title" data-num="10"
                                       href="/store/category?pr_category=10&filter=${filter}">의자</a>

                               </div>

                               <div class="" style="overflow: hidden;"></div>

                           </li>

                           <li class="commerce-category-tree__entry">

                               <div class="commerce-category-tree__entry__header">

                                   <a class="commerce-category-tree__entry__title" data-num="11"
                                       href="/store/category?pr_category=11&filter=${filter}">화장대/콘솔</a>

                               </div>

                               <div class="" style="overflow: hidden;"></div>

                           </li>

                           <li class="commerce-category-tree__entry">

                               <div class="commerce-category-tree__entry__header">

                                   <a class="commerce-category-tree__entry__title" data-num="12"
                                       href="/store/category?pr_category=12&filter=${filter}">거울</a>

                               </div>

                               <div class="" style="overflow: hidden;"></div>

                           </li>

                           <li class="commerce-category-tree__entry">

                               <div class="commerce-category-tree__entry__header">

                                   <a class="commerce-category-tree__entry__title" data-num="13"
                                       href="/store/category?pr_category=13&filter=${filter}">가벽/파티션</a>

                               </div>

                               <div class="" style="overflow: hidden;"></div>

                           </li>

                           <li class="commerce-category-tree__entry">

                               <div class="commerce-category-tree__entry__header">

                                   <a class="commerce-category-tree__entry__title" data-num="14"
                                       href="/store/category?pr_category=14&filter=${filter}">야외가구</a>

                               </div>

                               <div class="" style="overflow: hidden;"></div>

                           </li>

                           <li class="commerce-category-tree__entry">

                               <div class="commerce-category-tree__entry__header">

                                   <a class="commerce-category-tree__entry__title" data-num="15"
                                       href="/store/category?pr_category=15&filter=${filter}">유아동가구</a>

                               </div>

                               <div class="" style="overflow: hidden;"></div>

                           </li>

                       </ul>

                       <ul class="commerce-category-list__others">

                           <li class="commerce-category-list__others__item"><a
                                   href="/store/category?category=">겨울용품</a></li>

                           <li class="commerce-category-list__others__item"><a
                                   href="/store/category?category=">패브릭</a></li>

                           <li class="commerce-category-list__others__item"><a
                                   href="/store/category?category=">조명</a></li>

                           <li class="commerce-category-list__others__item"><a
                                   href="/store/category?category=">가전</a></li>

                           <li class="commerce-category-list__others__item"><a
                                   href="/store/category?category=">주방용품</a></li>

                           <li class="commerce-category-list__others__item"><a
                                   href="/store/category?category=">데코/취미</a></li>

                           <li class="commerce-category-list__others__item"><a
                                   href="/store/category?category=">수납/정리</a></li>

                           <li class="commerce-category-list__others__item"><a
                                   href="/store/category?category=">생활용품</a></li>

                           <li class="commerce-category-list__others__item"><a
                                   href="/store/category?category=">생필품</a></li>

                           <li class="commerce-category-list__others__item"><a
                                   href="/store/category?category=">공구/DIY</a></li>

                           <li class="commerce-category-list__others__item"><a
                                   href="/store/category?category=">인테리어시공</a></li>

                           <li class="commerce-category-list__others__item"><a
                                   href="/store/category?category=">반려동물</a></li>

                           <li class="commerce-category-list__others__item"><a
                                   href="/store/category?category=">캠핑용품</a></li>

                           <li class="commerce-category-list__others__item"><a
                                   href="/store/category?category=">실내운동</a></li>

                           <li class="commerce-category-list__others__item"><a
                                   href="/store/category?category=">유아/아동</a></li>

                           <li class="commerce-category-list__others__item"><a
                                   href="/store/category?category=">렌탈</a></li>

                       </ul>

                   </section>

               </div>

               ​

               <script type="text/javascript">







               </script>

               ​

               ​

               <!-- // 왼쪽 카테고리 목록 ------------------------------------------------------>

               ​

               <!-- 오른쪽 상품 목록 ----------------------------------------------------------->

               <div class="category-feed__content col-12 col-md-9">

                   <div class="commerce-category-header category-feed__content__header">

                       <div class="commerce-category-header__breadcrumb-wrap">

                           <nav
                               class="commerce-category-breadcrumb-wrap commerce-category-header__breadcrumb">

                               <ol class="commerce-category-breadcrumb">

                                   <li class="commerce-category-breadcrumb__entry">

                                       <a class="link" href="/store/category?category=0">가구</a>

                                       ​

                                   <c:choose>

                                        <c:when test="${product.pr_category eq '0'}">
                                			  </li>
                                 		 </c:when>

                                   <c:otherwise>

                                       <svg class="icon" width="8" height="8" viewBox="0 0 8 8"
                                           fill="currentColor" preserveAspectRatio="xMidYMid meet">
                                           <path
                                               d="M4.95 4L2.12 1.19l.7-.71 3.54 3.54-3.53 3.53-.7-.7z">
                                           </path>
                                       </svg>
                                       </li>
                                       
                                       <li class="commerce-category-breadcrumb__entry">
                                           <a class="link"
                                               href="/store/category?category=${product.pr_category}">${categoryN}</a>
                                       </li>

                                   </c:otherwise>

                                   </c:choose>

                               </ol>

                           </nav>

                       </div>

                       ​

                       <!-- 배너 -->

                       <div id="carouselExampleIndicators" class="carousel slide"
                           data-bs-ride="carousel">

                           <div class="carousel-indicators">

                               <button type="button" data-bs-target="#carouselExampleIndicators"
                                   data-bs-slide-to="0" class="active" aria-current="true"
                                   aria-label="Slide 1"></button>

                               <button type="button" data-bs-target="#carouselExampleIndicators"
                                   data-bs-slide-to="1" aria-label="Slide 2"></button>

                               <button type="button" data-bs-target="#carouselExampleIndicators"
                                   data-bs-slide-to="2" aria-label="Slide 3"></button>

                               <button type="button" data-bs-target="#carouselExampleIndicators"
                                   data-bs-slide-to="3" aria-label="Slide 4"></button>

                               <button type="button" data-bs-target="#carouselExampleIndicators"
                                   data-bs-slide-to="4" aria-label="Slide 5"></button>

                               <button type="button" data-bs-target="#carouselExampleIndicators"
                                   data-bs-slide-to="5" aria-label="Slide 6"></button>

                               <button type="button" data-bs-target="#carouselExampleIndicators"
                                   data-bs-slide-to="6" aria-label="Slide 7"></button>

                           </div>

                           <div class="carousel-inner">

                               <div class="carousel-item active">

                                   <img src="../resources/img/category/banner/everything.jpg"
                                       class="d-block w-100" alt="...">

                               </div>

                               <div class="carousel-item">

                                   <img src="../resources/img/category/banner/fastship.jpg"
                                       class="d-block w-100" alt="...">

                               </div>

                               <div class="carousel-item">

                                   <img src="../resources/img/category/banner/free_ship.jpg"
                                       class="d-block w-100" alt="...">

                               </div>

                               <div class="carousel-item">

                                   <img src="../resources/img/category/banner/hanger.jpg"
                                       class="d-block w-100" alt="...">

                               </div>

                               <div class="carousel-item">

                                   <img src="../resources/img/category/banner/marketb.jpg"
                                       class="d-block w-100" alt="...">

                               </div>

                               <div class="carousel-item">

                                   <img src="../resources/img/category/banner/oneday.jpg"
                                       class="d-block w-100" alt="...">

                               </div>

                               <div class="carousel-item">

                                   <img src="../resources/img/category/banner/refur.jpg"
                                       class="d-block w-100" alt="...">

                               </div>

                           </div>

                           <button class="carousel-control-prev" type="button"
                               data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">

                               <span class="carousel-control-prev-icon" aria-hidden="true"></span>

                               <span class="visually-hidden">Previous</span>

                           </button>

                           <button class="carousel-control-next" type="button"
                               data-bs-target="#carouselExampleIndicators" data-bs-slide="next">

                               <span class="carousel-control-next-icon" aria-hidden="true"></span>

                               <span class="visually-hidden">Next</span>

                           </button>

                       </div>

                       ​

                       <!-- // 배너 -->

                       ​

                       ​

                       ​

                       <!-- 전체 / 필터 -->

                       <div class="css-sa893y-SecondaryFilterWrapper e1dxjhw58">

                           <p class="css-ngpyyk-SecondaryFilterSummary e1dxjhw57">전체 ${count}개</p>

                           <div class="css-12qrzpe-SecondaryFilterRight e1dxjhw56">

                               <div class="css-11eonr5-SecondaryFilterItem e1dxjhw55">

                                   <div class="drop-down panel-drop-down">

                                       <button class="category-filter-bar-order-button" type="button">

                                           ${pager.filter_toJSP}<svg class="icon" width="8" height="8"
                                               viewBox="0 0 8 8" preserveAspectRatio="xMidYMid meet">
                                               <path fill="#BDBDBD" d="M0 2l4 4 4-4z"></path>
                                           </svg>

                                       </button>

                                   </div>

                                   ​

                                   ​

                               </div>

                               ​

                           </div>

                       </div>

                       <!-- //전체 / 필터 -->

                       ​

                       ​

                       <!-- 상품 목록 --------------------------------------------- -->

                       ​

                       <div class="category-feed__content__items">

                           <c:forEach var="product" items="${products}">

                               <div class="category-feed__content__item-wrap col-4 col-lg-4" style="">

                                   <article class="production-item" id="product-310649">

                                       <a class="production-item__overlay"
                                           href="./page?pr_number=${product.pr_number}"></a>

                                       <div class="production-item-image production-item__image">

                                           <img class="image" alt=""
                                               src="../resources/upload/store/${product.prFiles[0].fileName}"
                                               srcset="">

                                           ​

                                           <c:if test="${empty product.scrap_id}">

                                               <button onclick="scrapEvent(${product.pr_number});"
                                                   class="production-item-scrap-badge production-item-image__scrap-badge"
                                                   type="button"><svg
                                                       xmlns="http://www.w3.org/2000/svg" width="24"
                                                       height="24" viewBox="0 0 24 24"
                                                       class="inactive-icon">
                                                       <defs>
                                                           <path id="scrap-icon-353-b"
                                                               d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z">
                                                           </path>
                                                           <filter id="scrap-icon-353-a" width="150%"
                                                               height="150%" x="-25%" y="-25%"
                                                               filterUnits="objectBoundingBox">
                                                               <feOffset in="SourceAlpha"
                                                                   result="shadowOffsetOuter1">
                                                               </feOffset>
                                                               <feGaussianBlur in="shadowOffsetOuter1"
                                                                   result="shadowBlurOuter1"
                                                                   stdDeviation="1.5"></feGaussianBlur>
                                                               <feComposite in="shadowBlurOuter1"
                                                                   in2="SourceAlpha" operator="out"
                                                                   result="shadowBlurOuter1">
                                                               </feComposite>
                                                               <feColorMatrix in="shadowBlurOuter1"
                                                                   values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0">
                                                               </feColorMatrix>
                                                           </filter>
                                                           <filter id="scrap-icon-353-c" width="150%"
                                                               height="150%" x="-25%" y="-25%"
                                                               filterUnits="objectBoundingBox">
                                                               <feGaussianBlur in="SourceAlpha"
                                                                   result="shadowBlurInner1"
                                                                   stdDeviation="1.5"></feGaussianBlur>
                                                               <feOffset in="shadowBlurInner1"
                                                                   result="shadowOffsetInner1">
                                                               </feOffset>
                                                               <feComposite in="shadowOffsetInner1"
                                                                   in2="SourceAlpha" k2="-1" k3="1"
                                                                   operator="arithmetic"
                                                                   result="shadowInnerInner1">
                                                               </feComposite>
                                                               <feColorMatrix in="shadowInnerInner1"
                                                                   values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0">
                                                               </feColorMatrix>
                                                           </filter>
                                                       </defs>
                                                       <g fill="none" fill-rule="nonzero"
                                                           transform="matrix(1 0 0 -1 0 24)">
                                                           <use fill="#000"
                                                               filter="url(#scrap-icon-353-a)"
                                                               href="#scrap-icon-353-b"></use>
                                                           <use fill="#FFF" fill-opacity=".4"
                                                               href="#scrap-icon-353-b"></use>
                                                           <use fill="#000"
                                                               filter="url(#scrap-icon-353-c)"
                                                               href="#scrap-icon-353-b"></use>
                                                           <path stroke="#FFF"
                                                               d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z">
                                                           </path>
                                                       </g>
                                                   </svg><svg class="active-icon" width="24"
                                                       height="24" viewBox="0 0 24 24"
                                                       preserveAspectRatio="xMidYMid meet">
                                                       <path fill="#35C5F0" fill-rule="nonzero"
                                                           d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z">
                                                       </path>
                                                   </svg></button>

                                           </c:if>

                                           ​

                                           <c:if test="${not empty product.scrap_id}">

                                               <button
                                                   onclick="scrapDeleteEvent(${product.pr_number});"
                                                   class="production-item-scrap-badge production-item-scrap-badge--active production-item-image__scrap-badge"
                                                   type="button"><svg
                                                       xmlns="http://www.w3.org/2000/svg" width="24"
                                                       height="24" viewBox="0 0 24 24"
                                                       class="inactive-icon">
                                                       <defs>
                                                           <path id="scrap-icon-353-b"
                                                               d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z">
                                                           </path>
                                                           <filter id="scrap-icon-353-a" width="150%"
                                                               height="150%" x="-25%" y="-25%"
                                                               filterUnits="objectBoundingBox">
                                                               <feOffset in="SourceAlpha"
                                                                   result="shadowOffsetOuter1">
                                                               </feOffset>
                                                               <feGaussianBlur in="shadowOffsetOuter1"
                                                                   result="shadowBlurOuter1"
                                                                   stdDeviation="1.5"></feGaussianBlur>
                                                               <feComposite in="shadowBlurOuter1"
                                                                   in2="SourceAlpha" operator="out"
                                                                   result="shadowBlurOuter1">
                                                               </feComposite>
                                                               <feColorMatrix in="shadowBlurOuter1"
                                                                   values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0">
                                                               </feColorMatrix>
                                                           </filter>
                                                           <filter id="scrap-icon-353-c" width="150%"
                                                               height="150%" x="-25%" y="-25%"
                                                               filterUnits="objectBoundingBox">
                                                               <feGaussianBlur in="SourceAlpha"
                                                                   result="shadowBlurInner1"
                                                                   stdDeviation="1.5"></feGaussianBlur>
                                                               <feOffset in="shadowBlurInner1"
                                                                   result="shadowOffsetInner1">
                                                               </feOffset>
                                                               <feComposite in="shadowOffsetInner1"
                                                                   in2="SourceAlpha" k2="-1" k3="1"
                                                                   operator="arithmetic"
                                                                   result="shadowInnerInner1">
                                                               </feComposite>
                                                               <feColorMatrix in="shadowInnerInner1"
                                                                   values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0">
                                                               </feColorMatrix>
                                                           </filter>
                                                       </defs>
                                                       <g fill="none" fill-rule="nonzero"
                                                           transform="matrix(1 0 0 -1 0 24)">
                                                           <use fill="#000"
                                                               filter="url(#scrap-icon-353-a)"
                                                               href="#scrap-icon-353-b"></use>
                                                           <use fill="#FFF" fill-opacity=".4"
                                                               href="#scrap-icon-353-b"></use>
                                                           <use fill="#000"
                                                               filter="url(#scrap-icon-353-c)"
                                                               href="#scrap-icon-353-b"></use>
                                                           <path stroke="#FFF"
                                                               d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z">
                                                           </path>
                                                       </g>
                                                   </svg><svg class="active-icon" width="24"
                                                       height="24" viewBox="0 0 24 24"
                                                       preserveAspectRatio="xMidYMid meet">
                                                       <path fill="#35C5F0" fill-rule="nonzero"
                                                           d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z">
                                                       </path>
                                                   </svg></button>

                                           </c:if>

                                           ​

                                           <div class="production-item-image__dark-overlay"></div>

                                       </div>

                                       <div class="production-item__content">

                                           <h1 class="production-item__header">

                                               <span
                                                   class="production-item__header__brand">${product.pr_seller}</span>

                                               <span
                                                   class="production-item__header__name">${product.pr_name}</span>

                                           </h1>

                                           <span class="production-item-price">

                                               <span
                                                   class="production-item-price__rate">${product.pr_discount}<span
                                                       class="percentage">% </span>

                                               </span>

                                               <span class="production-item-price__price">

                                                   <!-- 3자리마다 콤마(,) 찍기 -->

                                                   <!-- 장바구니에 가격 넘길 땐 hidden 처리한 input의 value값을 이용하면 됨 -->

                                                   <fmt:formatNumber type="number"
                                                       maxFractionDigits="3"
                                                       value="${product.pr_dPrice}" />

                                                   <input type="number" value="${product.pr_dPrice}"
                                                       id="pr_dPrice"
                                                       data-description="장바구니_넘길땐_이_값을_사용"
                                                       hidden="hidden" />

                                               </span></span>

                                           ​

                                           <!-- **** 평점이랑 리뷰 사용하게 되면 주석 해제 ****

<p class="production-item-stats production-item-stats--review">

<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">

<path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z">

</path></svg>

<strong class="avg">4.5</strong> 리뷰 3,856</p>

-->

                                           ​

                                           <span class="production-item-badge-list">

                                               <svg class="icon" aria-label="특가" width="30" height="20"
                                                   viewBox="0 0 30 20"
                                                   preserveAspectRatio="xMidYMid meet">

                                                   <rect width="30" height="20" fill="#F77" rx="4">
                                                   </rect>

                                                   <path fill="#fff"
                                                       d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z">

                                                   </path>
                                               </svg></span>
                                       </div>
                                   </article>
                               </div>

                           </c:forEach>

                       </div>

                       ​

                       ​

                       <!-- 정렬 방식 -->

                       <div class="modal_wrap">

                           <div class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-22"
                               data-popout="true" style="display:none;">
                               <div
                                   class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
                                   <div class="drop-down-panel" data-panel-title="정렬"
                                       data-panel-parents="">
                                       
                                       <ul class="property-filter-panel-entry-list wide">
                                       
                                           <li class="property-filter-panel-entry-list__item-wrap">
                                               <button class="property-filter-panel-entry-list__item"
                                                   type="button">
                                                   <div class="property-filter-panel-entry-list__item__header">
                                                       <div class="property-filter-panel-entry-list__item__group">
                                                           <div class="_2xClz input-type">
                                                               <input type="radio" class="fs-4H" value="sales" name="filter" data-co="판매순"/>
                                                               <span class="_2ekY2"></span>
                                                           </div>

                                                           <span
                                                               class="property-filter-panel-entry-list__item__title">판매순</span>

                                                       </div>
                                                   </div>
                                               </button>
                                           </li>

                                           <li class="property-filter-panel-entry-list__item-wrap">
                                               <button
                                                   class="property-filter-panel-entry-list__item selected"
                                                   type="button">
                                                   <div
                                                       class="property-filter-panel-entry-list__item__header">
                                                       <div
                                                           class="property-filter-panel-entry-list__item__group">
                                                           <div class="_2xClz input-type">
                                                               <input type="radio" class="fs-4H"
                                                                   value="newest" name="filter"
                                                                   data-co="최신순" /><span
                                                                   class="_2ekY2"></span>
                                                           </div>
                                                           <span
                                                               class="property-filter-panel-entry-list__item__title">최신순</span>
                                                       </div>
                                                   </div>
                                               </button>
                                           </li>

                                           <li class="property-filter-panel-entry-list__item-wrap">
                                               <button class="property-filter-panel-entry-list__item" type="button">
                                                   <div
                                                       class="property-filter-panel-entry-list__item__header">
                                                       <div
                                                           class="property-filter-panel-entry-list__item__group">
                                                           <div class="_2xClz input-type">
                                                               <input type="radio" class="fs-4H"
                                                                   value="lowPrice" name="filter"
                                                                   data-co="낮은가격순" /><span
                                                                   class="_2ekY2"></span>
                                                           </div>
                                                           <span class="property-filter-panel-entry-list__item__title">낮은가격순</span>
                                                       </div>
                                                   </div>
                                               </button>
                                           </li>

                                           <li class="property-filter-panel-entry-list__item-wrap">
                                               <button class="property-filter-panel-entry-list__item" type="button">
                                                   <div class="property-filter-panel-entry-list__item__header">
                                                       <div class="property-filter-panel-entry-list__item__group">
                                                           <div class="_2xClz input-type">
                                                               <input type="radio" class="fs-4H"
                                                                   value="highPrice"
                                                                   data-co="높은가격순" /><span
                                                                   class="_2ekY2"></span>
                                                           </div>
                                                           <span class="property-filter-panel-entry-list__item__title">높은가격순</span>
                                                       </div>
                                                   </div>
                                               </button>
                                           </li>

                                           <li class="property-filter-panel-entry-list__item-wrap">
                                               <button
                                                   class="property-filter-panel-entry-list__item selected"
                                                   type="button">
                                                   <div
                                                       class="property-filter-panel-entry-list__item__header">
                                                       <div
                                                           class="property-filter-panel-entry-list__item__group">
                                                           <div class="_2xClz input-type">
                                                               <input type="radio" class="fs-4H"
                                                                   value="scrap" data-co="인기순" /><span
                                                                   class="_2ekY2"></span>
                                                           </div>
                                                           <span
                                                               class="property-filter-panel-entry-list__item__title">인기순</span>
                                                       </div>
                                                   </div>
                                               </button>
                                           </li>
                                       </ul>
                                   </div>
                               </div>
                           </div>
                       </div>

                       <!-- //정렬 방식 -->

                       <div class="black_bg"></div>

                       <script type="text/javascript">

                           //server에서 보낸 login ID
                           var loginId = '${loginId}';

                           //스크랩 추가 클릭이벤트
                           function scrapEvent(pr_number) {

                               $.ajax({
                            	   
                                   url: '/store/category/scrapUp',
                                   type: 'post',
                                   data: {
                                       'pr_number': pr_number,
                                       'scrap_id': loginId
                                   },
                                   success: function (data) {
                                       if (data == 1) {
                                           location.reload();
                                       }
                                   },

                                   error: function () {
                                       if (loginId == null || loginId == '') {
                                           alert('로그인을 해주세요.');
                                       } else {
                                           alert('스크랩 실패');
                                       }
                                   }
                               });
                           }



                           //스크랩 삭제 클릭이벤트
                           function scrapDeleteEvent(pr_number) {
                               
                        	   $.ajax({
                                   url: '/store/category/scrapDown',
                                   type: 'post',
                                   data: {
                                       'pr_number': pr_number,
                                       'scrap_id': loginId
                                   },

                                   success: function (data) {
                                       if (data == 1) {
                                           location.reload();
                                       }
                                   },

                                   error: function () {
                                       if (loginId == null || loginId == '') {
                                           alert('로그인을 해주세요.');
                                       } else {
                                           alert('스크랩취소 실패');
                                       }
                                   }

                               });

                           }



                           //Server에서 넘어온 category number
                           var cNum = null;

                           //요청 파라미터의 value 가져오기 (url에서 가져옴)
                           jQuery(function ($) {
                        	   
                               $.fn.getUrlParameter = function (sParam) {
                            	   
                                   var sPageURL = decodeURIComponent(window.location.search.substring(1)),

                                       sURLVariables = sPageURL.split('&'),

                                       sParameterName,

                                       i;

                                   for (i = 0; i < sURLVariables.length; i++) {

                                       sParameterName = sURLVariables[i].split('=');

                                       if (sParameterName[0] === sParam) {

                                           return sParameterName[1] === undefined ? true : sParameterName[1];

                                       }
                                   }
                               }



                               cNum = $.fn.getUrlParameter('pr_category');

                               console.log('category Num은 이거야 : ' + cNum);

                               var aArr = $('.commerce-category-tree__entry__title');

                               $.each(aArr, function (index, item) {

                                   var data_num = $(item).attr('data-num');

                                   if(data_num == cNum){
                                       //클래스명에 selected가 포함된 a tag는 글자가 파란색으로 바뀜(highlighting효과)
                                       $(item).attr('class', 'commerce-category-tree__entry__title selected');
                                    } else if (typeof cNum == 'undefined'){
                                       $(item).attr('class', 'commerce-category-tree__entry__title');
                                    }
                               })
                           });





                           /* 클릭이벤트시 해당 이벤트 발생 요소 정보 가져오기
                           
                           function getDOM(event){
                           
                           var thisEle = event.target;
                           
                           alert($(thisEle).attr('data-num'));
                           
                           }
                           
                           */


                           //Server에서 넘어오는 filter 한글명

                           var filterName = '${pager.filter_toJSP}';


                           // 페이지 시작 시 Server에서 받은 filter명과 같은 data-co속성을 가진 input(radio)을 check

                           $(document).ready(function () {

                               var radioInputs = $('.drop-down-panel ul li input');

                               $.each(radioInputs, function (index, item) {

                                   var itemName = $(item).attr('data-co');

                                   if (itemName == filterName) {

                                       $(item).attr('checked', '');

                                   }

                               })

                           })



                           //filter toggle

                           $('.category-filter-bar-order-button').click(function () {

                               $('.popout--cross-dir-22').toggle('slow');

                           });

                           //input[radio] click 시 해당 정렬 조건으로 페이지 reload

                           $('.drop-down-panel ul li button').click(function () {

                               var filterName = $(this).find('input').val();
                               
                               if(typeof cNum == 'undefined'){
                                   location.href='/store/category?filter='+filterName+'&pr_category=0';
                                } else {
                                   location.href='/store/category?filter='+filterName+'&pr_category='+cNum;         
                                }

                           });



                       </script>

                       ​

                       <!-- Option 1: Bootstrap Bundle with Popper -->

                       <script
                           src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                           integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                           crossorigin="anonymous"></script>

                       ​

 </body>

 </html>