<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@include file ="./import_quests/new_css.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/ckeditor/ckeditor.js"></script>
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
                            <div class="editor-command-list-pc"></div>
                        </div>
                        <div class="editor-pc-header__right">
                        <form method="post" name="question-feed__form">
                            <div class="editor__save-section">
                                <div class="drop-down editor-draft-menu">
                                	<sec:authorize access="isAuthenticated()" var="result">
						  				<sec:authentication property="principal" var="memberVO"/>
						  				<c:forEach items="${memberVO.roles}" var="role">
						  					<c:if test="${role.num eq 1}">
			                                	<div class="editor-draft-menu-pc-button" style="border:transparent;"><label class="form-check-label"><input class="notice-check"
				                                    type="checkbox" value="1" name="notice"/><span class="check-img"></span>공지 등록</label></div>
						  					</c:if>
						  				</c:forEach>
		  							</sec:authorize>	
                                    <div class="editor-draft-menu-pc-button"><button type="button"
                                            class="editor-draft-menu-pc-button__save"><span
                                                class="text-lg">임시저장</span><span class="text-md">저장</span></button>
                                    </div>
                                </div><button type="button" class="editor-submit-menu-pc-button"><span
                                        class="text-lg" name="">올리기</span><span class="text-md">올리기</span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
	        <div class="editor__top">
	            <div class="editor-top-section">
	                <div class="editor-top-sub-section"><button class="editor-top-sub-section-header" type="button"
	                        id="id-14-header" aria-labelledby="id-14 -content" aria-expanded="true" disabled="">
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
	                            <div class="editor-top-sub-section-header__title">질문과 답변 글 작성 가이드</div>
	                            <div class="editor-top-sub-section-header__sub-title"></div>
	                        </div>
	                        <div class="editor-top-sub-section-header__right"></div>
	                    </button>
	                    <div class="open expanded" style="overflow: hidden;">
	                        <div class="editor-top-sub-section-content" role="region" id="id-14 -content"
	                            aria-labelledby="id-14-header">
	                            <ul class="editor-top-guide-section">
	                                <li>참고가 되는 사진을 같이 공유해주시면 더 좋은 답변을 얻을 수 있습니다.</li>
	                                <li>비슷한 어려움을 겪는 유저를 위해 답변자에게 포인트를 지급하며, 답변이 달린 질문글은 삭제할 수 없습니다.</li>
	                                <li>인테리어와 관련 없는 질문은 숨김 및 삭제될 수 있습니다.</li>
	                                <li>상품/배송 등 쇼핑 관련 문의는&nbsp;<a href="/customer_center" target="_blank">고객센터</a>에서 요청해주세요.
	                                </li>
	                            </ul>
	                        </div>
	                    </div>
	                </div>
	            </div>	            
		            <sec:authorize access="isAuthenticated()" var="result">
		  				<sec:authentication property="principal.id" var="id"/>
		  				<sec:authentication property="principal" var="memberVO"/>
						id : <input type="text" name="quests_id" value="${id}" readonly/><br>
						nickname : <input type="text" name="quests_nickname" value="${memberVO.nickname}" readonly/>
		  			</sec:authorize>	
		            
		            <div class="editor-title-input"><input class="editor-title-input__text" type="text"
		                    placeholder="제목을 입력해주세요." maxlength="29" value="" name="quests_title"/>
		                <div class="editor-title-input__limit">0 / 30</div>
		                <script type="text/javascript">
		                /* Title 글자수 카운트 */
		                	$('.editor-title-input__text').on('keyup', function(){
		                		let strTitle=$(this).val();
		                		strTitle.length;
		                		$('.editor-title-input__limit').html(strTitle.length+'&nbsp;'+'/ 30');
		                	})
		                </script>
		            </div>
		        </div>
		        <div class="editor__content-wrap">
		            <div class="editor-content-list">
		                <div class="editor-content-list__content editor__content">
		                    <div class="editor-content-block-container editor-content-block-p-container">
		                        <textarea rows="5" cols="50" id="quests_contents" name="quests_contents"></textarea>
								<input type="hidden" name="list_contents" id="list_contents"/>
								<script>
									var ckeditor_config = {
									resize_enaleb : false,
									enterMode : CKEDITOR.ENTER_BR,
									shiftEnterMode : CKEDITOR.ENTER_P,
									filebrowserUploadUrl : "${pageContext.request.contextPath}/ckeditor/ckUpload"
									};
															 
									CKEDITOR.replace("quests_contents", ckeditor_config);									
								</script>
		                    </div>
		                </div>
		            </div>
		        </div>
		        <div class="editor__content css-1tlr0qw-BottomContainer ejkfmez1">
		            <div class="css-j2pi9o-Div e1hr3zkg0"><button class="css-1gyvuxu-KeywordButton eqajx1g0" type="button">클릭하여
		                    주요 키워드를 입력해주세요.(최대 5개)</button></div>
		        </div>
		        <input type="hidden" id="str_hashtags" name="hash_arr"/>
        </form>
        <div class="editor-help-section"><button class="editor-help-section-button" type="button" title="도움말"><svg
                    class="icon" width="28" height="28" viewBox="0 0 28 28" preserveAspectRatio="xMidYMid meet">
                    <rect width="28" height="28" fill="#FFF" rx="10"></rect>
                    <path fill="#828C94"
                        d="M14.24 6.22c.56.06 1.1.15 1.65.27 1.66.47 2.64 1.8 2.77 3.56A3.24 3.24 0 0117.35 13c-.44.35-.9.66-1.35 1a2.2 2.2 0 00-1 1.95 1.24 1.24 0 01-.89 1.25 1.38 1.38 0 01-1.6-.48 1.3 1.3 0 01-.2-.65 4.32 4.32 0 011.78-3.63c.5-.38.97-.8 1.41-1.24.21-.25.34-.55.36-.87.08-.88-.49-1.45-1.4-1.51-1.1-.07-2.03.22-2.68 1.19a1.3 1.3 0 01-1.35.62c-.93-.15-1.34-.91-.95-1.79a4 4 0 011.94-1.93 6.75 6.75 0 012.82-.69zm.93 13.96c.01 1-.55 1.6-1.53 1.6s-1.63-.58-1.64-1.41c0-1.16.52-1.74 1.56-1.77.84-.03 1.72.49 1.61 1.58z">
                    </path>
                </svg></button></div>
    </div>
    
     <!-- The Modal -->
    <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">공지</span></b></span></p>
                <div>
					<div class="css-c6b9dy-ContentBody e4qt54a1">
				        <dl class="css-drk099-GroupDl eele3ye3">
				            <dt class="css-dp5u7g-GroupDt eele3ye2">일반</dt>
				            <dd class="css-xdkdg4-GroupDd eele3ye1">
				                <ul class="checkbox-group-input css-m7cf62-GroupCheckboxGroupInput eele3ye0">
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>리모델링/올수리<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>견적<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>업체 추천<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>셀프인테리어<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>신혼<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>리폼<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>디자인 추천<span style="display:none;">,</span></label></div>
				                    </li>
				                </ul>
				            </dd>
				            <dt class="css-dp5u7g-GroupDt eele3ye2">부분 공정</dt>
				            <dd class="css-xdkdg4-GroupDd eele3ye1">
				                <ul class="checkbox-group-input css-m7cf62-GroupCheckboxGroupInput eele3ye0">
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>가벽<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>단열<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>도배<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>마루<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>목공<span style="display:none;">,</span><span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>몰딩<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>바닥<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>벽<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>붙박이<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>창호/창호<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>수리/복구<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>실리콘<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>외관/외벽<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>입주청소<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>장판<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>전기<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>조명<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>줄눈<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>천장<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>철거<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>콘센트<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>타일<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>페인트<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>필름<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>기타공정<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>기타청소<span style="display:none;">,</span></label></div>
				                    </li>
				                </ul>
				            </dd>
				            <dt class="css-dp5u7g-GroupDt eele3ye2">가구</dt>
				            <dd class="css-xdkdg4-GroupDd eele3ye1">
				                <ul class="checkbox-group-input css-m7cf62-GroupCheckboxGroupInput eele3ye0">
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>가구배치/이동<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>냉장고<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>블라인드<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>손잡이<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>수전/싱크대<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>소파<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>식탁<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>유리<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>에어컨<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>침대<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>TV<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>기타가구<span style="display:none;">,</span></label></div>
				                    </li>
				                </ul>
				            </dd>
				            <dt class="css-dp5u7g-GroupDt eele3ye2">공간</dt>
				            <dd class="css-xdkdg4-GroupDd eele3ye1">
				                <ul class="checkbox-group-input css-m7cf62-GroupCheckboxGroupInput eele3ye0">
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>단독주택<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>아파트<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>상가<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>원룸<span style="display:none;">,</span></label></div>
				                    </li>
				                </ul>
				            </dd>
				            <dt class="css-dp5u7g-GroupDt eele3ye2">평수</dt>
				            <dd class="css-xdkdg4-GroupDd eele3ye1">
				                <ul class="checkbox-group-input css-m7cf62-GroupCheckboxGroupInput eele3ye0">
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>10평미만<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>10평대<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>20평대<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>30평대<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>40평대<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>50평이상<span style="display:none;">,</span></label></div>
				                    </li>
				                </ul>
				            </dd>
				            <dt class="css-dp5u7g-GroupDt eele3ye2">실내 공간</dt>
				            <dd class="css-xdkdg4-GroupDd eele3ye1">
				                <ul class="checkbox-group-input css-m7cf62-GroupCheckboxGroupInput eele3ye0">
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>화장실<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>베란다<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>거실<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>주방<span style="display:none;">,</span></label></div>
				                    </li>
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>현관<span style="display:none;">,</span></label></div>
				                    </li>
				                </ul>
				            </dd>
				            <dt class="css-dp5u7g-GroupDt eele3ye2">기타</dt>
				            <dd class="css-xdkdg4-GroupDd eele3ye1">
				                <ul class="checkbox-group-input css-m7cf62-GroupCheckboxGroupInput eele3ye0">
				                    <li>
				                        <div class="form-check"><label class="form-check-label"><input class="form-check"
				                                    type="checkbox"><span class="check-img"></span>기타<span style="display:none;">,</span></label></div>
				                    </li>
				                </ul>
				            </dd>
				        </dl>
				    </div>                
                
                </div>
            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
                <span class="pop_bt" style="font-size: 13pt;" >
                     닫기
                </span>
            </div>
            <br>
            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="get_pop();">
                <span class="pop_bt" style="font-size: 13pt;" >
                     확인
                </span>
            </div>
      </div>
    </div>
    <div>
    	<button type="button" id="modalBtn">Hashtag Modal</button>
    </div>
        <!--End Modal-->

<script type="text/javascript">
	$('#modalBtn').click(function(){
		$('#myModal').show();
	})
     
	//팝업 Close 기능
    function close_pop(flag) {
		$("form-check").prop("checked", false);
    	$('#myModal').hide();
    }; 
    
    var hash_arr;
    
    function get_pop() {
    	var chbx_text = $("input[type=checkbox]:checked").parent().text();
    	hash_arr = chbx_text.split(',');
    	hash_arr = JSON.stringify(hash_arr);
        jQuery.ajaxSettings.traditional = true;
		
    	$('#myModal').hide();
    };
    
    $('.editor-submit-menu-pc-button').click(function(){
    	console.log(hash_arr);
    	var quests_id=$('[name=quests_id]').val();
    	var quests_nickname=$('[name=quests_nickname]').val();
    	var quests_title=$('[name=quests_title]').val();
		
		//textarea 내 tag들을 제외한(특히 <img> 얘를 제외한(공백은 포함)) 순수 text		
		var editorContent = CKEDITOR.instances.quests_contents.getData();
		var convertContent = editorContent.replace(/(<([^>]+)>)/ig,"");
		$('[name=list_contents]').val(convertContent);
		
    	console.log(quests_id, quests_nickname, quests_contents, quests_title);  	
    	 
    	if(quests_id!='' && quests_nickname!=''&&quests_title!=''){
	    	$('[name=question-feed__form]').attr('action', '/questions/new');
			$('[name=hash_arr]').val(hash_arr);
	    	
	    	$('[name=question-feed__form]').submit();
    	}
    	
    }) 
</script>
</body>
</html>