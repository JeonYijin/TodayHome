<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문과답변:insert게시판</title>
<link rel="stylesheet" href="https://static.ohou.se/dist/css/routes-Content-QuestionForm-8f1bad75.chunk.css">
<link rel="stylesheet" href="https://static.ohou.se/assets/v3/layout/application_react-790a108e6a9b26136290c8bea25696fec3e4701284512f9eed313b7dbb352615.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

	<div class="editor">
        <div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false" data-sticky-ignore="false" data-direction="top" data-offset="0" class="sticky-container editor__header-wrap" style="position: sticky; top: 0px;"><div class="sticky-child editor__header" style="position: relative;">
            <div class="editor-mobile-header">
                <div class="editor-mobile-header__top">
                    <div class="editor-mobile-header__top-left">
                        <button class="editor-back-button" type="button" title="뒤로">
                            <svg class="icon" width="24" height="24" preserveAspectRatio="xMidYMid meet">
                                <path d="M3.7 12.5h18.8v-1H3.7l7.8-7.8-.7-.7L2 11.7l.3.3-.3.3 8.8 8.7.7-.7-7.8-7.8z" fill="#000" fill-opacity=".7" fill-rule="evenodd"></path>
                            </svg></button>
                        </div>
                        <h1 class="editor-mobile-header__title">글쓰기</h1>
                        <div class="editor-mobile-header__top-right"></div>
                    </div>
                    <div class="editor-mobile-header__bottom">
                        <div class="editor-mobile-header__content"></div>
                        <div class="editor-mobile-header__bottom-right"></div>
                    </div>
                </div>
                <div class="editor-pc-header">
                    <div class="editor-pc-header__content">
                        <a class="editor-pc-header__logo" aria-label="오늘의집" href="/">
                            <svg class="icon" width="74" height="30" viewBox="0 0 74 30" preserveAspectRatio="xMidYMid meet">
                                <g fill="none" fill-rule="evenodd">
                                    <path fill="#000" d="M14.2 25.17H9.28V20.7a1.45 1.45 0 0 0-2.9 0v4.47H1.44a1.45 1.45 0 1 0 0 2.9H14.2a1.45 1.45 0 0 0 0-2.9M4.5 9.15c0-4.6 2.08-5.28 3.33-5.28 1.24 0 3.33.69 3.33 5.28v.36c0 4.6-2.09 5.28-3.33 5.28-1.25 0-3.34-.69-3.34-5.28v-.36zm3.33 8.54c3.84 0 6.23-3.13 6.23-8.18v-.36c0-5.05-2.39-8.18-6.23-8.18-3.85 0-6.24 3.13-6.24 8.18v.36c0 5.05 2.39 8.19 6.24 8.19zm25.54-7.34H17.81a1.45 1.45 0 0 0 0 2.9h15.56a1.45 1.45 0 1 0 0-2.9m-1.55 15.5c-7.08 1.83-9.45.79-10.14.25-.45-.35-.65-.8-.65-1.48v-.87h10.25c.8 0 1.46-.65 1.46-1.45v-5.08c0-.8-.66-1.45-1.46-1.45h-11.7a1.45 1.45 0 1 0 0 2.9h10.25v2.18H19.57c-.8 0-1.45.65-1.45 1.45v2.32a4.6 4.6 0 0 0 1.78 3.78c1.2.93 2.94 1.39 5.21 1.39 2.05 0 4.54-.38 7.44-1.13a1.45 1.45 0 1 0-.73-2.82M20.3 7.83h10.8a1.45 1.45 0 1 0 0-2.9h-9.35V1.45a1.45 1.45 0 1 0-2.9 0v4.93c0 .8.65 1.45 1.45 1.45"></path>
                                    <rect width="3" height="15" x="70" fill="#000" rx="1.5"></rect>
                                    <path fill="#000" d="M64.5 13.28a1.45 1.45 0 0 0 2.73-1c-.05-.13-1-2.68-3.38-4.5l3.7-4.1a1.45 1.45 0 0 0-1.09-2.42h-9.05a1.45 1.45 0 1 0 0 2.9h5.8l-6.88 7.64a1.45 1.45 0 1 0 2.16 1.95l3.41-3.8a8 8 0 0 1 2.6 3.33M69.56 26.52h-7.01a.82.82 0 0 1-.82-.82v-1.95h8.65v1.95c0 .45-.37.82-.82.82m2.27-9.37c-.8 0-1.45.65-1.45 1.45v2.25h-8.65V18.6a1.45 1.45 0 1 0-2.9 0v7.1a3.73 3.73 0 0 0 3.72 3.72h7.01a3.73 3.73 0 0 0 3.72-3.72v-7.1c0-.8-.65-1.45-1.45-1.45M42.46 3.87c2.22 0 2.33 4.24 2.33 5.08 0 .85-.11 5.09-2.33 5.09-2.21 0-2.32-4.24-2.32-5.08 0-.86.11-5.09 2.32-5.09m0 13.07c1.76 0 3.23-.93 4.14-2.62.71-1.34 1.1-3.2 1.1-5.36s-.39-4.02-1.1-5.37A4.6 4.6 0 0 0 42.46.97c-1.76 0-3.22.93-4.13 2.62-.72 1.35-1.1 3.2-1.1 5.37s.38 4.01 1.1 5.36a4.59 4.59 0 0 0 4.13 2.62"></path>
                                    <path fill="#000" d="M51.4.49c-.8 0-1.45.65-1.45 1.45v17.78c-1.93.6-5.75 1.13-10.38 1.13h-2.2a1.45 1.45 0 0 0 0 2.9h2.2c2.64 0 7.21-.23 10.38-1.02v4.84a1.45 1.45 0 0 0 2.9 0V1.94c0-.8-.65-1.45-1.45-1.45"></path>
                                </g>
                            </svg>
                        </a>
                        <div class="editor-pc-header__center">
                            <div class="editor-command-list-pc"></div>
                        </div>
                        <div class="editor-pc-header__right">
                            <div class="editor__save-section">
                                <div class="drop-down editor-draft-menu">
                                    <div class="editor-draft-menu-pc-button">
                                        <button type="button" class="editor-draft-menu-pc-button__save">
                                            <span class="text-lg">임시저장</span>
                                            <span class="text-md">저장</span>
                                        </button>
                                    </div>
                                </div>
                                <button type="button" class="editor-submit-menu-pc-button">
                                    <span class="text-lg">올리기</span>
                                    <span class="text-md">올리기</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="editor__top">
            <div class="editor-top-section">
                <div class="editor-top-sub-section">
                    <button class="editor-top-sub-section-header" type="button" id="id-3-header" aria-labelledby="id-3 -content" aria-expanded="true" disabled="">
                        <div class="editor-top-sub-section-header__left">
                            <div class="editor-top-sub-section-header__icon">
                                <svg class="icon" width="25" height="25" viewBox="0 0 25 25" preserveAspectRatio="xMidYMid meet">
                                    <rect width="25" height="25" fill="#6ADFC4" rx="10"></rect>
                                    <g fill="#FFF" transform="translate(7 8)">
                                        <rect width="7" height="1.5" rx=".8"></rect>
                                        <rect width="11" height="1.5" y="4" rx=".8"></rect>
                                        <rect width="11" height="1.5" y="8" rx=".8"></rect>
                                    </g>
                                </svg>
                            </div>
                            <div class="editor-top-sub-section-header__title">질문과 답변 글 작성 가이드</div>
                            <div class="editor-top-sub-section-header__sub-title"></div>
                        </div>
                        <div class="editor-top-sub-section-header__right"></div>
                    </button>
                    <div class="open expanded" style="overflow: hidden;">
                        <div class="editor-top-sub-section-content" role="region" id="id-3 -content" aria-labelledby="id-3-header">
                            <ul class="editor-top-guide-section">
                                <li>참고가 되는 사진을 같이 공유해주시면 더 좋은 답변을 얻을 수 있습니다.</li><li>비슷한 어려움을 겪는 유저를 위해 답변자에게 포인트를 지급하며, 답변이 달린 질문글은 삭제할 수 없습니다.</li><li>인테리어와 관련 없는 질문은 숨김 및 삭제될 수 있습니다.</li>
                                <li>상품/배송 등 쇼핑 관련 문의는&nbsp;<a href="/customer_center" target="_blank">고객센터</a>에서 요청해주세요.
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
            
            <div class="editor-title-input editor-title-input--errored">
                <input class="editor-title-input__text" type="text" id="writed_title" placeholder="제목을 입력해주세요." maxlength="30" value="">
                <div class="editor-title-input__limit">0 / 30</div>
            </div>
            <div class="editor__title-error">필수 입력 항목입니다.</div>
        </div>
        
        <form action="/questions/new" method="post" enctype="multipart/form-data">
	        <!-- [form 제출용 TITLE input: START] -->
	        
	        <sec:authorize access="isAuthenticated()" var="result">
		        <input type="hidden" value="" name="title" id="title_forSubmit"/>
		        <sec:authentication property="principal.id" var="id"/>
		        <sec:authentication property="principal.nickname" var="nickname"/>
		        <input type="hidden" value="${id}" name="id"/>
		        <input type="hidden" value="${nickname}" name="nickname"/>
		        <input type="hidden" value="dd" name="contents" id="contents_forSubmit"/>
	        </sec:authorize>
	        <!-- [form 제출용 TITLE input : END] -->
	        <div class="editor__content-wrap">
	            <div class="editor-content-list">
	                <div class="editor-content-list__content editor__content">
	                    <div class="editor-content-block-container editor-content-block-p-container">
	                        <div class="editor-content-block-text editor-content-block editor-content-block-selectable-text editor-content-block-p initialHolder" contenteditable="true" data-ph="내용을 입력해주세요."></div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <button type="submit">글 전송</button>
		</form>	            
	        <div class="editor__content css-1tlr0qw-BottomContainer ejkfmez1">
	            <div class="css-j2pi9o-Div e1hr3zkg0">
	                <button class="css-1gyvuxu-KeywordButton eqajx1g0" type="button">클릭하여 주요 키워드를 입력해주세요.(최대 5개)</button>
	            </div>
	        </div>
	        
<hr>
	<sec:authorize access="isAuthenticated()" var="result">
		<a href="./member/usePrincipal">usePrincipal</a>
		<a href="./member/useSession">useSession</a>
	
		<h3>${result}</h3>
  		<h3>MemberVO<sec:authentication property="principal" var="memberVO"/></h3>
  		<h3>MemberVO ID : <sec:authentication property="principal.id" var="id"/></h3>
  		<h3>${memberVO}</h3>
  		<h3 style="color:red; text-weight:bold; font-size:large;" id="userId">
  			${id}
  		</h3>
  	</sec:authorize>	
<hr>	        
	        
	        
	        
	        
	 <div class="append_wrap" style="width:500px; height:500px; background-color:yellow; border:1px solid red;">
	 <button type="button" id="append_btn" onclick="">append ON</button>
	 <button type="button" id="count_p_btn" onclick="">count p tag</button>
	 	<div class="append_contents" onkeyup="if(window.event.keyCode==13){test()}">
	 		<div contenteditable="true" data-ph="내용을 기입해주세요"></div>
	 	</div>
	 </div>       

<script>
function test() { 
	
    
    $('.append_contents').after('<div contenteditable="true" onkeyup="if(window.event.keyCode==13){test()}><p contenteditable="true">그라샤~</p></div>');
	$('.focusing').focus();
}
</script>




<script type="text/javascript">
/* --------------------------------- */
function removePlaceholder() {		
	$('#ptag_1').removeAttr('data-ph');
}

function createPlaceholder() {
	if($('#ptag_1').html() == ''){
		$('#ptag_1').attr('data-ph', '내용을 기입해주세요');
	}
}



</script>




	       
<script type="text/javascript">
$('#writed_title').blur(function(){
	$('#title_forSubmit').val($('#writed_title').val());
})

$('#initialHolder').blur(function(){
	$('#contents_forSubmit').val($('.initialHolder').text());
})
</script>
<script type="text/javascript">
    //이미지 1개 미리보기 연습
    var sel_file;
 
    $(document).ready(function() {
        $("#file1").on("change", handleImgFileSelect);
    });
 
    function handleImgFileSelect(e) {
        var files = e.target.files;
        var filesArr = Array.prototype.slice.call(files);
 
        var reg = /(.*?)\/(jpg|jpeg|png|bmp)$/;
 
        filesArr.forEach(function(f) {
            if (!f.type.match(reg)) {
                alert("확장자는 이미지 확장자만 가능합니다.");
                return;
            }
 
            sel_file = f;
 
            var reader = new FileReader();
            reader.onload = function(e) {
                $("#img").attr("src", e.target.result);
            }
            reader.readAsDataURL(f);
        });
    }
</script>
<script>

 	function enterkey() {
		if (window.event.keyCode == 13) {
	    	//엔터키가 눌렸을 때
	    	alert('enterKey 감지');
	    }
	} 
</script>
<script type="text/javascript" src="../resources/js/questions01.js"></script>	
</body>
</html>