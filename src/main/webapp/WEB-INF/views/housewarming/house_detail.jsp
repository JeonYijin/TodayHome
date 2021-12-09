<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="./import_house/detail_css.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집들이 detail</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<main class="content-detail">
        <div class="content-detail-cover-image">
            <div class="content-detail-cover-image__sizer">
                <div class="content-detail-cover-image__inner-sizer"></div>
            </div>
            <div class="content-detail-cover-image__image"
                style="background-image: url(&quot;https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163680545727507776.HEIC?gif=1&amp;w=1280&quot;); background-size: cover; background-repeat: no-repeat; background-position: center 36.2828%;">
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
                        <p class="content-detail-header__category">온라인 집들이</p>
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
                        <div class="content-detail-header__user-actions"><button
                                class="_3Z6oR _3AsCW _1BDvx content-detail-header__follow bold"><svg class="icon"
                                    width="9" height="10" viewBox="0 0 9 10" fill="none"
                                    preserveAspectRatio="xMidYMid meet">
                                    <path d="M3.75 4.25V0.5H5.25V4.25L9 4.25V5.75H5.25V9.5H3.75V5.75H0V4.25L3.75 4.25Z"
                                        fill="white"></path>
                                </svg>팔로우</button></div>
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
	                                    <dt>공간</dt>
	                                    <dd>${houseVO.house_kind}</dd>
	                                </div>
                                </c:if>
                                <c:if test="${not empty houseVO.house_space}">
	                                <div class="project-detail-metadata-detail-item">
	                                    <dt>평수</dt>
	                                    <dd>${houseVO.house_space}평</dd>
	                                </div>
                                </c:if>
                                <c:if test="${not empty houseVO.working_area}">
	                                <div class="project-detail-metadata-detail-item">
	                                    <dt>분야</dt>
	                                    <dd>${houseVO.working_area}</dd>
	                                </div>
                                </c:if>
                                <c:if test="${not empty houseVO.house_region}">
	                                <div class="project-detail-metadata-detail-item">
	                                    <dt>가족형태</dt>
	                                    <dd>${houseVO.house_region}</dd>
	                                </div>
                                </c:if>
                                <c:if test="${not empty houseVO.family_kind}">
	                                <div class="project-detail-metadata-detail-item">
	                                    <dt>가족형태</dt>
	                                    <dd>${houseVO.family_kind}</dd>
	                                </div>
                                </c:if>
                                
	                            <div class="project-detail-metadata-detail-item">
	                                <dt>스타일</dt>
	                                <dd>${houseVO.styleString}</dd>
	                            </div>
                                
                                <c:if test="${not empty houseVO.total_budget}">
	                                <div class="project-detail-metadata-detail-item">
	                                    <dt>예산</dt>
	                                    <dd>${houseVO.total_budget}원</dd>
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
                <div>
                	${houseVO.house_contents}                
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
                    <div class="bpd-view-button-block bpd-view-button-block--sns"><a
                            class="bpd-view-button-block__button bpd-view-button-block__button--sns"
                            href="https://m.blog.naver.com/muung_uny" target="_blank" rel="noreferrer noopener"><svg
                                class="icon icon--web" width="1em" height="1em" viewBox="0 0 24 24"
                                preserveAspectRatio="xMidYMid meet">
                                <path fill="currentColor" fill-rule="nonzero"
                                    d="M22 12a10 10 0 10-20 0 10 10 0 0020 0zm-7.16-.8H9.16c.22-2.62 1.2-5.11 2.84-7.17a13.27 13.27 0 012.84 7.17zm0 1.6A13.26 13.26 0 0112 19.97a13.26 13.26 0 01-2.84-7.16l5.68-.01zm-1.02 7.4a14.87 14.87 0 002.62-7.4h3.92a8.42 8.42 0 01-6.54 7.4zm6.54-9h-3.92c-.2-2.66-1.1-5.21-2.62-7.4a8.42 8.42 0 016.54 7.4zM10.18 3.8a14.88 14.88 0 00-2.62 7.4H3.64a8.42 8.42 0 016.54-7.4zm-6.54 9h3.92c.2 2.66 1.1 5.21 2.62 7.4a8.42 8.42 0 01-6.54-7.4z">
                                </path>
                            </svg>네이버 블로그 구경 가기</a></div>
                    <div class="bpd-view-button-block bpd-view-button-block--sns"><a
                            class="bpd-view-button-block__button bpd-view-button-block__button--sns"
                            href="https://youtube.com/channel/UCxmzAijYpW8AotpKkiwH_6Q" target="_blank"
                            rel="noreferrer noopener"><svg class="icon icon--youtube" width="1em" height="1em"
                                viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                                <path fill="currentColor"
                                    d="M12.25 5c1.17 0 6.19.05 7.56.42.86.23 1.54.91 1.77 1.78.38 1.41.42 4.2.42 4.75v.19c0 .54-.04 3.34-.42 4.75-.23.87-.9 1.55-1.77 1.78-1.4.38-6.66.42-7.65.42h-.32c-.99 0-6.24-.04-7.65-.42a2.52 2.52 0 01-1.77-1.78c-.36-1.36-.41-4-.42-4.68v-.33c0-.68.06-3.32.42-4.68.23-.87.9-1.55 1.77-1.78C5.56 5.05 10.58 5 11.75 5zm-2.3 4.07v5.95l5.23-2.97-5.23-2.98z"
                                    fill-rule="evenodd"></path>
                            </svg>유튜브 구경 가기</a></div>
                </div>
            </div>
            <div class="content-detail-content-section__sidebar">
                <div data-sticky-enabled="false" data-sticky-disabled="true" data-sticky-always="false"
                    data-sticky-ignore="true" data-direction="top" data-offset="0"
                    class="sticky-container content-detail-content-section__sidebar-sticky">
                    <div class="sticky-child content-detail-content-section__sidebar-inner"
                        style="position: relative; box-sizing: border-box;">
                        <div class="content-detail-sidebar"><button
                                class="content-detail-sidebar-button content-detail-sidebar-button--white"
                                aria-pressed="false" title="좋아요" type="button"><svg
                                    class="content-detail-sidebar__icon-blue icon" width="24" height="24"
                                    fill="currentColor" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"
                                    preserveAspectRatio="xMidYMid meet">
                                    <path
                                        d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z">
                                    </path>
                                </svg><svg class="content-detail-sidebar__icon-inactive icon" width="24" height="24"
                                    viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                                    <path fill="currentColor"
                                        d="M22.971 7.638c-.548-5.17-7.119-7.135-10.57-2.488a.5.5 0 0 1-.802 0C8.148.503 1.577 2.469 1.029 7.625.642 12.451 3.897 17.183 12 21.436c8.104-4.252 11.36-8.984 10.972-13.798zm.996-.093c.428 5.319-3.137 10.446-11.738 14.899a.5.5 0 0 1-.46 0C3.169 17.99-.395 12.864.034 7.532.656 1.67 7.904-.683 12 4.052 16.096-.683 23.344 1.67 23.967 7.545z">
                                    </path>
                                </svg></button><span class="content-detail-sidebar-counter">45</span><button
                                class="content-detail-sidebar-button content-detail-sidebar-button--white"
                                aria-pressed="false" title="스크랩" type="button"><svg
                                    class="content-detail-sidebar__icon-blue icon" width="24" height="24"
                                    fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24"
                                    preserveAspectRatio="xMidYMid meet">
                                    <path
                                        d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z">
                                    </path>
                                </svg><svg class="content-detail-sidebar__icon-inactive icon" width="24" height="24"
                                    viewBox="0 0 24 24" fill="currentColor" preserveAspectRatio="xMidYMid meet">
                                    <path fill-rule="evenodd" transform="matrix(1 0 0 -1 0 23.033)"
                                        d="M12.943 6.342a2 2 0 0 1-1.886 0L3 2.032V20.5a.5.5 0 0 0 .5.5h17a.5.5 0 0 0 .5-.5V2.033l-8.057 4.309zm-.471-.882l8.056-4.31A1 1 0 0 1 22 2.034V20.5a1.5 1.5 0 0 1-1.5 1.5h-17A1.5 1.5 0 0 1 2 20.5V2.033a1 1 0 0 1 1.472-.882l8.056 4.31a1 1 0 0 0 .944 0z">
                                    </path>
                                </svg></button><span class="content-detail-sidebar-counter">146</span>
                            <hr class="content-detail-sidebar-hr"><button
                                class="content-detail-sidebar-button content-detail-sidebar-button--gray"
                                aria-pressed="false" title="댓글" type="button"><svg class="icon" width="24" height="24"
                                    viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                                    <path fill="currentColor" fill-rule="nonzero"
                                        d="M13.665 18.434l.53-.066C19.69 17.679 23 14.348 23 10c0-4.942-4.235-8.5-11-8.5S1 5.058 1 10c0 4.348 3.31 7.68 8.804 8.368l.531.066L12 21.764l1.665-3.33zm-3.985.926C3.493 18.585 0 14.69 0 10 0 4.753 4.373.5 12 .5S24 4.753 24 10c0 4.69-3.493 8.585-9.68 9.36l-1.647 3.293c-.374.75-.974.744-1.346 0L9.68 19.36z">
                                    </path>
                                </svg></button><span class="content-detail-sidebar-counter">13</span>
                            <div class="drop-down card-detail-floating__action-wrap card-detail-floating__action-share">
                                <button class="content-detail-sidebar-button content-detail-sidebar-button--gray"
                                    aria-pressed="false" title="공유" type="button"><svg class="icon" width="24"
                                        height="24" viewBox="0 0 24 24" fill="currentColor"
                                        preserveAspectRatio="xMidYMid meet">
                                        <path
                                            d="M9.64 14.646a4.5 4.5 0 1 1 0-5.292l4.54-2.476a4.5 4.5 0 1 1 .63.795l-4.675 2.55c.235.545.365 1.146.365 1.777s-.13 1.232-.365 1.777l4.675 2.55a4.5 4.5 0 1 1-.63.795l-4.54-2.476zM18 8a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM6 15.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM18 23a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z">
                                        </path>
                                    </svg></button></div><span class="content-detail-sidebar-counter">18</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-detail-footer">
            <dl class="content-detail-stats">
                <div class="content-detail-stats__item">
                    <dt>좋아요</dt>
                    <dd>45</dd>
                </div>
                <div class="content-detail-stats__item">
                    <dt>스크랩</dt>
                    <dd>146</dd>
                </div>
                <div class="content-detail-stats__item">
                    <dt>댓글</dt>
                    <dd>13</dd>
                </div>
                <div class="content-detail-stats__item">
                    <dt>조회</dt>
                    <dd>5,675</dd>
                </div>
            </dl>
            <address class="css-ficoa8-AuthorAddress e1lduqiu7">
                <div class="css-8a30oh-AuthorAuthor e1lduqiu6">
                    <div class="css-18j7ebb-AuthorTitle e1lduqiu5"><a class="css-1u6ed71-AuthorLink e1lduqiu4"
                            href="/users/5048246">
                            <div class="css-tvpkwu-AuthorImage e1lduqiu3"><img class="image" alt=""
                                    src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c"
                                    srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=240&amp;h=240&amp;c=c 3x">
                            </div>muunguny
                        </a><span class="css-132bynx-AuthorSeparator e1lduqiu2"></span><button type="button"
                            class="css-mxt7n4-AuthorFollow e1lduqiu1">팔로우</button></div>
                    <div class="css-1uvgjqa-AuthorIntroduction e1lduqiu0"></div>
                </div>
            </address>
            <div class="content-detail-comment-section">
                <section class="comment-feed">
                    <h1 class="comment-feed__header">댓글&nbsp;<span class="comment-feed__header__count">13</span></h1>
                    <form class="comment-feed__form">
                        <div class="comment-feed__form__user"><img
                                src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36"
                                srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144 3x">
                        </div>
                        <div class="comment-feed__form__input">
                            <div class="comment-feed__form__content">
                                <div class="comment-content-input">
                                    <div class="comment-content-input__text comment-feed__form__content__text"
                                        data-ph="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" contenteditable="true"></div>
                                </div>
                            </div>
                            <div class="comment-feed__form__actions"><button class="comment-feed__form__submit"
                                    aria-label="등록" type="submit" disabled="">등록</button></div>
                        </div>
                    </form>
                    <ul class="comment-feed__list">
                        <li class="comment-feed__list__item">
                            <article class="comment-feed__item">
                                <p class="comment-feed__item__content"><a href="/users/12292556"
                                        class="comment-feed__item__content__author"><img
                                            class="comment-feed__item__content__author__image" alt="기린❣️"
                                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/161282622701844084.jpeg?gif=1&amp;w=36"
                                            srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/161282622701844084.jpeg?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/161282622701844084.jpeg?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/161282622701844084.jpeg?gif=1&amp;w=144 3x"><span
                                            class="comment-feed__item__content__author__name">기린❣️</span></a><span
                                        class="comment-feed__item__content__content">모듈쇼파! 블랙 화이트 조합 너무 좋아여 ㅜㅠ</span>
                                </p>
                                <footer class="comment-feed__item__footer"><time
                                        class="comment-feed__item__footer__time">5시간 전</time><span
                                        class="comment-feed__item__footer__likes zero"><button
                                            class="comment-feed__item__footer__likes__icon" type="button"><svg
                                                class="badge" width="15" height="14"
                                                preserveAspectRatio="xMidYMid meet">
                                                <path fill-rule="evenodd" class="heart"
                                                    d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z">
                                                </path>
                                            </svg></button><span
                                            class="comment-feed__item__footer__likes__count">0</span></span><button
                                        class="comment-feed__item__footer__like-btn" type="button">좋아요</button><button
                                        class="comment-feed__item__footer__reply-btn" type="button">답글
                                        달기</button><button class="comment-feed__item__footer__report-btn"
                                        type="button">신고</button></footer>
                            </article>
                        </li>
                        <li class="comment-feed__list__item">
                            <article class="comment-feed__item">
                                <p class="comment-feed__item__content"><a href="/users/14487448"
                                        class="comment-feed__item__content__author"><img
                                            class="comment-feed__item__content__author__image" alt="2벼리3"
                                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162607872960377271.jpeg?gif=1&amp;w=36"
                                            srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162607872960377271.jpeg?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162607872960377271.jpeg?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162607872960377271.jpeg?gif=1&amp;w=144 3x"><span
                                            class="comment-feed__item__content__author__name">2벼리3</span></a><span
                                        class="comment-feed__item__content__content">우와! 벤치소파 저도 너무 하고 싶은건데
                                        업체정보와 대략의 견적 좀 알 수 있을까요?</span></p>
                                <footer class="comment-feed__item__footer"><time
                                        class="comment-feed__item__footer__time">11시간 전</time><span
                                        class="comment-feed__item__footer__likes zero"><button
                                            class="comment-feed__item__footer__likes__icon" type="button"><svg
                                                class="badge" width="15" height="14"
                                                preserveAspectRatio="xMidYMid meet">
                                                <path fill-rule="evenodd" class="heart"
                                                    d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z">
                                                </path>
                                            </svg></button><span
                                            class="comment-feed__item__footer__likes__count">0</span></span><button
                                        class="comment-feed__item__footer__like-btn" type="button">좋아요</button><button
                                        class="comment-feed__item__footer__reply-btn" type="button">답글
                                        달기</button><button class="comment-feed__item__footer__report-btn"
                                        type="button">신고</button></footer>
                                <div class="comment-feed__reply-list">
                                    <ul class="comment-feed__list comment-feed__reply-list__list">
                                        <li class="comment-feed__list__item">
                                            <article class="comment-feed__item">
                                                <p class="comment-feed__item__content"><a href="/users/5048246"
                                                        class="comment-feed__item__content__author"><img
                                                            class="comment-feed__item__content__author__image"
                                                            alt="muunguny"
                                                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=36"
                                                            srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=144 3x"><span
                                                            class="comment-feed__item__content__author__name">muunguny</span></a><span
                                                        class="comment-feed__item__content__content"><a
                                                            href="/users/14487448" target="_blank"
                                                            rel="noopener noreferrer nofollow">@2벼리3</a> 사실 이 벤치쇼파는 인테리어
                                                        공사하면서 제가 사이즈 말씀드려서 목공으로 만들고 쿠션따로 제작한거라..이 비용만 따로 알기는 어려울 것 같아요ㅠㅠ
                                                        흑흑 .. 쿠션은 인조가죽으로 해서 40만원대 였구요🤍</span></p>
                                                <footer class="comment-feed__item__footer"><time
                                                        class="comment-feed__item__footer__time">10시간 전</time><span
                                                        class="comment-feed__item__footer__likes zero"><button
                                                            class="comment-feed__item__footer__likes__icon"
                                                            type="button"><svg class="badge" width="15" height="14"
                                                                preserveAspectRatio="xMidYMid meet">
                                                                <path fill-rule="evenodd" class="heart"
                                                                    d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z">
                                                                </path>
                                                            </svg></button><span
                                                            class="comment-feed__item__footer__likes__count">0</span></span><button
                                                        class="comment-feed__item__footer__like-btn"
                                                        type="button">좋아요</button><button
                                                        class="comment-feed__item__footer__reply-btn" type="button">답글
                                                        달기</button><button
                                                        class="comment-feed__item__footer__report-btn"
                                                        type="button">신고</button></footer>
                                            </article>
                                        </li>
                                    </ul>
                                </div>
                            </article>
                        </li>
                        <li class="comment-feed__list__item">
                            <article class="comment-feed__item">
                                <p class="comment-feed__item__content"><a href="/users/3571966"
                                        class="comment-feed__item__content__author"><img
                                            class="comment-feed__item__content__author__image" alt="옥냥s2"
                                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163477089169909084.jpeg?gif=1&amp;w=36"
                                            srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163477089169909084.jpeg?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163477089169909084.jpeg?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163477089169909084.jpeg?gif=1&amp;w=144 3x"><span
                                            class="comment-feed__item__content__author__name">옥냥s2</span></a><span
                                        class="comment-feed__item__content__content">안 예쁜 공간이 없네요 .. 블랙앤화이트 짱이에요 ..
                                        🥺🖤</span></p>
                                <footer class="comment-feed__item__footer"><time
                                        class="comment-feed__item__footer__time">17시간 전</time><span
                                        class="comment-feed__item__footer__likes"><button
                                            class="comment-feed__item__footer__likes__icon" type="button"><svg
                                                class="badge" width="15" height="14"
                                                preserveAspectRatio="xMidYMid meet">
                                                <path fill-rule="evenodd" class="heart"
                                                    d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z">
                                                </path>
                                            </svg></button><span
                                            class="comment-feed__item__footer__likes__count">1</span></span><button
                                        class="comment-feed__item__footer__like-btn" type="button">좋아요</button><button
                                        class="comment-feed__item__footer__reply-btn" type="button">답글
                                        달기</button><button class="comment-feed__item__footer__report-btn"
                                        type="button">신고</button></footer>
                                <div class="comment-feed__reply-list">
                                    <ul class="comment-feed__list comment-feed__reply-list__list">
                                        <li class="comment-feed__list__item">
                                            <article class="comment-feed__item">
                                                <p class="comment-feed__item__content"><a href="/users/5048246"
                                                        class="comment-feed__item__content__author"><img
                                                            class="comment-feed__item__content__author__image"
                                                            alt="muunguny"
                                                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=36"
                                                            srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=144 3x"><span
                                                            class="comment-feed__item__content__author__name">muunguny</span></a><span
                                                        class="comment-feed__item__content__content"><a
                                                            href="/users/3571966" target="_blank"
                                                            rel="noopener noreferrer nofollow">@옥냥s2</a> 블랙도 좋쿠 화이트도 좋쿠
                                                        🥺 예쁘게 봐 주셔서 감사해요 🤍</span></p>
                                                <footer class="comment-feed__item__footer"><time
                                                        class="comment-feed__item__footer__time">17시간 전</time><span
                                                        class="comment-feed__item__footer__likes zero"><button
                                                            class="comment-feed__item__footer__likes__icon"
                                                            type="button"><svg class="badge" width="15" height="14"
                                                                preserveAspectRatio="xMidYMid meet">
                                                                <path fill-rule="evenodd" class="heart"
                                                                    d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z">
                                                                </path>
                                                            </svg></button><span
                                                            class="comment-feed__item__footer__likes__count">0</span></span><button
                                                        class="comment-feed__item__footer__like-btn"
                                                        type="button">좋아요</button><button
                                                        class="comment-feed__item__footer__reply-btn" type="button">답글
                                                        달기</button><button
                                                        class="comment-feed__item__footer__report-btn"
                                                        type="button">신고</button></footer>
                                            </article>
                                        </li>
                                    </ul>
                                </div>
                            </article>
                        </li>
                        <li class="comment-feed__list__item">
                            <article class="comment-feed__item">
                                <p class="comment-feed__item__content"><a href="/users/3749445"
                                        class="comment-feed__item__content__author"><img
                                            class="comment-feed__item__content__author__image" alt="lovelyㅇㅌㅇ"
                                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1552188847_GHoJ9r.jpeg?gif=1&amp;w=36"
                                            srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1552188847_GHoJ9r.jpeg?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1552188847_GHoJ9r.jpeg?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1552188847_GHoJ9r.jpeg?gif=1&amp;w=144 3x"><span
                                            class="comment-feed__item__content__author__name">lovelyㅇㅌㅇ</span></a><span
                                        class="comment-feed__item__content__content">대박!!! 샹들리에도 너무 멋있고 ♡ 가구며 소품 하나하나 까지
                                        !👍🏻 </span></p>
                                <footer class="comment-feed__item__footer"><time
                                        class="comment-feed__item__footer__time">18시간 전</time><span
                                        class="comment-feed__item__footer__likes"><button
                                            class="comment-feed__item__footer__likes__icon" type="button"><svg
                                                class="badge" width="15" height="14"
                                                preserveAspectRatio="xMidYMid meet">
                                                <path fill-rule="evenodd" class="heart"
                                                    d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z">
                                                </path>
                                            </svg></button><span
                                            class="comment-feed__item__footer__likes__count">1</span></span><button
                                        class="comment-feed__item__footer__like-btn" type="button">좋아요</button><button
                                        class="comment-feed__item__footer__reply-btn" type="button">답글
                                        달기</button><button class="comment-feed__item__footer__report-btn"
                                        type="button">신고</button></footer>
                                <div class="comment-feed__reply-list">
                                    <ul class="comment-feed__list comment-feed__reply-list__list">
                                        <li class="comment-feed__list__item">
                                            <article class="comment-feed__item">
                                                <p class="comment-feed__item__content"><a href="/users/5048246"
                                                        class="comment-feed__item__content__author"><img
                                                            class="comment-feed__item__content__author__image"
                                                            alt="muunguny"
                                                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=36"
                                                            srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=144 3x"><span
                                                            class="comment-feed__item__content__author__name">muunguny</span></a><span
                                                        class="comment-feed__item__content__content"><a
                                                            href="/users/3749445" target="_blank"
                                                            rel="noopener noreferrer nofollow">@lovelyㅇㅌㅇ</a> 아이쿠 예쁘게 봐
                                                        주셔서 감사해요 🤍🤍</span></p>
                                                <footer class="comment-feed__item__footer"><time
                                                        class="comment-feed__item__footer__time">17시간 전</time><span
                                                        class="comment-feed__item__footer__likes zero"><button
                                                            class="comment-feed__item__footer__likes__icon"
                                                            type="button"><svg class="badge" width="15" height="14"
                                                                preserveAspectRatio="xMidYMid meet">
                                                                <path fill-rule="evenodd" class="heart"
                                                                    d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z">
                                                                </path>
                                                            </svg></button><span
                                                            class="comment-feed__item__footer__likes__count">0</span></span><button
                                                        class="comment-feed__item__footer__like-btn"
                                                        type="button">좋아요</button><button
                                                        class="comment-feed__item__footer__reply-btn" type="button">답글
                                                        달기</button><button
                                                        class="comment-feed__item__footer__report-btn"
                                                        type="button">신고</button></footer>
                                            </article>
                                        </li>
                                    </ul>
                                </div>
                            </article>
                        </li>
                        <li class="comment-feed__list__item">
                            <article class="comment-feed__item">
                                <p class="comment-feed__item__content"><a href="/users/14071546"
                                        class="comment-feed__item__content__author"><img
                                            class="comment-feed__item__content__author__image" alt="diane3826"
                                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36"
                                            srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144 3x"><span
                                            class="comment-feed__item__content__author__name">diane3826</span></a><span
                                        class="comment-feed__item__content__content">샹들리에가 멋져요</span></p>
                                <footer class="comment-feed__item__footer"><time
                                        class="comment-feed__item__footer__time">18시간 전</time><span
                                        class="comment-feed__item__footer__likes zero"><button
                                            class="comment-feed__item__footer__likes__icon" type="button"><svg
                                                class="badge" width="15" height="14"
                                                preserveAspectRatio="xMidYMid meet">
                                                <path fill-rule="evenodd" class="heart"
                                                    d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z">
                                                </path>
                                            </svg></button><span
                                            class="comment-feed__item__footer__likes__count">0</span></span><button
                                        class="comment-feed__item__footer__like-btn" type="button">좋아요</button><button
                                        class="comment-feed__item__footer__reply-btn" type="button">답글
                                        달기</button><button class="comment-feed__item__footer__report-btn"
                                        type="button">신고</button></footer>
                                <div class="comment-feed__reply-list">
                                    <ul class="comment-feed__list comment-feed__reply-list__list">
                                        <li class="comment-feed__list__item">
                                            <article class="comment-feed__item">
                                                <p class="comment-feed__item__content"><a href="/users/5048246"
                                                        class="comment-feed__item__content__author"><img
                                                            class="comment-feed__item__content__author__image"
                                                            alt="muunguny"
                                                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=36"
                                                            srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/163678895334608667.jpeg?gif=1&amp;w=144 3x"><span
                                                            class="comment-feed__item__content__author__name">muunguny</span></a><span
                                                        class="comment-feed__item__content__content"><a
                                                            href="/users/14071546" target="_blank"
                                                            rel="noopener noreferrer nofollow">@diane3826</a> 멋지게 봐 주셔서
                                                        감사해용 🤍 어쩌다 보니 포인트가 돼버렸오용 ㅎㅎ</span></p>
                                                <footer class="comment-feed__item__footer"><time
                                                        class="comment-feed__item__footer__time">17시간 전</time><span
                                                        class="comment-feed__item__footer__likes"><button
                                                            class="comment-feed__item__footer__likes__icon"
                                                            type="button"><svg class="badge" width="15" height="14"
                                                                preserveAspectRatio="xMidYMid meet">
                                                                <path fill-rule="evenodd" class="heart"
                                                                    d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z">
                                                                </path>
                                                            </svg></button><span
                                                            class="comment-feed__item__footer__likes__count">1</span></span><button
                                                        class="comment-feed__item__footer__like-btn"
                                                        type="button">좋아요</button><button
                                                        class="comment-feed__item__footer__reply-btn" type="button">답글
                                                        달기</button><button
                                                        class="comment-feed__item__footer__report-btn"
                                                        type="button">신고</button></footer>
                                            </article>
                                        </li>
                                    </ul>
                                </div>
                            </article>
                        </li>
                    </ul>
                    <ul class="list-paginator">
                        <li><button class="list-paginator__page sm selected" type="button">1</button></li>
                        <li><button class="list-paginator__page sm" type="button">2</button></li>
                        <li><button class="list-paginator__next" type="button"><svg width="26" height="26"
                                    viewBox="0 0 26 26" preserveAspectRatio="xMidYMid meet">
                                    <g fill="none" fill-rule="evenodd" transform="matrix(-1 0 0 1 26 0)">
                                        <rect width="25" height="25" x=".5" y=".5" stroke="#DCDCDC" rx="4"></rect>
                                        <g stroke="#424242" stroke-linecap="square" stroke-width="2">
                                            <path d="M14.75 8.263L10.25 13M10.25 13l4.5 4.737"></path>
                                        </g>
                                    </g>
                                </svg></button></li>
                    </ul>
                </section>
            </div>
            <div></div>
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
</body>
</html>