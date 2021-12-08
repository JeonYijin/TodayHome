<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집들이 글목록</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&amp;display=swap&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/preamble-97ede701.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/5-1fc4abe5.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/7-122a7274.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/14-70cf3ee0.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/templates-Content-Project-Feed-cfb268e4.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/21-0e75de9b.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/23-2ef16b9a.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/App-6e6c2f0c.chunk.css">
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
<link rel="stylesheet" type="text/css" href="https://assets.ohou.se/web/dist/css/templates-Home-HomePage-f3a55bf4.chunk.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>
		ul.nav li.dropdown:hover > ul.dropdown-menu { display:block; margin:0; }
</style>
</head>
<body>
<div class="dropdown">
	<div class="container">
        <div class="project-feed">
            <div class="project-feed__filter">
                <div class="filter project-index__filter">
                    <div class="filter-bar">
                        <div class="filter-bar__control-list" style="padding:5px 5px 85px 5px;">
                            <ul class="filter-bar__control-list__left">
                                <li class="filter-bar__control-list__item filter-bar__control-list__item--icon"><button
                                        class="filter-bar__control-list__icon" type="button" title="필터 전체"><svg
                                            class="icon" width="24" height="24" viewBox="0 0 24 24"
                                            preserveAspectRatio="xMidYMid meet">
                                            <path fill="#BDBDBD"
                                                d="M18.284 4H5.716a.7.7 0 0 0-.61.362.668.668 0 0 0 0 .724l3.963 6.978c.353.632.97 1.348.971 2.076v6.181c.002.24-.054.388.149.558.203.17.343.118.444.095l3.29-1.257c.283-.095.321-.369.317-.676v-4.9c0-.73.338-1.445.69-2.077l3.963-6.978a.668.668 0 0 0 0-.724.7.7 0 0 0-.61-.362z">
                                            </path>
                                        </svg></button></li>
                                <li class="filter-bar__control-list__item" style="line-height: 10px;">
                                    <div class="drop-down panel-drop-down filter-bar-control dropdown">
                                    	<a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false" style="background-color:#ced4da; color:#343a40; ">
									   	정렬
									  </a>
									
									  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink" style="">
									    <li><a class="dropdown-item" href="#">최신순</a></li>
									    <li><a class="dropdown-item" href="#">최근 인기순</a></li>
									    <li><a class="dropdown-item" href="#">역대 인기순</a></li>
									    <li><a class="dropdown-item" href="#">과거순</a></li>
									  </ul>
                                    </div>
                                    
                                            
                                </li>
                                <li class="filter-bar__control-list__item">
                                    <div class="drop-down panel-drop-down filter-bar-control"><button
                                            class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button">주거형태<svg
                                                class="icon" width="12" height="12" viewBox="0 0 12 12"
                                                fill="currentColor" preserveAspectRatio="xMidYMid meet">
                                                <path
                                                    d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z">
                                                </path>
                                            </svg></button></div>
                                </li>
                                <li class="filter-bar__control-list__item">
                                    <div class="drop-down panel-drop-down filter-bar-control"><button
                                            class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button">평수<svg
                                                class="icon" width="12" height="12" viewBox="0 0 12 12"
                                                fill="currentColor" preserveAspectRatio="xMidYMid meet">
                                                <path
                                                    d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z">
                                                </path>
                                            </svg></button></div>
                                </li>
                                <li class="filter-bar__control-list__item filter-bar__control-list__item--hide-mobile">
                                    <div class="drop-down panel-drop-down filter-bar-control"><button
                                            class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button">예산<svg
                                                class="icon" width="12" height="12" viewBox="0 0 12 12"
                                                fill="currentColor" preserveAspectRatio="xMidYMid meet">
                                                <path
                                                    d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z">
                                                </path>
                                            </svg></button></div>
                                </li>
                                <li class="filter-bar__control-list__item filter-bar__control-list__item--hide-mobile">
                                    <div class="drop-down panel-drop-down filter-bar-control"><button
                                            class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button">가족형태<svg
                                                class="icon" width="12" height="12" viewBox="0 0 12 12"
                                                fill="currentColor" preserveAspectRatio="xMidYMid meet">
                                                <path
                                                    d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z">
                                                </path>
                                            </svg></button></div>
                                </li>
                                <li class="filter-bar__control-list__item filter-bar__control-list__item--hide-mobile">
                                    <div class="drop-down panel-drop-down filter-bar-control"><button
                                            class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button">스타일<svg
                                                class="icon" width="12" height="12" viewBox="0 0 12 12"
                                                fill="currentColor" preserveAspectRatio="xMidYMid meet">
                                                <path
                                                    d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z">
                                                </path>
                                            </svg></button></div>
                                </li>
                                <li class="filter-bar__control-list__item filter-bar__control-list__item--hide-mobile">
                                    <div class="drop-down panel-drop-down filter-bar-control"><button
                                            class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button">분야<svg
                                                class="icon" width="12" height="12" viewBox="0 0 12 12"
                                                fill="currentColor" preserveAspectRatio="xMidYMid meet">
                                                <path
                                                    d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z">
                                                </path>
                                            </svg></button></div>
                                </li>
                                <li class="filter-bar__control-list__item filter-bar__control-list__item--hide-mobile">
                                    <div class="drop-down panel-drop-down filter-bar-control"><button
                                            class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button">작업자<svg
                                                class="icon" width="12" height="12" viewBox="0 0 12 12"
                                                fill="currentColor" preserveAspectRatio="xMidYMid meet">
                                                <path
                                                    d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z">
                                                </path>
                                            </svg></button></div>
                                </li>
                                <li
                                    class="filter-bar__control-list__item filter-bar__control-list__item--more filter-bar__control-list__item--more-mobile">
                                    <div class="drop-down panel-drop-down filter-bar-control"><button
                                            class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button filter-bar-control__button--more">더보기..</button>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <ul class="filter-bar__tag-list"></ul>
                    </div>
                </div>
            </div>
            <div class="project-feed__count">전체 ${countBoard}</div>
            <div class="virtualized-list row"
                style="padding-top: 0px; padding-bottom: 0px; transform: translateY(0px);">
                <c:forEach items="${list}" var="board">
                <div class="col-12 col-md-4">
                    <article class="project-feed__item"><a class="project-feed__item__link"
                            href="/projects/68593/detail?affect_type=ProjectSelfIndex&amp;affect_id=0"></a>
                        <div class="project-feed__item__image"><img class="image" alt=""
                                src="../resources/upload/housewarming/${board.house_thumbnail}"
                                srcset=""><span
                                class="project-feed__item__image__new" aria-label="NEW"><svg class="icon" width="36"
                                    height="20" viewBox="0 0 36 20" preserveAspectRatio="xMidYMid meet">
                                    <g fill="none" fill-rule="evenodd">
                                        <rect width="36" height="20" fill="#FDBD39" rx="4"></rect>
                                        <path fill="#FFF" fill-rule="nonzero"
                                            d="M6 14V6h1.668l3.446 5.644h.036V6h1.318v8h-1.475L7.354 7.97h-.036V14H6zm8.414 0V6h5.174v1.131h-3.687v2.193h2.865v1.12h-2.865v2.425h3.76V14h-5.247zm8.317 0l-2.067-8h1.511l1.414 5.924h.037L25.318 6h1.21l1.667 5.924h.037L29.658 6H31l-2.03 8h-1.476l-1.62-5.808h-.036L24.194 14H22.73z">
                                        </path>
                                    </g>
                                </svg></span><button class="project-feed__item__image__scrap" type="button"
                                aria-label="스크랩"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                    viewBox="0 0 24 24" class="icon">
                                    <defs>
                                        <path id="scrap-icon-221-b"
                                            d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z">
                                        </path>
                                        <filter id="scrap-icon-221-a" width="150%" height="150%" x="-25%" y="-25%"
                                            filterUnits="objectBoundingBox">
                                            <feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
                                            <feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1"
                                                stdDeviation="1.5"></feGaussianBlur>
                                            <feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out"
                                                result="shadowBlurOuter1"></feComposite>
                                            <feColorMatrix in="shadowBlurOuter1"
                                                values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix>
                                        </filter>
                                        <filter id="scrap-icon-221-c" width="150%" height="150%" x="-25%" y="-25%"
                                            filterUnits="objectBoundingBox">
                                            <feGaussianBlur in="SourceAlpha" result="shadowBlurInner1"
                                                stdDeviation="1.5"></feGaussianBlur>
                                            <feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset>
                                            <feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1"
                                                operator="arithmetic" result="shadowInnerInner1"></feComposite>
                                            <feColorMatrix in="shadowInnerInner1"
                                                values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix>
                                        </filter>
                                    </defs>
                                    <g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)">
                                        <use fill="#000" filter="url(#scrap-icon-221-a)" href="#scrap-icon-221-b"></use>
                                        <use fill="#FFF" fill-opacity=".4" href="#scrap-icon-221-b"></use>
                                        <use fill="#000" filter="url(#scrap-icon-221-c)" href="#scrap-icon-221-b"></use>
                                        <path stroke="#FFF"
                                            d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z">
                                        </path>
                                    </g>
                                </svg></button></div>
                        <h1 class="project-feed__item__title">${board.house_title}</h1>
                        <address class="project-feed__item__writer-wrap"><a class="project-feed__item__writer"
                                href="/users/3218737?affect_type=ProjectSelfIndex&amp;affect_id=0"><img
                                    class="project-feed__item__writer__image" alt=""
                                    src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162972159885446809.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c"
                                    srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162972159885446809.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162972159885446809.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162972159885446809.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x"><span
                                    class="project-feed__item__writer__name">${board.house_writer}</span></a></address>
                        <footer class="project-feed__item__status"><span class="entry">스크랩 ${board.house_scrap}&nbsp;</span><span
                                class="entry">조회 ${board.house_hits}</span></footer>
                    </article>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
<script type="text/javascript" src="../resources/js/housewarming/house_list.js"></script>  
</body>
</html>