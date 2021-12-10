/**
 *  connected : house_detail.jsp
 */


	var loginId = $('#memberVO_id').val();
	var writerId = '${houseVO.house_writer}';

	console.log('loginId='+loginId);
	console.log('writerId='+writerId);	                    	
		                    		
	if(loginId == writerId) {
		$('.qna-detail__content__action-group').removeAttr('style');
	}
		                    	
	let houseId = '${memberVO.id}';
	let houseNum = $('[name=hnum]').val();

	console.log('houseId='+houseId);
	console.log('houseNum='+houseNum)
		                    		
	$('.qDelete').click(function(){
		if(confirm('정말로 삭제하시겠어요?')){
			location.href='/questions/delete?quests_id='+houseId+'&quests_num='+houseNum;
		};
	})
	
var loginNick = $('#memberVO_nickname').val(); //로그인한 계정의 nickname

	console.log('loginNick='+loginNick)


$('[name=commentInsertBtn]').click(function(){ //댓글 등록 버튼 클릭시 
    var insertData = $('[name=comment-feed__form]').serialize(); //comment-feed__form의 내용을 가져옴
    commentInsert(insertData); //Insert 함수호출(아래)
});
 
//댓글 list 
function commentList(){
	
    $.ajax({
        url : '/hcomment/list',
        type : 'get',
        data : {'hnum':houseNum},
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
                a += '<button class="comment-feed__item__footer__reply-btn" id="dap" type="button" hnum="+'+value.hnum+'" cnum="'+value.cnum+'">답글 달기</button>';
                if(value.writer==loginNick){
                	a += '<button class="comment-feed__item__footer__delete-btn" type="button" onclick="commentDelete('+value.cnum+')">삭제</button>';
                } else {
                	a += '<button class="comment-feed__item__footer__report-btn" type="button">신고</button>';
                }
                a += '</footer></article></li>';
            });
            
            $(".commentList").html(a);
            $(".comment-feed__list").html(a);
            
            $.ajax({
            	url : '/hcomment/count',
            	type : 'get',
            	data : {'hnum':houseNum},
            	success : function(data){
            		$('.comment-feed__header__count').html(data);		
            	}
            });         
        }
    });
}

 
//댓글 insert
function commentInsert(insertData){
    $.ajax({
        url : '/hcomment/insert',
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
        url : '/hcomment/delete/'+cnum,
        type : 'post',
        success : function(data){
            if(data == 1) commentList(houseNum); //댓글 삭제후 목록 출력 
        }
    });
}

 
$(document).ready(function(){
    commentList(); //페이지 로딩시 댓글 목록 출력 
});

	const num=$('#hid_num').val();
	const userid=$('input[name=quests_id]').val();

	$('#updateBtn').click(function(){
		location.href="/questions/update?quests_num="+num+"&quests_id="+userid;
	})
	
	$('#deleteBtn').click(function(){
		location.href="/questions/delete?quests_num="+num+"&quests_id="+userid;
	})	
