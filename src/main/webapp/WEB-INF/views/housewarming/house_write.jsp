<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="./import_house/write_css.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집들이 글쓰기 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/ckeditor/ckeditor.js"></script>
</head>
<body>
 	<div class="editor">
        <div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false"
            data-sticky-ignore="false" data-direction="top" data-offset="0" class="sticky-container editor__header-wrap"
            style="position: sticky; top: 0px;">
            <div class="sticky-child editor__header" style="position: relative;">
                <div class="editor-mobile-header">
                    <div class="editor-mobile-header__top">
                        <div class="editor-mobile-header__top-left"><button class="editor-back-button" type="button"
                                title="뒤로"><svg class="icon" width="24" height="24" preserveAspectRatio="xMidYMid meet">
                                    <path d="M3.7 12.5h18.8v-1H3.7l7.8-7.8-.7-.7L2 11.7l.3.3-.3.3 8.8 8.7.7-.7-7.8-7.8z"
                                        fill="#000" fill-opacity=".7" fill-rule="evenodd"></path>
                                </svg></button></div>
                        <h1 class="editor-mobile-header__title">글쓰기</h1>
                        <div class="editor-mobile-header__top-right"></div>
                    </div>
                    <div class="editor-mobile-header__bottom">
                        <div class="editor-mobile-header__content"></div>
                        <div class="editor-mobile-header__bottom-right"></div>
                    </div>
                </div>
                <div class="editor-pc-header">
                    <div class="editor-pc-header__content"><a class="editor-pc-header__logo" aria-label="오늘의집"
                            href="/"><svg class="icon" width="74" height="30" viewBox="0 0 74 30"
                                preserveAspectRatio="xMidYMid meet">
                                <g fill="none" fill-rule="evenodd">
                                    <path fill="#000"
                                        d="M14.2 25.17H9.28V20.7a1.45 1.45 0 0 0-2.9 0v4.47H1.44a1.45 1.45 0 1 0 0 2.9H14.2a1.45 1.45 0 0 0 0-2.9M4.5 9.15c0-4.6 2.08-5.28 3.33-5.28 1.24 0 3.33.69 3.33 5.28v.36c0 4.6-2.09 5.28-3.33 5.28-1.25 0-3.34-.69-3.34-5.28v-.36zm3.33 8.54c3.84 0 6.23-3.13 6.23-8.18v-.36c0-5.05-2.39-8.18-6.23-8.18-3.85 0-6.24 3.13-6.24 8.18v.36c0 5.05 2.39 8.19 6.24 8.19zm25.54-7.34H17.81a1.45 1.45 0 0 0 0 2.9h15.56a1.45 1.45 0 1 0 0-2.9m-1.55 15.5c-7.08 1.83-9.45.79-10.14.25-.45-.35-.65-.8-.65-1.48v-.87h10.25c.8 0 1.46-.65 1.46-1.45v-5.08c0-.8-.66-1.45-1.46-1.45h-11.7a1.45 1.45 0 1 0 0 2.9h10.25v2.18H19.57c-.8 0-1.45.65-1.45 1.45v2.32a4.6 4.6 0 0 0 1.78 3.78c1.2.93 2.94 1.39 5.21 1.39 2.05 0 4.54-.38 7.44-1.13a1.45 1.45 0 1 0-.73-2.82M20.3 7.83h10.8a1.45 1.45 0 1 0 0-2.9h-9.35V1.45a1.45 1.45 0 1 0-2.9 0v4.93c0 .8.65 1.45 1.45 1.45">
                                    </path>
                                    <rect width="3" height="15" x="70" fill="#000" rx="1.5"></rect>
                                    <path fill="#000"
                                        d="M64.5 13.28a1.45 1.45 0 0 0 2.73-1c-.05-.13-1-2.68-3.38-4.5l3.7-4.1a1.45 1.45 0 0 0-1.09-2.42h-9.05a1.45 1.45 0 1 0 0 2.9h5.8l-6.88 7.64a1.45 1.45 0 1 0 2.16 1.95l3.41-3.8a8 8 0 0 1 2.6 3.33M69.56 26.52h-7.01a.82.82 0 0 1-.82-.82v-1.95h8.65v1.95c0 .45-.37.82-.82.82m2.27-9.37c-.8 0-1.45.65-1.45 1.45v2.25h-8.65V18.6a1.45 1.45 0 1 0-2.9 0v7.1a3.73 3.73 0 0 0 3.72 3.72h7.01a3.73 3.73 0 0 0 3.72-3.72v-7.1c0-.8-.65-1.45-1.45-1.45M42.46 3.87c2.22 0 2.33 4.24 2.33 5.08 0 .85-.11 5.09-2.33 5.09-2.21 0-2.32-4.24-2.32-5.08 0-.86.11-5.09 2.32-5.09m0 13.07c1.76 0 3.23-.93 4.14-2.62.71-1.34 1.1-3.2 1.1-5.36s-.39-4.02-1.1-5.37A4.6 4.6 0 0 0 42.46.97c-1.76 0-3.22.93-4.13 2.62-.72 1.35-1.1 3.2-1.1 5.37s.38 4.01 1.1 5.36a4.59 4.59 0 0 0 4.13 2.62">
                                    </path>
                                    <path fill="#000"
                                        d="M51.4.49c-.8 0-1.45.65-1.45 1.45v17.78c-1.93.6-5.75 1.13-10.38 1.13h-2.2a1.45 1.45 0 0 0 0 2.9h2.2c2.64 0 7.21-.23 10.38-1.02v4.84a1.45 1.45 0 0 0 2.9 0V1.94c0-.8-.65-1.45-1.45-1.45">
                                    </path>
                                </g>
                            </svg></a>
                        <div class="editor-pc-header__right">
                            <div class="editor__save-section">
                                <div class="drop-down editor-draft-menu">
                                    <div class="editor-draft-menu-pc-button"><button type="button"
                                            class="editor-draft-menu-pc-button__save" disabled=""><span
                                                class="text-lg">임시저장</span><span class="text-md">저장</span></button>
                                    </div>
                                </div><button type="button" class="editor-submit-menu-pc-button"><span
                                        class="text-lg">발행신청</span><span class="text-md">발행</span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="editor__top">
            <div class="editor-top-section">
                <div class="editor-top-sub-section"><button class="editor-top-sub-section-header" type="button"
                        id="id-1-header" aria-labelledby="id-1 -content" aria-expanded="true">
                        <div class="editor-top-sub-section-header__left">
                            <div class="editor-top-sub-section-header__icon"><svg class="icon" width="25" height="25"
                                    viewBox="0 0 25 25" preserveAspectRatio="xMidYMid meet">
                                    <rect width="25" height="25" fill="#6ADFC4" rx="10"></rect>
                                    <g fill="#FFF" transform="translate(7 8)">
                                        <rect width="7" height="1.5" rx=".8"></rect>
                                        <rect width="11" height="1.5" y="4" rx=".8"></rect>
                                        <rect width="11" height="1.5" y="8" rx=".8"></rect>
                                    </g>
                                </svg></div>
                            <div class="editor-top-sub-section-header__title">집들이 작성 가이드</div>
                            <div class="editor-top-sub-section-header__sub-title">원활한 집들이 발행을 위해 꼭 읽어주세요.</div>
                        </div>
                        <div class="editor-top-sub-section-header__right"><svg
                                class="editor-top-section-expand-icon editor-top-section-expand-icon--open" width="1em"
                                height="1em" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet">
                                <path fill="currentColor" fill-rule="evenodd"
                                    d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path>
                            </svg></div>
                    </button>
                    <div class="open expanded" style="overflow: hidden;">
                        <div class="editor-top-sub-section-content" role="region" id="id-1 -content"
                            aria-labelledby="id-1-header">
                            <ul class="editor-top-guide-section">
                                <li>에디터의 섭외 없이 작성해주시는 경우엔 확인 후 <b>게시글 오픈이 반려될 수도 있습니다.</b>&nbsp;오픈 및 반려 여부는 <b>댓글로</b>
                                    안내 드립니다.</li>
                                <li>오픈 및 반려 여부 확인은 작성해주신 시점을 기준으로 일주일-10일 가량 소요되며,&nbsp;<b>댓글로</b> 결과를 안내 드립니다.</li>
                                <li>간단한 자기 소개 후 집에 관한 이야기를 들려주세요. (집 공간 사진 최소 15장 이상)</li>
                                <li>집 사진/소개글 관련해서 고민이 될 땐 이 링크를 참고해주세요.<ul>
                                        <li>혼자 사는 경우 (<a
                                                href="https://ohouseproject.notion.site/ohouseproject/b4ea386a07f94a1f9c544f4d0e5cff3b"
                                                target="_blank" rel="noopener noreferrer">바로가기</a>)</li>
                                        <li>함께 사는 경우 (<a
                                                href="https://ohouseproject.notion.site/7e6fdc44b042452a9bda246373666c7d"
                                                target="_blank" rel="noopener noreferrer">바로가기</a>)</li>
                                    </ul>
                                </li>
                                <li>도면이 있으면 좋아요. (손그림도 OK)</li>
                                <li>사진 속 제품 정보를 본문에 최대한 적어주세요. (제품분류/브랜드/제품명 순서)</li>
                                <li>사진 첨부 시 용량은 장당 최대 20MB까지 업로드할 수 있고, jpg, png, webp, heif, heic, gif 포맷을 지원합니다.</li>
                                <li>정보를 많이 입력할수록 검색 결과에 많이 노출되어 조회수가 올라갑니다.</li>
                                <li>커버사진과 제목은 에디터에 의해 변경될 수 있습니다.</li>
                                <li>글 작성과 이미지 업로드 시, 타인의 지식재산권을 침해하지 않도록 유의해주세요.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="editor-top-sub-section"><button class="editor-top-sub-section-header" type="button"
                        id="id-2-header" aria-labelledby="id-2 -content" aria-expanded="true">
                        <div class="editor-top-sub-section-header__left">
                            <div class="editor-top-sub-section-header__icon"><svg class="icon" width="26" height="26"
                                    viewBox="0 0 26 26" preserveAspectRatio="xMidYMid meet">
                                    <rect width="26" height="26" fill="#F8C332" rx="10"></rect>
                                    <g fill="none" stroke="#FFF">
                                        <path stroke-linejoin="round" stroke-width="1.2"
                                            d="M15.06 8.65l-6.9 6.88L7 18.98l3.45-1.15 6.9-6.9-2.3-2.28z"></path>
                                        <path stroke-width="1.2"
                                            d="M15.04 8.64l1.45-1.45a.65.65 0 01.93 0l1.37 1.38a.65.65 0 010 .92l-1.45 1.45">
                                        </path>
                                        <path d="M8.27 15.2l2.48 2.47"></path>
                                    </g>
                                </svg></div>
                         <form method="post" name="house-feed__form" enctype="multipart/form-data">
                            <div class="editor-top-sub-section-header__title">필수 정보 입력</div>
                            <div class="editor-top-sub-section-header__sub-title">공간을 이해하는데 필요한 정보이니 최대한 꼼꼼하게 입력해주세요.
                            </div>
                        </div>
                        <div class="editor-top-sub-section-header__right"><svg
                                class="editor-top-section-expand-icon editor-top-section-expand-icon--open" width="1em"
                                height="1em" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet">
                                <path fill="currentColor" fill-rule="evenodd"
                                    d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path>
                            </svg></div>
                    </button>
                    <div class="open expanded" style="overflow: hidden;">
                        <div class="editor-top-sub-section-content" role="region" id="id-2 -content"
                            aria-labelledby="id-2-header">
                            <div class="editor-metadata-form">
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">주거형태<span
                                            class="editor-form-group__required">*</span></div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input">
                                            <div class="css-pvwpix-EditorFieldRow eslktj0"><span
                                                    class="css-10hheuw-EditorFieldColumn e13w87p50">
                                                    <div class="input-group select-input"><select
                                                            name="house_kind" class="form-control empty">
                                                            <option value="">선택해주세요.</option>
                                                            <option value="본인 방">본인 방</option>
                                                            <option value="원룸">원룸</option>
                                                            <option value="오피스텔">오피스텔</option>
                                                            <option value="빌라&amp;연립">빌라&amp;연립</option>
                                                            <option value="아파트">아파트</option>
                                                            <option value="단독주택">단독주택</option>
                                                            <option value="협소주택">협소주택</option>
                                                            <option value="상업공간">상업공간</option>
                                                            <option value="사무공간">사무공간</option>
                                                            <option value="기타">기타</option>
                                                        </select><span class="select-input__icon"><svg class="icon"
                                                                width="10" height="10"
                                                                preserveAspectRatio="xMidYMid meet"
                                                                style="fill: currentcolor;">
                                                                <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                                                            </svg></span></div>
                                                </span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">평수<span
                                            class="editor-form-group__required">*</span></div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input"><span
                                                class="css-10hheuw-EditorFieldColumn e13w87p50">
                                                <div class="css-naoun-InputContainer eyipm3c1"><input placeholder=""
                                                        name="house_space" class="form-control" type="number"
                                                        value=""><span class="css-vqzo03-InputSuffix eyipm3c0">평</span>
                                                </div>
                                            </span></div>
                                    </div>
                                </div>
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">방 개수</div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input"><span
                                                class="css-10hheuw-EditorFieldColumn e13w87p50">
                                                <div class="input-group select-input"><select name="house_rooms"
                                                        class="form-control empty">
                                                        <option value="">선택해주세요.</option>
                                                        <option value="1개">1개</option>
                                                        <option value="1.5개">1.5개</option>
                                                        <option value="2개">2개</option>
                                                        <option value="3개">3개</option>
                                                        <option value="4개">4개</option>
                                                        <option value="5개 이상">5개 이상</option>
                                                    </select><span class="select-input__icon"><svg class="icon"
                                                            width="10" height="10" preserveAspectRatio="xMidYMid meet"
                                                            style="fill: currentcolor;">
                                                            <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                                                        </svg></span></div>
                                            </span></div>
                                    </div>
                                </div>
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">지역</div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input">
                                            <div class="css-pvwpix-EditorFieldRow eslktj0"><span
                                                    class="css-10hheuw-EditorFieldColumn e13w87p50">
                                                    <div class="panel-input">
                                                        <div class="drop-down panel-drop-down panel-input__input-wrap">
                                                            <button class="panel-input__input form-control empty"
                                                                type="button">선택해주세요.</button><span
                                                                class="panel-input__icon"><svg class="icon" width="10"
                                                                    height="10" preserveAspectRatio="xMidYMid meet"
                                                                    style="fill: currentcolor;">
                                                                    <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                                                                </svg></span></div>
                                                    </div>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">가족형태<span
                                            class="editor-form-group__required">*</span></div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input">
                                            <div class="css-pvwpix-EditorFieldRow eslktj0"><span
                                                    class="css-10hheuw-EditorFieldColumn e13w87p50">
                                                    <div class="input-group select-input"><select
                                                            name="family_kind" class="form-control empty">
                                                            <option value="" disabled="">선택해주세요.</option>
                                                            <option value="싱글라이프">싱글라이프</option>
                                                            <option value="신혼/부부가 사는집">신혼/부부가 사는집</option>
                                                            <option value="자녀가 있는 집">자녀가 있는 집</option>
                                                            <option value="부모님과 함께 사는 집">부모님과 함께 사는 집</option>
                                                            <option value="룸메이트와 함께 사는 집">룸메이트와 함께 사는 집</option>
                                                            <option value="기타">기타</option>
                                                        </select><span class="select-input__icon"><svg class="icon"
                                                                width="10" height="10"
                                                                preserveAspectRatio="xMidYMid meet"
                                                                style="fill: currentcolor;">
                                                                <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                                                            </svg></span></div>
                                                </span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">작업 분야<span
                                            class="editor-form-group__required">*</span></div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input"><span
                                                class="css-10hheuw-EditorFieldColumn e13w87p50">
                                                <div class="input-group select-input"><select name="working_area"
                                                        class="form-control empty">
                                                        <option value="">선택해주세요.</option>
                                                        <option value="홈스타일링">홈스타일링</option>
                                                        <option value="리모델링">리모델링</option>
                                                        <option value="부분시공">부분시공</option>
                                                        <option value="건축">건축</option>
                                                    </select><span class="select-input__icon"><svg class="icon"
                                                            width="10" height="10" preserveAspectRatio="xMidYMid meet"
                                                            style="fill: currentcolor;">
                                                            <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                                                        </svg></span></div>
                                            </span></div>
                                    </div>
                                </div>
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">기간</div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input">
                                            <div class="css-pvwpix-EditorFieldRow eslktj0">
                                                <ul class="radio-group-input editor-metadata-form__input-radio">
                                                    <li>
                                                        <div class="form-radio"><label class="form-radio-label"><input
                                                                    class="form-radio" type="radio" name="working_period"><span
                                                                    class="radio-img"></span>주</label></div>
                                                    </li>
                                                    <li>
                                                        <div class="form-radio"><label class="form-radio-label"><input
                                                                    class="form-radio" type="radio" name="working_period"><span
                                                                    class="radio-img"></span>개월</label></div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">예산</div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input">
                                            <div class="css-pvwpix-EditorFieldRow eslktj0"><span
                                                    width="132" class="css-11rd77j-EditorFieldColumn e13w87p50">
                                                    <div class="css-naoun-InputContainer eyipm3c1"><input
                                                            name="total_budget" class="form-control"
                                                            value="" type="number"><span
                                                            class="css-vqzo03-InputSuffix eyipm3c0">만원</span></div>
                                                </span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- security -->
            <sec:authorize access="isAuthenticated()" var="result">
		  		<sec:authentication property="principal.id" var="id"/>
		 		<sec:authentication property="principal" var="memberVO"/>
				id : <input type="text" name="house_id" value="${id}" readonly/><br>
				nickname : <input type="text" name="house_writer" value="${memberVO.nickname}" readonly/>
		  	</sec:authorize>	
            <!-- security -->
			
            <div class="editor-cover-image-input">
            	<button class="editor-cover-image-input__empty" type="button">
                    <p class="editor-cover-image-input__empty__text"><span class="pc-verbose">추가하기 버튼으로<br></span>커버 사진을 업로드해주세요.</p>
                    <p class="editor-cover-image-input__empty__size-text">* 권장 사이즈: 1920 x 1080, 최소 1400 x 930 (3:2 비율)</p>
                    <div class="editor-cover-image-input__empty__upload">커버 사진 추가하기</div>
                </button>
           </div>
           
           	<div id="hidden-man">
           		<input type="file" id="thumbnail-input" name="thumbnail" hidden="hidden"/>
           		<img id="View" src="#" hidden="hidden"/>
           	</div>
           	
            <div class="editor-title-input">
            <input class="editor-title-input__text" type="text" name="house_title" placeholder="제목을 입력해주세요." maxlength="30" value=""/>
                <div class="editor-title-input__limit">0 / 30</div>
            </div>
        </div>
        <div class="editor__content-wrap">
            <div class="editor-content-list">
                <div class="editor-content-list__content editor__content">
                    <textarea rows="5" cols="50" id="house_contents" name="house_contents"></textarea>
					<script>
						var ckeditor_config = {
							resize_enaleb : false,
							enterMode : CKEDITOR.ENTER_BR,
							shiftEnterMode : CKEDITOR.ENTER_P,
							filebrowserUploadUrl : "${pageContext.request.contextPath}/ckeditor/ckUpload"
						};
															 
							CKEDITOR.replace("house_contents", ckeditor_config);									
					</script>
                </div>
            </div>
        </div>
        </form>
        <div class="editor-help-section"><button class="editor-help-section-button" type="button" title="도움말"><svg
                    class="icon" width="28" height="28" viewBox="0 0 28 28" preserveAspectRatio="xMidYMid meet">
                    <rect width="28" height="28" fill="#FFF" rx="10"></rect>
                    <path fill="#828C94"
                        d="M14.24 6.22c.56.06 1.1.15 1.65.27 1.66.47 2.64 1.8 2.77 3.56A3.24 3.24 0 0117.35 13c-.44.35-.9.66-1.35 1a2.2 2.2 0 00-1 1.95 1.24 1.24 0 01-.89 1.25 1.38 1.38 0 01-1.6-.48 1.3 1.3 0 01-.2-.65 4.32 4.32 0 011.78-3.63c.5-.38.97-.8 1.41-1.24.21-.25.34-.55.36-.87.08-.88-.49-1.45-1.4-1.51-1.1-.07-2.03.22-2.68 1.19a1.3 1.3 0 01-1.35.62c-.93-.15-1.34-.91-.95-1.79a4 4 0 011.94-1.93 6.75 6.75 0 012.82-.69zm.93 13.96c.01 1-.55 1.6-1.53 1.6s-1.63-.58-1.64-1.41c0-1.16.52-1.74 1.56-1.77.84-.03 1.72.49 1.61 1.58z">
                    </path>
                </svg></button></div>
    </div>
    
<script type="text/javascript" src="../resources/js/housewarming/house_write.js"></script>    
</body>
</html>