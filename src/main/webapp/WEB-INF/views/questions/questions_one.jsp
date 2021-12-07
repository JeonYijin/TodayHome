<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="alternate" href="android-app://net.bucketplace/http/ohou.se/deep">
<link rel="apple-touch-icon" sizes="57x57" href="https://assets.ohou.se/web/assets/bookmark_icon/favicon_57x57.png">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&amp;display=swap&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/preamble-97ede701.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/containers-CommentFeed-CommentFeedProvider-a043973d.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/templates-Content-Question-Detail-QnADetail-35489697.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/21-0e75de9b.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/23-2ef16b9a.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/App-6e6c2f0c.chunk.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
</head>
<body>
<main class="qna-detail">
        <article class="qna-detail__container container">
            <section class="qna-detail__container__content">
                <header class="qna-detail__content__header-container">
                    <div class="qna-detail__content__header-top"><a class="qna-detail__content__header-subtitle"
                            href="/questions">질문과 답변</a></div>
                    <h1 class="qna-detail__content__header-title">${quest.quests_title}</h1>
                    <address class="qna-detail-author qna-detail__content__header-author-section">
                    	<a class="qna-detail-author__profile-link" href="/users/2923954">
                            <div class="qna-detail-author__profile-link__image">
                            	<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72&amp;h=72&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144&amp;h=144&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=240&amp;h=240&amp;c=c 3x">
                            </div>
                            <div class="qna-detail-author__profile-link__summary">
                                <div class="qna-detail-author__profile-link__summary-section"><span
                                        class="qna-detail-author__profile-link__summary-nickname">${quest.quests_nickname}</span></div>
                                <div class="qna-detail-author__profile-link__summary-introduction"></div>
                            </div>
                        </a>
                        <div><a class="button button--color-gray-4 button--size-30 button--shape-4">팔로우</a></div>
                    </address>
		                    <div class="qna-detail__content__action-group" style="display:none;">
		                    	<a class="button button--color-gray-14-inverted button--size-30 button--shape-4 qna-detail__content__action-item" href="/questions/update?quests_id=${memberVO.id}&quests_num=${quest.quests_num}">수정</a>
		                    	<button class="button button--color-gray-14-inverted button--size-30 button--shape-4 qna-detail__content__action-item qDelete" type="button">삭제</button>
		                    </div>
	              
         
                </header>
                <section class="qna-detail__content__body">
                	${quest.quests_contents}
                </section>
                <footer class="qna-detail__footer">
                    <ul class="qna-detail__footer__keyword-list">
                    	<c:forEach items="${quest.tags}" var="tag">
                    		<li class="qna-detail__footer__keyword-list-item"><a
                                href="/questions?query=%EA%B2%AC%EC%A0%81">${tag.hashtag_name}</a></li>
                    	</c:forEach>
                        
                    </ul>
                    <aside class="qna-detail-actions qna-detail__footer__action-group">
                        <div class="drop-down qna-detail-actions__wrapper"><button
                                class="button button--color-gray-14-inverted button--size-30 button--shape-round qna-detail-actions__action"
                                type="button"><svg class="qna-detail-actions__action__icon" aria-label="공유하기" width="28"
                                    height="28" viewBox="0 0 28 28" preserveAspectRatio="xMidYMid meet">
                                    <g fill="none" fill-rule="evenodd">
                                        <g transform="translate(-124 -11)">
                                            <path d="M124 11h28v28h-28z"></path>
                                            <g stroke="#757575" transform="translate(126 12)">
                                                <circle cx="5" cy="13" r="4.5"></circle>
                                                <circle cx="19" cy="21" r="4.5"></circle>
                                                <circle cx="19" cy="5" r="4.5"></circle>
                                                <path stroke-linecap="square" d="M8.5 10.5l6-4M8.5 15.5l6 4"></path>
                                            </g>
                                        </g>
                                    </g>
                                </svg><span class="qna-detail-actions__action__label">공유</span></button></div>
                    </aside>
                    <div class="qna-detail__footer__metadata"><time>${quest.regDate}</time><span>조회<span
                                class="qna-detail__footer__metadata-view-count-value">${quest.reply}</span></span><span><button
                                class="qna-detail__footer__metadata-report-link" type="button">신고</button></span></div>
                </footer>
                <section class="qna-detail__comment-section">
                    <section class="comment-feed">
                        <h1 class="comment-feed__header">댓글&nbsp;<span class="comment-feed__header__count"></span>
                        </h1>
                        <sec:authorize access="isAuthenticated()" var="result">
                        <form class="comment-feed__form" name="comment-feed__form" method="post">
                            <div class="comment-feed__form__user"><img
                                    src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36"
                                    srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144 3x">
                            </div>
                            <div class="comment-feed__form__input">
                                <div class="comment-feed__form__content">
                                    <div class="comment-content-input">
                                        <div class="comment-content-input__text comment-feed__form__content__text"
                                            data-ph="댓글을 남겨 보세요." contenteditable="true"></div>
                                        <input type="hidden" name="contents" id="contents" value=''/>
                                        <script>
                                        	$('.comment-feed__form__content__text').on('keyup', function(){
                                        		$('#contents').val($('.comment-feed__form__content__text').html());
                                        	})
                                        </script>    
                                    </div>
                                    <div class="photo-input-wrap comment-feed__form__content__photo">
                                        <ul class="photo-input"></ul>
                                    </div>
                                </div>
                                
								  	<sec:authentication property="principal" var="memberVO"/>
		                            <input type="hidden" name="qnum" value="${quest.quests_num}"/>
		              				<input type="hidden" name="nickname" value="${memberVO.nickname}"/>
		              				<input type="hidden" name="id" id="memberVO_id" value="${memberVO.id}"/>
	              				
                            
                                <div class="comment-feed__form__actions">
                                	<button class="comment-feed__form__photo" aria-label="사진 업로드" type="button">
                                		<svg width="24" height="20" viewBox="0 0 24 20" preserveAspectRatio="xMidYMid meet">
                                            <path fill="#292929" fill-rule="nonzero" d="M3.22 20C1.446 20 0 18.547 0 16.765V6.176c0-1.782 1.446-3.235 3.22-3.235h3.118L7.363.377A.586.586 0 0 1 7.903 0h8.195c.24.003.453.152.54.377l1.024 2.564h3.118c1.774 0 3.22 1.453 3.22 3.235v10.589C24 18.547 22.554 20 20.78 20H3.22zm0-1.176h17.56a2.037 2.037 0 0 0 2.05-2.06V6.177c0-1.15-.904-2.058-2.05-2.058h-3.512a.585.585 0 0 1-.54-.368l-1.024-2.574H8.296L7.27 3.75a.585.585 0 0 1-.54.368H3.22a2.037 2.037 0 0 0-2.05 2.058v10.589c0 1.15.904 2.059 2.05 2.059zM12 17.059c-3.064 0-5.561-2.51-5.561-5.588 0-3.08 2.497-5.589 5.561-5.589s5.561 2.51 5.561 5.589c0 3.079-2.497 5.588-5.561 5.588zm0-1.177a4.392 4.392 0 0 0 4.39-4.411A4.392 4.392 0 0 0 12 7.059a4.392 4.392 0 0 0-4.39 4.412A4.392 4.392 0 0 0 12 15.882z">
                                            </path>
                                        </svg>
                                    </button>
                                    <button class="comment-feed__form__submit" aria-label="등록"
                                        type="button" name="commentInsertBtn">등록</button>
                                 
                               </div>
                            </div>
                        </form>
                        </sec:authorize>
                        <ul class="comment-feed__list">
                           
                        </ul>
                    </section>
                </section>
                <aside class="qna-detail-aside qna-detail__aside">
                    <div class="qna-detail-aside__section">
                        <h2 class="qna-detail-aside__section__header">인테리어 궁금한 것 물어보세요!</h2><button
                            class="button button--color-blue button--size-60 button--shape-4 qna-detail-aside__section__new-question-button"
                            type="button">질문하러 가기</button>
                    </div>
                </aside>
            </section>
            <nav class="qna-detail__container__sidebar">
                <div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false"
                    data-sticky-ignore="false" data-direction="top" data-offset="80.98957824707031"
                    class="sticky-container" style="position: sticky; top: 80.9896px;">
                    <div class="sticky-child" style="position: relative;">
                        <div class="qna-detail__container__sidebar__content">
                            <address class="qna-detail-author qna-detail__container__sidebar__author"><a
                                    class="qna-detail-author__profile-link" href="/users/2923954">
                                    <div class="qna-detail-author__profile-link__image"><img
                                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36"
                                            srcset="">
                                    </div>
                                    <div class="qna-detail-author__profile-link__summary">
                                        <div class="qna-detail-author__profile-link__summary-section"><span
                                                class="qna-detail-author__profile-link__summary-nickname">${quest.quests_nickname}</span>
                                        </div>
                                        <div class="qna-detail-author__profile-link__summary-introduction"></div>
                                    </div>
                                </a>
                                <div><a class="button button--color-gray-4 button--size-30 button--shape-4">팔로우</a>
                                </div>
                            </address>
                            <aside class="qna-detail-actions question__sidebar__actions">
                                <div class="drop-down qna-detail-actions__wrapper"><button
                                        class="button button--color-gray-14-inverted button--size-30 button--shape-round qna-detail-actions__action"
                                        type="button"><svg class="qna-detail-actions__action__icon" aria-label="공유하기"
                                            width="28" height="28" viewBox="0 0 28 28"
                                            preserveAspectRatio="xMidYMid meet">
                                            <g fill="none" fill-rule="evenodd">
                                                <g transform="translate(-124 -11)">
                                                    <path d="M124 11h28v28h-28z"></path>
                                                    <g stroke="#757575" transform="translate(126 12)">
                                                        <circle cx="5" cy="13" r="4.5"></circle>
                                                        <circle cx="19" cy="21" r="4.5"></circle>
                                                        <circle cx="19" cy="5" r="4.5"></circle>
                                                        <path stroke-linecap="square" d="M8.5 10.5l6-4M8.5 15.5l6 4">
                                                        </path>
                                                    </g>
                                                </g>
                                            </g>
                                        </svg><span class="qna-detail-actions__action__label">공유</span></button></div>
                            </aside>
                            <aside class="qna-detail-aside qna-detail__container__sidebar__aside">
                                <div class="qna-detail-aside__section">
                                    <h2 class="qna-detail-aside__section__header">인테리어 궁금한 것 물어보세요!</h2><button
                                        class="button button--color-blue button--size-60 button--shape-4 qna-detail-aside__section__new-question-button"
                                        type="button">질문하러 가기</button>
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>
            </nav>
        </article>
        <div data-sticky-enabled="false" data-sticky-disabled="true" data-sticky-always="false"
            data-sticky-ignore="true" data-direction="bottom" data-offset="0"
            class="sticky-container qna-detail__bottom-sticky-strip">
            <div class="sticky-child" style="position: relative;">
                <div class="qna-detail__bottom-sticky-strip__inner">
                    <aside class="qna-detail-actions qna-detail__bottom-sticky-strip__action-list">
                        <div class="drop-down qna-detail-actions__wrapper"><button
                                class="button button--color-gray-14-inverted button--size-30 button--shape-4 qna-detail-actions__action qna-detail-actions__action--minimal"
                                type="button"><svg class="qna-detail-actions__action__icon" aria-label="공유하기" width="28"
                                    height="28" viewBox="0 0 28 28" preserveAspectRatio="xMidYMid meet">
                                    <g fill="none" fill-rule="evenodd">
                                        <g transform="translate(-124 -11)">
                                            <path d="M124 11h28v28h-28z"></path>
                                            <g stroke="#757575" transform="translate(126 12)">
                                                <circle cx="5" cy="13" r="4.5"></circle>
                                                <circle cx="19" cy="21" r="4.5"></circle>
                                                <circle cx="19" cy="5" r="4.5"></circle>
                                                <path stroke-linecap="square" d="M8.5 10.5l6-4M8.5 15.5l6 4"></path>
                                            </g>
                                        </g>
                                    </g>
                                </svg></button></div>
                    </aside>
                    <div class="qna-detail__bottom-sticky-strip__button-group"><button
                            class="button button--color-blue button--size-50 button--shape-4 qna-detail__bottom-sticky-strip__button"
                            type="button">댓글 달기</button></div>
                </div>
            </div>
        </div>
    </main>
    
</body>


<script type="text/javascript">
	var loginId = $('#memberVO_id').val();	
	var writerId = '${quest.quests_id}';
		                    		
	if(loginId == writerId) {
		$('.qna-detail__content__action-group').removeAttr('style');
	}
		                    	
	let questsId = '${memberVO.id}';
	let questsNum = '${quest.quests_num}';
		                    		
	$('.qDelete').click(function(){
		if(confirm('정말로 삭제하시겠어요?')){
			location.href='/questions/delete?quests_id='+questsId+'&quests_num='+questsNum;
		};
	})
</script>
<script type="text/javascript">
var qnum = '${quest.quests_num}'; //게시글 번호

$('[name=commentInsertBtn]').click(function(){ //댓글 등록 버튼 클릭시 
    var insertData = $('[name=comment-feed__form]').serialize(); //comment-feed__form의 내용을 가져옴
    commentInsert(insertData); //Insert 함수호출(아래)
});
 
//댓글 list 
function commentList(){
	
    $.ajax({
        url : '/comment/list',
        type : 'get',
        data : {'qnum':qnum},
        success : function(data){
            var a =''; 
            $.each(data, function(key, value){ 
                a += '<li class="comment-feed__list__item">';
                a += '<article class="comment-feed__item">'+'<p class="comment-feed__item__content">';
                a += '<a href="#" class="comment-feed__item__content__author">';
                a += '<img class="comment-feed__item__content__author__image" alt="nickname" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144 3x">';
                a += '<span class="comment-feed__item__content__author__name">'+value.writer+'</span></a>';
                a += '<span class="comment-feed__item__content__content">'+value.contents+'</span></p>'
                a += '<footer class="comment-feed__item__footer">';
                a += '<time class="comment-feed__item__footer__time">'+value.regDate+'</time>';
                a += '<span class="comment-feed__item__footer__likes zero">';
                a += '<button class="comment-feed__item__footer__likes__icon" type="button"><svg class="badge" width="15" height="14" preserveAspectRatio="xMidYMid meet">';
                a += '<path fill-rule="evenodd" class="heart" d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z"></path></svg></button>';
                a += '<span class="comment-feed__item__footer__likes__count">'+value.heart+'</span></span>';
                a += '<button class="comment-feed__item__footer__like-btn" type="button">좋아요</button>';
                a += '<button class="comment-feed__item__footer__reply-btn" id="dap" type="button" qnum="+'+value.qnum+'" cnum="'+value.cnum+'">답글 달기</button>';
                a += '<button class="comment-feed__item__footer__report-btn" type="button">신고</button>';
                a += '</footer></article></li>';
            });
            
            $(".commentList").html(a);
            $(".comment-feed__list").html(a);
            
            $.ajax({
            	url : '/comment/count',
            	type : 'get',
            	data : {'qnum':qnum},
            	success : function(data){
            		$('.comment-feed__header__count').html(data);		
            	}
            });
            
        }
    });
}

//대댓글 달기 form 생성 click event
//대댓글기능 보완 필요
$('#dap').click(function(){ 
	alert('click됨');
	var b='';
		b += '<form class="comment-feed__form comment-feed__item__reply-form comment-feed__item__reply-form--no-comments">';
		b += '<input type="text" readonly name="cnum" value="'+cnum+'"/>';
		b += '<input type="text" readonly name="qnum" value="'+${quest.quests_num}+'"/>';
		b += '<div class="comment-feed__form__user">';
		b += "<img src='https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36' srcset='https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144 3x'>";
		b += '</div>';
		b += '<div class="comment-feed__form__input">';
		b += '<div class="comment-feed__form__content">';
		b += '<div class="comment-content-input">';
		b += '<div class="comment-content-input__text comment-feed__form__content__text" data-ph="댓글을 남겨 보세요."';
		b += 'contenteditable="true"><a class="comment-content-input__text__mention"';
		b += 'href="/users/12242720">'+'@'+writer+'</a>&nbsp;</div>';
		b += '</div>';
		b += '<div class="photo-input-wrap comment-feed__form__content__photo"><ul class="photo-input"></ul></div>';
		b += '</div>';
		b += '<div class="comment-feed__form__actions"><button class="comment-feed__form__photo" aria-label="사진 업로드" type="button">';
		b += '<svg width="24" height="20" viewBox="0 0 24 20" preserveAspectRatio="xMidYMid meet"><path fill="#292929" fill-rule="nonzero" d="M3.22 20C1.446 20 0 18.547 0 16.765V6.176c0-1.782 1.446-3.235 3.22-3.235h3.118L7.363.377A.586.586 0 0 1 7.903 0h8.195c.24.003.453.152.54.377l1.024 2.564h3.118c1.774 0 3.22 1.453 3.22 3.235v10.589C24 18.547 22.554 20 20.78 20H3.22zm0-1.176h17.56a2.037 2.037 0 0 0 2.05-2.06V6.177c0-1.15-.904-2.058-2.05-2.058h-3.512a.585.585 0 0 1-.54-.368l-1.024-2.574H8.296L7.27 3.75a.585.585 0 0 1-.54.368H3.22a2.037 2.037 0 0 0-2.05 2.058v10.589c0 1.15.904 2.059 2.05 2.059zM12 17.059c-3.064 0-5.561-2.51-5.561-5.588 0-3.08 2.497-5.589 5.561-5.589s5.561 2.51 5.561 5.589c0 3.079-2.497 5.588-5.561 5.588zm0-1.177a4.392 4.392 0 0 0 4.39-4.411A4.392 4.392 0 0 0 12 7.059a4.392 4.392 0 0 0-4.39 4.412A4.392 4.392 0 0 0 12 15.882z"></path></svg>';
		b += '</button><button class="comment-feed__form__submit" aria-label="등록" type="submit" disabled="">등록</button>';
		b += '</div>';
		b += '</div>';
		b += '</form>';
		
	//	$('.qna-detail__container container').append(b);
		
});

 
//댓글 insert
function commentInsert(insertData){
    $.ajax({
        url : '/comment/insert',
        type : 'post',
        data : insertData,
        success : function(data){
            if(data != 1) {
                commentList(); //댓글 작성 후 댓글 목록 reload
                $('.comment-feed__form__content__text').html('');
                //변경된 댓글수 page에 반영
                $('.comment-feed__header__count').html(data);
            }
        }
    });
}
 
//댓글 삭제 
function commentDelete(cnum){
    $.ajax({
        url : '/comment/delete/'+cnum,
        type : 'post',
        success : function(data){
            if(data == 1) commentList(qnum); //댓글 삭제후 목록 출력 
        }
    });
}
 
$(document).ready(function(){
    commentList(); //페이지 로딩시 댓글 목록 출력 
});

</script>
<script type="text/javascript">
	const num=$('#hid_num').val();
	const userid=$('input[name=quests_id]').val();

	$('#updateBtn').click(function(){
		location.href="/questions/update?quests_num="+num+"&quests_id="+userid;
	})
	
	$('#deleteBtn').click(function(){
		location.href="/questions/delete?quests_num="+num+"&quests_id="+userid;
	})	
</script>
</body>
</html>