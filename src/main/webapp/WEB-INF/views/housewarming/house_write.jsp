<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="./import_house/write_css.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집들이 글쓰기 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
                        <div class="editor-pc-header__center">
                            <div class="editor-command-list-pc"><button class="editor-command-list-pc-button"
                                    aria-pressed="false" title="사진 추가" type="button"><svg class="icon"
                                        viewBox="0 0 29 29" height="29" width="29" preserveAspectRatio="xMidYMid meet">
                                        <g fill-rule="evenodd" fill="none">
                                            <rect rx="4" height="29" width="29"></rect>
                                            <g stroke-width="1.6" stroke="#525b61" transform="translate(4 4)">
                                                <rect rx="4" height="19.4" width="19.4" y=".8" x=".8"></rect>
                                                <path stroke-linejoin="round"
                                                    d="M.8 15.24L5.98 9.7l7.11 6.11 3.88-3.05 3.23 2.5"></path>
                                                <circle r="2.03" cy="6.87" cx="14.13"></circle>
                                            </g>
                                        </g>
                                    </svg></button><span class="editor-command-list-pc__divider"></span><button
                                    class="editor-command-list-pc-button editor-command-list-pc-button--disabled"
                                    disabled="" aria-pressed="false" title="제목" type="button"><span
                                        class="project-editor-command-list-content__icon-h2">제목</span></button><button
                                    class="editor-command-list-pc-button editor-command-list-pc-button--disabled"
                                    disabled="" aria-pressed="false" title="본문" type="button"><span
                                        class="project-editor-command-list-content__icon-p">본문</span></button><span
                                    class="editor-command-list-pc__divider"></span><button
                                    class="editor-command-list-pc-button editor-command-list-pc-button--disabled"
                                    disabled="" aria-pressed="false" title="굵게" type="button"><svg class="icon"
                                        width="29" height="29" viewBox="0 0 29 29" preserveAspectRatio="xMidYMid meet">
                                        <g fill="none" fill-rule="evenodd">
                                            <rect width="29" height="29" rx="4"></rect>
                                            <path
                                                d="M8 6h5.46c2.49 0 4.3.34 5.42 1.03 1.13.68 1.69 1.77 1.69 3.27.04.89-.22 1.76-.74 2.5a2.96 2.96 0 01-1.96 1.17v.12c1.11.24 1.9.69 2.39 1.35.52.77.78 1.7.73 2.62a4.27 4.27 0 01-1.73 3.64c-1.16.87-2.73 1.3-4.71 1.3H8zm3.72 6.73h2.16c1.01 0 1.74-.15 2.2-.45.47-.36.73-.92.68-1.5a1.49 1.49 0 00-.74-1.4 4.94 4.94 0 00-2.34-.43h-1.96zm0 2.86V20h2.43c1.02 0 1.78-.19 2.26-.57.52-.43.79-1.08.73-1.74 0-1.4-1.04-2.11-3.12-2.11z"
                                                fill="#525b61" fill-rule="nonzero"></path>
                                        </g>
                                    </svg></button><button
                                    class="editor-command-list-pc-button editor-command-list-pc-button--disabled"
                                    disabled="" aria-pressed="false" title="이탤릭" type="button"><svg class="icon"
                                        viewBox="0 0 29 29" height="29" width="29" preserveAspectRatio="xMidYMid meet">
                                        <g fill-rule="evenodd" fill="none">
                                            <rect rx="4" height="29" width="29"></rect>
                                            <g fill="#525b61" transform="translate(9 5)">
                                                <rect rx="1" height="2" width="8" y="16"></rect>
                                                <rect rx="1" height="2" width="8" y="1" x="3"></rect>
                                                <rect rx="1" height="17" width="2" y="1.04" x="4.55"
                                                    transform="rotate(10 5.55 9.54)"></rect>
                                            </g>
                                        </g>
                                    </svg></button><button
                                    class="editor-command-list-pc-button editor-command-list-pc-button--disabled"
                                    disabled="" aria-pressed="false" title="밑줄" type="button"><svg class="icon"
                                        viewBox="0 0 29 29" height="29" width="29" preserveAspectRatio="xMidYMid meet">
                                        <g fill-rule="evenodd" fill="none">
                                            <rect rx="4" height="29" width="29"></rect>
                                            <g transform="translate(6 7)">
                                                <path stroke-linejoin="round" stroke-linecap="round" stroke-width="2.1"
                                                    stroke="#525b61"
                                                    d="M3.19 0v5.35c0 3.5 2.38 6.34 5.31 6.34 2.93 0 5.31-2.84 5.31-6.34V0">
                                                </path>
                                                <rect rx="1" height="2.13" width="17" y="14.88" fill="#525b61"></rect>
                                            </g>
                                        </g>
                                    </svg></button><span class="editor-command-list-pc__divider"></span><button
                                    class="editor-command-list-pc-button editor-command-list-pc-button--disabled"
                                    disabled="" aria-pressed="false" title="검은색" type="button"><svg class="icon"
                                        width="29" height="29" viewBox="0 0 29 29" preserveAspectRatio="xMidYMid meet"
                                        style="color: rgb(66, 66, 66);">
                                        <circle fill="currentColor" cx="14.5" cy="14.5" r="8.5"></circle>
                                    </svg></button><button
                                    class="editor-command-list-pc-button editor-command-list-pc-button--disabled"
                                    disabled="" aria-pressed="false" title="빨간색" type="button"><svg class="icon"
                                        width="29" height="29" viewBox="0 0 29 29" preserveAspectRatio="xMidYMid meet"
                                        style="color: rgb(255, 119, 119);">
                                        <circle fill="currentColor" cx="14.5" cy="14.5" r="8.5"></circle>
                                    </svg></button><button
                                    class="editor-command-list-pc-button editor-command-list-pc-button--disabled"
                                    disabled="" aria-pressed="false" title="파란색" type="button"><svg class="icon"
                                        width="29" height="29" viewBox="0 0 29 29" preserveAspectRatio="xMidYMid meet"
                                        style="color: rgb(53, 197, 240);">
                                        <circle fill="currentColor" cx="14.5" cy="14.5" r="8.5"></circle>
                                    </svg></button><span class="editor-command-list-pc__divider"></span>
                                <div class="drop-down"><button
                                        class="editor-command-list-pc-button editor-command-list-pc-button--disabled"
                                        disabled="" aria-pressed="false" title="링크" type="button"><svg class="icon"
                                            viewBox="0 0 29 29" height="29" width="29"
                                            preserveAspectRatio="xMidYMid meet">
                                            <g fill-rule="evenodd" fill="none">
                                                <rect rx="4" height="29" width="29"></rect>
                                                <path fill-rule="nonzero" fill="#525b61" stroke-width=".2"
                                                    stroke="#525b61"
                                                    d="M14.24 8.82l2.51-2.52a4.37 4.37 0 012.7-1.29 4.24 4.24 0 014.5 3.6 4.25 4.25 0 01-1.19 3.62l-4.24 4.24a4.2 4.2 0 01-5.98 0 2.47 2.47 0 01-.33-.37.64.64 0 01.07-.88v0a.68.68 0 011 .05 2.85 2.85 0 002.28 1.1c.75 0 1.49-.3 2.04-.85l4.2-4.2c.5-.5.82-1.15.9-1.84a2.92 2.92 0 00-1.99-3.02 2.93 2.93 0 00-2.95.72l-1.9 1.91-.68.67a.68.68 0 01-.94 0v0a.68.68 0 010-.94zm.48 11.4a.68.68 0 000-.94v0a.68.68 0 00-.94 0l-2.53 2.53a2.89 2.89 0 01-2.93.72 2.9 2.9 0 01-1.15-4.8l4.26-4.26a2.85 2.85 0 012.05-.85c.78 0 1.5.3 2.05.85l.28.3c.23.32.69.37.99.1l.02-.03a.66.66 0 00.07-.85 4.15 4.15 0 00-3.64-1.68 4.38 4.38 0 00-2.79 1.28l-4.23 4.2A4.24 4.24 0 009.22 24a4.2 4.2 0 003-1.24z">
                                                </path>
                                            </g>
                                        </svg></button></div>
                            </div>
                        </div>
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
                                                href="https://ohouseproject.notion.site/b4ea386a07f94a1f9c544f4d0e5cff3b"
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
                                                            name="metadata.housingType.type" class="form-control empty">
                                                            <option value="" disabled="">선택해주세요.</option>
                                                            <option value="0">본인 방</option>
                                                            <option value="1">원룸</option>
                                                            <option value="2">오피스텔</option>
                                                            <option value="3">빌라&amp;연립</option>
                                                            <option value="4">아파트</option>
                                                            <option value="5">단독주택</option>
                                                            <option value="6">협소주택</option>
                                                            <option value="7">상업공간</option>
                                                            <option value="8">사무공간</option>
                                                            <option value="9">기타</option>
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
                                        <div class="editor-form-group__input">
                                            <div class="css-pvwpix-EditorFieldRow eslktj0">
                                                <ul class="radio-group-input editor-metadata-form__input-radio">
                                                    <li>
                                                        <div class="form-radio"><label class="form-radio-label"><input
                                                                    class="form-radio" type="radio"
                                                                    name="metadata.area.type"><span
                                                                    class="radio-img"></span>단층</label></div>
                                                    </li>
                                                    <li>
                                                        <div class="form-radio"><label class="form-radio-label"><input
                                                                    class="form-radio" type="radio"
                                                                    name="metadata.area.type"><span
                                                                    class="radio-img"></span>2층 단독/협소주택 </label></div>
                                                    </li>
                                                    <li>
                                                        <div class="form-radio"><label class="form-radio-label"><input
                                                                    class="form-radio" type="radio"
                                                                    name="metadata.area.type"><span
                                                                    class="radio-img"></span>3층 이상 단독/협소주택 </label>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">방 개수</div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input"><span
                                                class="css-10hheuw-EditorFieldColumn e13w87p50">
                                                <div class="input-group select-input"><select name="metadata.roomNumber"
                                                        class="form-control empty">
                                                        <option value="" disabled="">선택해주세요.</option>
                                                        <option value="0">1개</option>
                                                        <option value="1">1.5개</option>
                                                        <option value="2">2개</option>
                                                        <option value="3">3개</option>
                                                        <option value="4">4개</option>
                                                        <option value="5">5개 이상</option>
                                                    </select><span class="select-input__icon"><svg class="icon"
                                                            width="10" height="10" preserveAspectRatio="xMidYMid meet"
                                                            style="fill: currentcolor;">
                                                            <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                                                        </svg></span></div>
                                            </span></div>
                                    </div>
                                </div>
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">방향</div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input"><span
                                                class="css-10hheuw-EditorFieldColumn e13w87p50">
                                                <div class="input-group select-input"><select name="metadata.direction"
                                                        class="form-control empty">
                                                        <option value="" disabled="">선택해주세요.</option>
                                                        <option value="0">남향</option>
                                                        <option value="1">서향</option>
                                                        <option value="2">동향</option>
                                                        <option value="3">북향</option>
                                                        <option value="4">남서향</option>
                                                        <option value="5">남동향</option>
                                                        <option value="6">북서향</option>
                                                        <option value="7">북동향</option>
                                                    </select><span class="select-input__icon"><svg class="icon"
                                                            width="10" height="10" preserveAspectRatio="xMidYMid meet"
                                                            style="fill: currentcolor;">
                                                            <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                                                        </svg></span></div>
                                            </span></div>
                                    </div>
                                </div>
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">준공연차</div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input"><span
                                                class="css-10hheuw-EditorFieldColumn e13w87p50">
                                                <div class="input-group select-input"><select
                                                        name="metadata.buildingAge" class="form-control empty">
                                                        <option value="" disabled="">선택해주세요.</option>
                                                        <option value="0">입주예정</option>
                                                        <option value="1">~2년 미만</option>
                                                        <option value="2">2년~4년</option>
                                                        <option value="3">5년~10년</option>
                                                        <option value="4">11년~15년</option>
                                                        <option value="5">16년~20년</option>
                                                        <option value="6">21년~25년</option>
                                                        <option value="7">26년 이상 </option>
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
                                                </span><span class="css-10hheuw-EditorFieldColumn e13w87p50"><input
                                                        name="metadata.buildingName" placeholder="(선택) 아파트/건물명"
                                                        class="form-control" value=""></span></div>
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
                                                            name="metadata.family.type" class="form-control empty">
                                                            <option value="" disabled="">선택해주세요.</option>
                                                            <option value="0">싱글라이프</option>
                                                            <option value="1">신혼/부부가 사는집</option>
                                                            <option value="2">자녀가 있는 집</option>
                                                            <option value="3">부모님과 함께 사는 집</option>
                                                            <option value="4">룸메이트와 함께 사는 집</option>
                                                            <option value="5">기타</option>
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
                                    <div class="editor-form-group__label">반려동물 유무</div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input">
                                            <div class="css-raswpu-EditorFieldPanelRow etqfq8p0">
                                                <div class="panel-input">
                                                    <div class="drop-down panel-drop-down panel-input__input-wrap">
                                                        <button class="panel-input__input form-control empty"
                                                            type="button">선택해주세요.</button><span
                                                            class="panel-input__icon"><svg class="icon" width="10"
                                                                height="10" preserveAspectRatio="xMidYMid meet"
                                                                style="fill: currentcolor;">
                                                                <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                                                            </svg></span></div>
                                                    <ul class="panel-input__tag-list"></ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">가족 구성원수</div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input"><span
                                                class="css-10hheuw-EditorFieldColumn e13w87p50">
                                                <div class="css-naoun-InputContainer eyipm3c1"><input placeholder=""
                                                        name="metadata.numberOfFamilyMembers" class="form-control"
                                                        value=""><span class="css-vqzo03-InputSuffix eyipm3c0">명</span>
                                                </div>
                                            </span></div>
                                    </div>
                                </div>
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">작업 분야<span
                                            class="editor-form-group__required">*</span></div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input"><span
                                                class="css-10hheuw-EditorFieldColumn e13w87p50">
                                                <div class="input-group select-input"><select name="metadata.workType"
                                                        class="form-control empty">
                                                        <option value="" disabled="">선택해주세요.</option>
                                                        <option value="0">홈스타일링</option>
                                                        <option value="1">리모델링</option>
                                                        <option value="2">부분시공</option>
                                                        <option value="3">건축</option>
                                                    </select><span class="select-input__icon"><svg class="icon"
                                                            width="10" height="10" preserveAspectRatio="xMidYMid meet"
                                                            style="fill: currentcolor;">
                                                            <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                                                        </svg></span></div>
                                            </span></div>
                                    </div>
                                </div>
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">작업자<span
                                            class="editor-form-group__required">*</span></div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input">
                                            <div class="css-pvwpix-EditorFieldRow eslktj0">
                                                <ul class="radio-group-input editor-metadata-form__input-radio">
                                                    <li>
                                                        <div class="form-radio"><label class="form-radio-label"><input
                                                                    class="form-radio" type="radio"
                                                                    name="metadata.worker"><span
                                                                    class="radio-img"></span>셀프 • DIY</label></div>
                                                    </li>
                                                    <li>
                                                        <div class="form-radio"><label class="form-radio-label"><input
                                                                    class="form-radio" type="radio"
                                                                    name="metadata.worker"><span
                                                                    class="radio-img"></span>반셀프<div class="drop-down">
                                                                    <button type="button"
                                                                        class="editor-metadata-form-tooltip__button"><svg
                                                                            class="icon" width="13" height="13"
                                                                            viewBox="0 0 13 13"
                                                                            preserveAspectRatio="xMidYMid meet">
                                                                            <path fill="#BDBDBD"
                                                                                d="M6.5 13a6.5 6.5 0 1 1 0-13 6.5 6.5 0 0 1 0 13zm0-.87A5.63 5.63 0 1 0 6.5.87a5.63 5.63 0 0 0 0 11.26zM5.76 8.7h1.5v1.47h-1.5V8.7zM4.9 3c.4-.26.89-.39 1.47-.39.77 0 1.4.18 1.9.55.52.37.77.9.77 1.62 0 .44-.11.82-.33 1.12-.13.18-.38.41-.74.7l-.36.28c-.2.15-.33.33-.4.53a2.3 2.3 0 0 0-.06.6H5.79c.02-.57.07-.97.16-1.19.09-.21.32-.47.68-.75l.37-.3c.12-.08.22-.18.3-.29.13-.19.2-.39.2-.61 0-.26-.07-.5-.23-.7-.15-.22-.42-.32-.82-.32-.4 0-.67.13-.84.39a1.5 1.5 0 0 0-.24.8H3.9c.04-.96.38-1.64 1.01-2.04z">
                                                                            </path>
                                                                        </svg></button></div></label></div>
                                                    </li>
                                                    <li>
                                                        <div class="form-radio"><label class="form-radio-label"><input
                                                                    class="form-radio" type="radio"
                                                                    name="metadata.worker"><span
                                                                    class="radio-img"></span>전문가</label></div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">세부 시공 범위</div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input">
                                            <div class="css-raswpu-EditorFieldPanelRow etqfq8p0">
                                                <div class="panel-input">
                                                    <div class="drop-down panel-drop-down panel-input__input-wrap">
                                                        <button class="panel-input__input form-control empty"
                                                            type="button">선택해주세요.</button><span
                                                            class="panel-input__icon"><svg class="icon" width="10"
                                                                height="10" preserveAspectRatio="xMidYMid meet"
                                                                style="fill: currentcolor;">
                                                                <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                                                            </svg></span></div>
                                                    <ul class="panel-input__tag-list"></ul>
                                                </div>
                                            </div>
                                        </div>
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
                                                                    class="form-radio" type="radio"><span
                                                                    class="radio-img"></span>주</label></div>
                                                    </li>
                                                    <li>
                                                        <div class="form-radio"><label class="form-radio-label"><input
                                                                    class="form-radio" type="radio"><span
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
                                                    class="css-12vjwus-LabelSpan e14o32zb1" width="82">총예산</span><span
                                                    width="132" class="css-11rd77j-EditorFieldColumn e13w87p50">
                                                    <div class="css-naoun-InputContainer eyipm3c1"><input
                                                            name="metadata.budget2.total" class="form-control"
                                                            value=""><span
                                                            class="css-vqzo03-InputSuffix eyipm3c0">만원</span></div>
                                                </span></div>
                                            <div class="css-pvwpix-EditorFieldRow eslktj0"><span
                                                    class="css-12vjwus-LabelSpan e14o32zb1" width="82">공사/시공</span><span
                                                    width="132" class="css-11rd77j-EditorFieldColumn e13w87p50">
                                                    <div class="css-naoun-InputContainer eyipm3c1"><input
                                                            name="metadata.budget2.construction" class="form-control"
                                                            value=""><span
                                                            class="css-vqzo03-InputSuffix eyipm3c0">만원</span></div>
                                                </span></div>
                                            <div class="css-pvwpix-EditorFieldRow eslktj0"><span
                                                    class="css-12vjwus-LabelSpan e14o32zb1" width="82">홈스타일링</span><span
                                                    width="132" class="css-11rd77j-EditorFieldColumn e13w87p50">
                                                    <div class="css-naoun-InputContainer eyipm3c1"><input
                                                            name="metadata.budget2.styling" class="form-control"
                                                            value=""><span
                                                            class="css-vqzo03-InputSuffix eyipm3c0">만원</span></div>
                                                </span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">링크</div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input">
                                            <div class="editor-link-url-input">
                                                <div class="editor-link-url-input-item">
                                                    <div class="editor-link-url-input-item__row">
                                                        <div class="editor-link-url-input-item__field-left"><input
                                                                placeholder="URL 주소를 입력해주세요."
                                                                class="form-control editor-link-url-input-item__input"
                                                                value=""></div>
                                                    </div>
                                                    <div class="editor-link-url-input-item__row">
                                                        <div class="editor-link-url-input-item__field"><input
                                                                placeholder="표시할 내용"
                                                                class="form-control editor-link-url-input-item__input"
                                                                value=""></div>
                                                        <div class="editor-link-url-input-item__actions"><button
                                                                class="editor-link-url-input-item__action" type="button"
                                                                title="추가"><svg class="icon" width="29" height="29"
                                                                    viewBox="-3 -5 29 29"
                                                                    preserveAspectRatio="xMidYMid meet">
                                                                    <path
                                                                        d="M10.8 3.8v5H5.7c-.4 0-.7.3-.7.7 0 .4.3.7.7.7h5.1v5c0 .4.3.7.7.7.4 0 .7-.3.7-.7v-5h5.1c.4 0 .7-.3.7-.7 0-.4-.3-.7-.7-.7h-5.1v-5c0-.4-.3-.7-.7-.7-.4 0-.7.3-.7.7z"
                                                                        fill="#525B61" stroke="#525B61"
                                                                        stroke-width=".5"></path>
                                                                </svg></button><button
                                                                class="editor-link-url-input-item__action" type="button"
                                                                title="삭제" disabled=""><svg class="icon" width="29"
                                                                    height="29" viewBox="-3 -11 29 29"
                                                                    preserveAspectRatio="xMidYMid meet">
                                                                    <path
                                                                        d="M10.8 2.8H5.7c-.4 0-.7.3-.7.7 0 .4.3.7.7.7h11.6c.4 0 .7-.3.7-.7 0-.4-.3-.7-.7-.7h-6.5z"
                                                                        fill="#525B61" stroke="#525B61"
                                                                        stroke-width=".5"></path>
                                                                </svg></button></div>
                                                    </div>
                                                </div>
                                                <p class="editor-metadata-form__input-footnote">URL은 최대 4개까지 입력할 수 있습니다.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="editor-form-group">
                                    <div class="editor-form-group__label">저작권 표기(C)</div>
                                    <div class="editor-form-group__content">
                                        <div class="editor-form-group__input"><span
                                                class="css-10hheuw-EditorFieldColumn e13w87p50"><input
                                                    name="metadata.copyright" placeholder="사진 저작자를 입력해주세요."
                                                    class="form-control" value=""></span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="editor-cover-image-input"><button class="editor-cover-image-input__empty" type="button">
                    <p class="editor-cover-image-input__empty__text"><span class="pc-verbose">드래그 앤 드롭이나 추가하기
                            버튼으로<br></span>커버 사진을 업로드해주세요.</p>
                    <p class="editor-cover-image-input__empty__size-text">* 권장 사이즈: 1920 x 1080, 최소 1400 x 930 (3:2 비율)
                    </p>
                    <div class="editor-cover-image-input__empty__upload">커버 사진 추가하기</div>
                </button></div>
            <div class="editor-title-input"><input class="editor-title-input__text" type="text"
                    placeholder="제목을 입력해주세요." maxlength="30" value="">
                <div class="editor-title-input__limit">0 / 30</div>
            </div>
        </div>
        <div class="editor__content-wrap">
            <div class="editor-content-list">
                <div class="editor-content-list__content editor__content">
                    <div class="editor-content-block-placeholder">내용을 입력해주세요.</div>
                </div>
            </div>
        </div>
        <div class="editor-help-section"><button class="editor-help-section-button" type="button" title="도움말"><svg
                    class="icon" width="28" height="28" viewBox="0 0 28 28" preserveAspectRatio="xMidYMid meet">
                    <rect width="28" height="28" fill="#FFF" rx="10"></rect>
                    <path fill="#828C94"
                        d="M14.24 6.22c.56.06 1.1.15 1.65.27 1.66.47 2.64 1.8 2.77 3.56A3.24 3.24 0 0117.35 13c-.44.35-.9.66-1.35 1a2.2 2.2 0 00-1 1.95 1.24 1.24 0 01-.89 1.25 1.38 1.38 0 01-1.6-.48 1.3 1.3 0 01-.2-.65 4.32 4.32 0 011.78-3.63c.5-.38.97-.8 1.41-1.24.21-.25.34-.55.36-.87.08-.88-.49-1.45-1.4-1.51-1.1-.07-2.03.22-2.68 1.19a1.3 1.3 0 01-1.35.62c-.93-.15-1.34-.91-.95-1.79a4 4 0 011.94-1.93 6.75 6.75 0 012.82-.69zm.93 13.96c.01 1-.55 1.6-1.53 1.6s-1.63-.58-1.64-1.41c0-1.16.52-1.74 1.56-1.77.84-.03 1.72.49 1.61 1.58z">
                    </path>
                </svg></button></div>
    </div>
</body>
</html>