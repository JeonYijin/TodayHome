<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="../import_house/detail_css.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집들이 detail</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&amp;display=swap&amp;subset=korean" rel="stylesheet">
</head>
<body>
	<main class="content-detail">
        <div class="content-detail-cover-image">
            <div class="content-detail-cover-image__sizer">
                <div class="content-detail-cover-image__inner-sizer"></div>
            </div>
            <div class="content-detail-cover-image__image"
                style="background-image: url(http://127.0.0.1:8080/resources/upload/housewarming/${houseVO.house_thumbnail}); background-size: cover; background-repeat: no-repeat; background-position: center 36.2828%;">
            </div><button class="content-detail-cover-image__app-button" type="button">
                <div class="content-detail-cover-image__app-button-box">더 편하게 앱으로 보기<svg class="icon" width="1em"
                        height="1em" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                        <path fill="currentColor" fill-rule="nonzero"
                            d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z"></path>
                    </svg></div>
            </button>
        </div>
        <div class="content-detail-content-section">
            <div class="content-detail-content-section__content">
                <header class="content-detail-header">
                    <div class="content-detail-header__top">
                        <p class="content-detail-header__category" style="color:red;">집들이 심사 페이지</p>
                    </div>
                    <h1 class="content-detail-header__title">${houseVO.house_title}</h1>
                    <div class="content-detail-header__bottom"><a class="content-detail-header__author"
                            href="/users/5048246">
                            <div class="content-detail-header__author-image"><img class="image" alt=""
                                    src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1514252843_Ehvl0eCs.jpeg?gif=1&w=72&h=72&c=c"
                                    srcset="">
                            </div>
                            <div class="content-detail-header__author-name">${houseVO.house_writer}</div>
                            <div class="content-detail-header__author-date">${houseVO.regDate}</div>
                        </a>
                        <div class="content-detail-header__user-actions">
                        	<button class="_3Z6oR _3AsCW _1BDvx content-detail-header__follow bold">심사 완료</button>
                        </div>
                    </div>
                </header>
                <section class="project-detail-metadata">
                    <dl class="project-detail-metadata-overview">
                        <div class="project-detail-metadata-overview-item">
                            <dt class="project-detail-metadata-overview-item__icon"><svg class="icon" aria-label="공간"
                                    width="38" height="38" viewbox="0 0 38 38" preserveAspectRatio="xMidYMid meet">
                                    <g fill="none" fill-rule="evenodd">
                                        <path d="M0 0h38v38H0z"></path>
                                        <rect width="19.53" height="23.75" x="3.43" y="7.13" fill="#FFF"
                                            stroke="#525B61" rx="2.38"></rect>
                                        <rect width="3.17" height="3.17" x="8.18" y="17.42" stroke="#525B61" rx="1.27">
                                        </rect>
                                        <rect width="3.17" height="3.17" x="8.18" y="11.08" stroke="#525B61" rx="1.27">
                                        </rect>
                                        <rect width="3.17" height="3.17" x="8.18" y="23.75" stroke="#525B61" rx="1.27">
                                        </rect>
                                        <rect width="3.17" height="3.17" x="15.31" y="17.42" stroke="#525B61" rx="1.27">
                                        </rect>
                                        <rect width="3.17" height="3.17" x="15.31" y="11.08" stroke="#525B61" rx="1.27">
                                        </rect>
                                        <rect width="3.17" height="3.17" x="15.31" y="23.75" stroke="#525B61" rx="1.27">
                                        </rect>
                                        <rect width="8.44" height="8.44" x="26.39" y="19" fill="#EAEBEF"
                                            stroke="#525B61" rx="4.22"></rect>
                                        <rect width="1.58" height="4.22" x="29.56" y="27" fill="#525B61" rx=".79">
                                        </rect>
                                    </g>
                                </svg></dt>
                            <dd class="project-detail-metadata-overview-item__text">${houseVO.house_kind}</dd>
                        </div>
                        <div class="project-detail-metadata-overview-item">
                            <dt class="project-detail-metadata-overview-item__icon"><svg class="icon" aria-label="평수"
                                    width="38" height="38" viewbox="0 0 38 38" preserveAspectRatio="xMidYMid meet">
                                    <g fill="none" fill-rule="evenodd">
                                        <path d="M0 0h38v38H0z"></path>
                                        <rect width="26.92" height="23.75" x="5.54" y="7.13" fill="#FFF"
                                            stroke="#525B61" rx="2.38"></rect>
                                        <path fill="#EAEBEF" fill-rule="nonzero"
                                            d="M8 7.5h8v23H8a2 2 0 01-2-2v-19c0-1.1.9-2 2-2z"></path>
                                        <rect width="8.44" height="1" x="5.28" y="20" fill="#525B61" rx=".5"></rect>
                                        <rect width="10.56" height="1" x="22.17" y="13.72" fill="#525B61" rx=".5">
                                        </rect>
                                        <rect width="1" height="5.28" x="9.5" y="15.5" fill="#525B61" rx=".5"></rect>
                                        <rect width="1" height="5.28" x="25.33" y="14" fill="#525B61" rx=".5"></rect>
                                        <rect width="1" height="7.39" x="25.33" y="24" fill="#525B61" rx=".5"></rect>
                                        <rect width="1" height="24" x="15.83" y="7" fill="#525B61" rx=".5"></rect>
                                    </g>
                                </svg></dt>
                            <dd class="project-detail-metadata-overview-item__text">${houseVO.house_space}</dd>
                        </div>
                        <div class="project-detail-metadata-overview-item">
                            <dt class="project-detail-metadata-overview-item__icon"><svg class="icon" aria-label="분야"
                                    height="38" width="38" viewbox="0 0 38 38" preserveAspectRatio="xMidYMid meet">
                                    <g fill-rule="evenodd" fill="none">
                                        <path d="M0 0h38v38H0z"></path>
                                        <g transform="translate(4.75 4.75)">
                                            <path
                                                d="M15.05 13.2c0 .67-.42 1.3-1.07 1.58l-2.07 1.05a3.2 3.2 0 00-1.85 3.87l.85 3.7c.14.44.16.92.06 1.37v.02a2.93 2.93 0 01-2.88 2.2H7.8a2.93 2.93 0 01-2.88-2.2c-.1-.46-.08-.94.06-1.4l1-3.69a3.2 3.2 0 00-1.84-3.87l-2.23-1.05a1.75 1.75 0 01-1.07-1.59v-.4h14.2v.4zM1.2 0C.55 0 0 .54 0 1.2v12.14c0 1.22.7 2.11 1.8 2.62l2.2 1c.75.36 1.16 1.44.92 2.24l-1.07 3.56a4.13 4.13 0 003.97 5.32h.26a4.17 4.17 0 004.05-3.25v-.02c.15-.68.12-1.4-.08-2.06l-1.07-3.55c-.24-.8.06-1.82.82-2.17l2.2-1.01c1.1-.5 1.9-1.47 1.9-2.68V1.2c0-.66-.54-1.2-1.2-1.2H1.2zm6.75 25.11a.92.92 0 100-1.84.92.92 0 000 1.84z"
                                                fill-rule="nonzero" fill="#525B61"></path>
                                            <path
                                                d="M15.05 13.2c0 .67-.42 1.3-1.07 1.58l-2.07 1.05a3.2 3.2 0 00-1.85 3.87l.85 3.7c.14.44.16.92.06 1.37v.02a2.93 2.93 0 01-2.88 2.2H7.8a2.93 2.93 0 01-2.88-2.2c-.1-.46-.08-.94.06-1.4l1-3.69a3.2 3.2 0 00-1.84-3.87l-2.23-1.05a1.75 1.75 0 01-1.07-1.59v-.4h14.2v.4z"
                                                fill="#FFF"></path>
                                            <path d="M.95 11.95h14v-11h-14z" fill="#EAEBEF"></path>
                                            <rect rx=".5" fill="#525B61" y="11.95" height="1" width="15.6"></rect>
                                        </g>
                                        <path transform="rotate(-36 23.82 -17.86)"
                                            d="M12.6 6.77a.63.63 0 01-.38.38c-.52.17-.95.48-1.27.91l-3.43 4.66-.62-.45-.27-.18 3.44-4.66c.31-.43.48-.93.49-1.46 0-.2.1-.37.25-.49l1.95-1.46.65.47-.8 2.28zm-3.8 8.21l-.68.93-1.2.43c-.83.29-1.46.97-1.7 1.81l-.53 1.98a4.5 4.5 0 01-.71 1.48l-2.03 2.78a2.84 2.84 0 01-3.98.63 2.82 2.82 0 01-.63-3.97l2.02-2.78c.33-.45.73-.83 1.2-1.13L2.26 16a2.66 2.66 0 001.2-2.16l.04-1.28.67-.93 4.61 3.34zm4.15-12a.6.6 0 00-.72.01l-2.18 1.65c-.44.34-.7.86-.7 1.41 0 .25-.09.49-.23.69l-3.4 4.68-1.02-.74a1 1 0 00-1.4.23l-.82 1.12a1 1 0 00-.19.56l-.03 1.3c-.01.46-.25.87-.62 1.12L-.03 16.1c-.57.37-1.07.84-1.47 1.4l-1.96 2.7a3.94 3.94 0 00.88 5.54 3.95 3.95 0 002.96.71 3.96 3.96 0 002.6-1.59l1.97-2.7c.4-.55.7-1.17.87-1.82l.52-1.92c.12-.44.45-.79.87-.94l1.24-.43c.2-.07.36-.2.48-.36l.81-1.12a1 1 0 00-.22-1.4l-1.02-.73 3.4-4.68c.15-.2.35-.35.59-.43.53-.18.94-.58 1.12-1.11l.9-2.58a.6.6 0 00-.21-.69l-1.35-.97z"
                                            fill-rule="nonzero" fill="#525B61"></path>
                                        <path transform="rotate(-36 24.06 -25.79)"
                                            d="M7.99 5.16a.62.62 0 01-.4.38c-.5.17-.94.48-1.26.91L2.9 11.11l-.62-.45-.27-.18 3.44-4.66c.31-.43.48-.93.49-1.46 0-.2.1-.37.25-.49l1.95-1.46.65.47L8 5.16z"
                                            fill="#FFF"></path>
                                        <path transform="rotate(-36 24.2 -13.34)"
                                            d="M11.55 15.59l-.67.93-1.21.42c-.83.3-1.46.97-1.69 1.82l-.54 1.98a4.52 4.52 0 01-.7 1.47L4.7 25a2.84 2.84 0 01-3.98.63 2.83 2.83 0 01-.63-3.97l2.02-2.79c.33-.44.73-.82 1.19-1.13l1.72-1.12a2.66 2.66 0 001.2-2.16l.03-1.28.68-.93 4.61 3.34z"
                                            fill="#FFF"></path>
                                    </g>
                                </svg></dt>
                            <dd class="project-detail-metadata-overview-item__text">${houseVO.working_area}</dd>
                        </div>
                        <div class="project-detail-metadata-overview-item">
                            <dt class="project-detail-metadata-overview-item__icon"><svg class="icon" aria-label="가족형태"
                                    width="39" height="38" viewbox="0 0 39 38" preserveAspectRatio="xMidYMid meet">
                                    <g fill="none" fill-rule="evenodd">
                                        <path d="M1 0h38v38H1z"></path>
                                        <path fill="#EAEBEF"
                                            d="M1.409 30.382l.489-3.553 1.063-2.294 1.154-1.749.898-1.073 1.136-.704.747-.659 1.015.412 1.562.951h2.982l1.422-.951.762-.412 1.12 1.064 1.563 1.372 1.201 1.507.814 1.974.595 2.432.257 2.207v-.524z">
                                        </path>
                                        <path fill="#525B61" fill-rule="nonzero" stroke="#525B61" stroke-width=".1"
                                            d="M15.322 20.596a7.108 7.108 0 002.577-5.477c0-3.926-3.194-7.119-7.12-7.119-3.925 0-7.119 3.193-7.119 7.119 0 2.2 1.004 4.17 2.577 5.476C3.034 22.301 1 25.818 1 29.75a.468.468 0 10.937 0c0-3.761 2.032-7.092 5.18-8.537a7.072 7.072 0 003.662 1.026 7.066 7.066 0 003.656-1.022c3.153 1.446 5.187 4.762 5.187 8.533a.468.468 0 10.937 0c0-3.942-2.032-7.448-5.237-9.154zm-4.543.705a6.188 6.188 0 01-6.181-6.182 6.188 6.188 0 016.181-6.182 6.189 6.189 0 016.183 6.182 6.19 6.19 0 01-6.183 6.182z">
                                        </path>
                                        <path fill="#FFF"
                                            d="M10.78 21.301a6.188 6.188 0 01-6.182-6.182 6.188 6.188 0 016.181-6.182 6.189 6.189 0 016.183 6.182 6.19 6.19 0 01-6.183 6.182z">
                                        </path>
                                        <path fill="#EAEBEF"
                                            d="M19.2 30.382l.489-3.553 1.062-2.294 1.155-1.749.898-1.073 1.136-.704.746-.659 1.016.412 1.562.951h2.982l1.422-.951.762-.412 1.12 1.064 1.563 1.372 1.201 1.507.813 1.974.596 2.432.257 2.207v-.524z">
                                        </path>
                                        <path fill="#525B61" fill-rule="nonzero" stroke="#525B61" stroke-width=".1"
                                            d="M33.522 20.596a7.108 7.108 0 002.577-5.477c0-3.926-3.194-7.119-7.12-7.119-3.925 0-7.119 3.193-7.119 7.119 0 2.2 1.004 4.17 2.576 5.476-3.202 1.706-5.236 5.223-5.236 9.155a.468.468 0 10.937 0c0-3.761 2.032-7.092 5.18-8.537a7.069 7.069 0 003.662 1.026 7.071 7.071 0 003.656-1.022c3.153 1.446 5.187 4.762 5.187 8.533a.468.468 0 10.937 0c0-3.942-2.032-7.448-5.237-9.154zm-4.543.705a6.188 6.188 0 01-6.181-6.182 6.188 6.188 0 016.181-6.182 6.188 6.188 0 016.182 6.182 6.19 6.19 0 01-6.182 6.182z">
                                        </path>
                                        <path fill="#FFF"
                                            d="M28.98 21.301a6.188 6.188 0 01-6.182-6.182 6.188 6.188 0 016.181-6.182 6.188 6.188 0 016.182 6.182 6.19 6.19 0 01-6.182 6.182z">
                                        </path>
                                        <path fill="#525B61" fill-rule="nonzero"
                                            d="M10.731 18.495c1.136 0 2.213-.498 2.766-1.329.204-.277.116-.665-.204-.859a.657.657 0 00-.902.194c-.32.471-.961.748-1.66.748-.698 0-1.339-.277-1.659-.748a.713.713 0 00-.902-.194c-.292.194-.379.582-.204.859.553.83 1.6 1.33 2.765 1.33zm18.276 0c1.136 0 2.213-.498 2.766-1.329.204-.277.116-.665-.204-.859a.657.657 0 00-.902.194c-.32.471-.96.748-1.66.748-.698 0-1.339-.277-1.659-.748a.713.713 0 00-.902-.194c-.291.194-.379.582-.204.859.553.83 1.601 1.33 2.765 1.33z">
                                        </path>
                                    </g>
                                </svg></dt>
                            <dd class="project-detail-metadata-overview-item__text">${houseVO.family_kind}</dd>
                        </div>
                    </dl>
                    <div class="project-detail-foldable">
                        <div class="project-detail-foldable__content">
                            <dl class="project-detail-metadata-detail">
                            	<c:if test="${not empty houseVO.house_kind}">
	                                <div class="project-detail-metadata-detail-item">
	                                    <dt style="font-family:Noto Sans KR; ">공간</dt>
	                                    <dd style="font-family:Noto Sans KR; ">${houseVO.house_kind}</dd>
	                                </div>
                                </c:if>
                                <c:if test="${not empty houseVO.house_space}">
	                                <div class="project-detail-metadata-detail-item">
	                                    <dt style="font-family:Noto Sans KR;">평수</dt>
	                                    <dd style="font-family:Noto Sans KR;">${houseVO.house_space}</dd>
	                                </div>
                                </c:if>
                                <c:if test="${not empty houseVO.working_area}">
	                                <div class="project-detail-metadata-detail-item">
	                                    <dt style="font-family:Noto Sans KR;">분야</dt>
	                                    <dd style="font-family:Noto Sans KR;">${houseVO.working_area}</dd>
	                                </div>
                                </c:if>
                                <c:if test="${not empty houseVO.family_kind}">
	                                <div class="project-detail-metadata-detail-item">
	                                    <dt style="font-family:Noto Sans KR;">가족형태</dt>
	                                    <dd style="font-family:Noto Sans KR;">${houseVO.family_kind}</dd>
	                                </div>
                                </c:if>
                                
	                            <div class="project-detail-metadata-detail-item">
	                                <dt style="font-family:Noto Sans KR;">스타일</dt>
	                                <dd style="font-family:Noto Sans KR;">${houseVO.styleString}</dd>
	                            </div>
                                
                                <c:if test="${not empty houseVO.total_budget}">
	                                <div class="project-detail-metadata-detail-item">
	                                    <dt style="font-family:Noto Sans KR;">예산</dt>
	                                    <dd style="font-family:Noto Sans KR;">${houseVO.total_budget}</dd>
	                                </div>
                                </c:if>
                            </dl>
                        </div>
                        <div class="project-detail-foldable__expand"><button
                                class="project-detail-foldable__expand-button" type="button"><b>8개</b> 더보기 <svg
                                    class="icon" width="1em" height="1em" viewBox="0 0 16 16"
                                    preserveAspectRatio="xMidYMid meet">
                                    <path fill="currentColor" fill-rule="evenodd"
                                        d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path>
                                </svg></button></div>
                    </div>
                </section>
                <div >
                	<p style="font-family:Noto Sans KR; line-height:3em; font-size:16px;">
                		${houseVO.house_contents}        
                	</p>
                </div>
                <div class="bpd-view project-detail__content-bpd">
                    <p class="bpd-view-text bpd-view-p-block"></p>
                    <div class="bpd-view-button-block bpd-view-button-block--sns"><a
                            class="bpd-view-button-block__button bpd-view-button-block__button--sns"
                            href="https://www.instagram.com/neutrallounge_by_k" target="_blank"
                            rel="noreferrer noopener"><svg class="icon icon--instagram" width="1em" height="1em"
                                viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                                <path fill="currentColor" fill-rule="evenodd"
                                    d="M13.16.005c2.222.003 2.677.02 3.786.071 1.277.058 2.149.261 2.912.558.789.306 1.458.716 2.125 1.383s1.077 1.336 1.383 2.125c.297.763.5 1.635.558 2.912.055 1.194.07 1.63.072 4.331v1.23c-.002 2.701-.017 3.137-.072 4.331-.058 1.277-.261 2.149-.558 2.912-.306.789-.716 1.458-1.383 2.125s-1.336 1.077-2.125 1.383c-.763.297-1.635.5-2.912.558-1.194.055-1.63.07-4.331.072h-1.23c-2.701-.002-3.137-.017-4.331-.072-1.277-.058-2.149-.261-2.912-.558-.789-.306-1.458-.716-2.125-1.383S.94 20.647.634 19.858c-.297-.763-.5-1.635-.558-2.912-.05-1.109-.068-1.564-.071-3.786v-2.32c.003-2.222.02-2.677.071-3.786.058-1.277.261-2.149.558-2.912.306-.789.716-1.458 1.383-2.125S3.353.94 4.142.634c.763-.297 1.635-.5 2.912-.558C8.163.026 8.618.008 10.84.005zm-.28 2.16h-1.76c-2.408.003-2.829.018-3.968.07-1.17.054-1.804.249-2.227.413-.56.218-.96.478-1.38.898-.42.42-.68.819-.897 1.379-.164.423-.36 1.058-.413 2.228-.052 1.138-.067 1.56-.07 3.967v1.76c.003 2.408.018 2.829.07 3.968.054 1.17.249 1.804.413 2.227.218.56.478.96.898 1.38.42.42.819.68 1.379.897.423.164 1.058.36 2.228.413 1.096.05 1.527.066 3.707.069h2.28c2.18-.003 2.611-.02 3.707-.07 1.17-.053 1.805-.248 2.228-.412.56-.218.96-.478 1.38-.898.42-.42.68-.819.897-1.379.164-.423.36-1.058.413-2.228.05-1.096.066-1.527.069-3.708v-2.278c-.003-2.181-.02-2.612-.07-3.709-.053-1.17-.248-1.804-.412-2.227-.218-.56-.478-.96-.898-1.38-.42-.42-.819-.68-1.379-.897-.423-.164-1.058-.36-2.228-.413-1.138-.052-1.56-.067-3.967-.07zM12 5.84c3.402 0 6.16 2.758 6.16 6.16s-2.758 6.16-6.16 6.16S5.84 15.402 5.84 12 8.598 5.84 12 5.84zM12 8c-2.208 0-3.999 1.79-3.999 3.999 0 2.208 1.79 3.999 3.999 3.999 2.208 0 3.999-1.79 3.999-3.999 0-2.208-1.79-3.999-3.999-3.999zm6.404-3.844c.795 0 1.44.644 1.44 1.44 0 .794-.645 1.439-1.44 1.439-.795 0-1.44-.645-1.44-1.44 0-.795.645-1.44 1.44-1.44z">
                                </path>
                            </svg>인스타그램 구경 가기</a></div>
                </div>
            </div>
            </div>
        </div>
        <!-- HouseNum -->
        <input type="hidden" id="house_num" value="${houseVO.house_num}"/>
        <!-- /HouseNum -->
        <div class="content-detail-footer">
        <!-- 
            <dl class="content-detail-stats">
                <div class="content-detail-stats__item">
                    <dt>좋아요</dt>
                    <dd>${houseVO.house_zoayo}</dd>
                </div>
                <div class="content-detail-stats__item">
                    <dt>스크랩</dt>
                    <dd>${houseVO.house_scrap}</dd>
                </div>
                <div class="content-detail-stats__item">
                    <dt>댓글</dt>
                    <dd>${houseVO.house_comments}</dd>
                </div>
                <div class="content-detail-stats__item">
                    <dt>조회</dt>
                    <dd>${houseVO.house_hits}</dd>
                </div>
            </dl>
         -->
            <address class="css-ficoa8-AuthorAddress e1lduqiu7">
                <div class="css-8a30oh-AuthorAuthor e1lduqiu6">
                    <div class="css-18j7ebb-AuthorTitle e1lduqiu5"><a class="css-1u6ed71-AuthorLink e1lduqiu4"
                            href="/users/5048246">
                            <div class="css-tvpkwu-AuthorImage e1lduqiu3"><img class="image" alt=""
                                    src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1514252843_Ehvl0eCs.jpeg?gif=1&w=72&h=72&c=c"
                                    srcset="">
                                    
                            </div> 운영진 ID : ${loginId}
                                <sec:authorize access="isAuthenticated()" var="result">
								    <sec:authentication property="principal" var="memberVO"/>
							    </sec:authorize>
                            
                        </a><span class="css-132bynx-AuthorSeparator e1lduqiu2"></span>
                    </div>
                    <div class="css-1uvgjqa-AuthorIntroduction e1lduqiu0"></div>
                </div>
            </address>
        </div>
        <div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false"
            data-sticky-ignore="false" data-direction="bottom" data-offset="77.92708206176758"
            class="sticky-container css-1rfnasd-FloatingMobile ek22auo2" style="position: sticky; bottom: 77.9271px;">
            <div class="sticky-child" style="position: relative;"><button class="css-1f4qjv0-TocButton ek22auo0"><svg
                        width="24" height="24" viewBox="0 0 24 24" fill="none" preserveAspectRatio="xMidYMid meet">
                        <rect x="3" y="5" width="3" height="1" fill="#2F3438"></rect>
                        <rect x="9" y="5" width="12" height="1" fill="#2F3438"></rect>
                        <rect x="3" y="11" width="3" height="1" fill="#2F3438"></rect>
                        <rect x="9" y="11" width="12" height="1" fill="#2F3438"></rect>
                        <rect x="3" y="17" width="3" height="1" fill="#2F3438"></rect>
                        <rect x="9" y="17" width="12" height="1" fill="#2F3438"></rect>
                    </svg></button></div>
        </div>
    </main>
    
<script type="text/javascript">
</script>    
<script type="text/javascript" src="../resources/js/housewarming/house_detail.js"></script>    
</body>
</html>