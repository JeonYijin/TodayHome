<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="./import_house/list_css.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집들이 글목록</title>
</head>
<body>
<div class="layout">

<!-- 영자 판별 security tag test -->
<sec:authorize access="hasRole('ROLE_ADMIN')">

</sec:authorize>


	<%@ include file="../nav/header.jsp"%>

	<div class="container">
        <div class="project-feed">
            <div class="project-feed__filter">
                <div class="filter project-index__filter">
                    <div class="filter-bar">
                        <div class="filter-bar__control-list">
                            <ul class="filter-bar__control-list__left" style="position:absolute;">
                                <li class="filter-bar__control-list__item filter-bar__control-list__item--icon"><button
                                        class="filter-bar__control-list__icon" type="button" title="필터 전체"></button></li>
                                <li class="filter-bar__control-list__item" style="line-height: 10px;">
                                 <!-- Example single danger button -->
									<div class="btn-group">
										<button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
										 정렬
										</button>
										<ul class="dropdown-menu menu0" onchange="tag-list-insert(0, );">
										  <li value=""><a class="dropdown-item">최신순</a></li>
										  <li value=""><a class="dropdown-item">인기순</a></li>
										  <li value=""><a class="dropdown-item">과거순</a></li>
										</ul>
									</div>
                                </li>
                                <li class="filter-bar__control-list__item" style="line-height: 10px;">
                                    <div class="drop-down panel-drop-down filter-bar-control">
                                    <!-- Example single danger button -->
										<div class="btn-group">
										  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
										    주거형태
										  </button>
										  <ul class="dropdown-menu menu1">
										    <li><a class="dropdown-item" >원룸</a></li>
										    <li><a class="dropdown-item" >오피스텔</a></li>
										    <li><a class="dropdown-item" >아파트</a></li>
										    <li><a class="dropdown-item" >빌라&연립</a></li>
										    <li><a class="dropdown-item" >단독주택</a></li>
										    <li><a class="dropdown-item" >사무공간</a></li>
										    <li><a class="dropdown-item" >상업공간</a></li>
										    <li><a class="dropdown-item" >기타</a></li>
										  </ul>
										</div>
                                    </div>
                                </li>      
                                <li class="filter-bar__control-list__item" style="line-height: 10px;">
                                    <div class="drop-down panel-drop-down filter-bar-control">
                                    	<!-- Example single danger button -->
										<div class="btn-group">
										  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
										    평수
										  </button>
										  <ul class="dropdown-menu menu2">
										    <li><a class="dropdown-item" >1-9평</a></li>
										    <li><a class="dropdown-item" >10평대</a></li>
										    <li><a class="dropdown-item" >20평대</a></li>								    
										    <li><a class="dropdown-item" >30평대</a></li>
										    <li><a class="dropdown-item" >40평대</a></li>
										    <li><a class="dropdown-item" >50평 이상</a></li>
										  </ul>
										</div>
                                    </div>
                                </li>
                                <li class="filter-bar__control-list__item" style="line-height: 10px;">
                                    <div class="drop-down panel-drop-down filter-bar-control">
                                    	<!-- Example single danger button -->
										<div class="btn-group">
										  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
										    예산
										  </button>
										  <ul class="dropdown-menu menu3">
										    <li><a class="dropdown-item">1백만원 미만</a></li>
										    <li><a class="dropdown-item">2백만원대</a></li>
										    <li><a class="dropdown-item">3백만원대</a></li>
										    <li><a class="dropdown-item">4백만원대</a></li>
										    <li><a class="dropdown-item">5백만원대</a></li>
										    <li><a class="dropdown-item">1천만원 이상</a></li>
										  </ul>
										</div>
                                    </div>
                                </li>
                                <li class="filter-bar__control-list__item" style="line-height: 10px;">
                                    <div class="drop-down panel-drop-down filter-bar-control">
                                    	<!-- Example single danger button -->
										<div class="btn-group">
										  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
										    가족형태
										  </button>
										  <ul class="dropdown-menu menu4">
										    <li><a class="dropdown-item">싱글라이프</a></li>
										    <li><a class="dropdown-item">신혼 부부</a></li>
										    <li><a class="dropdown-item">아기가 있는 집</a></li>
										    <li><a class="dropdown-item">취학 자녀가 있는 집</a></li>
										    <li><a class="dropdown-item">부모님과 함께 사는 집</a></li>
										    <li><a class="dropdown-item">기타</a></li>
										  </ul>
										</div>
                                    </div>
                                </li>
                                <li class="filter-bar__control-list__item" style="line-height: 10px;">
                                    <div class="drop-down panel-drop-down filter-bar-control">
                                    	<!-- Example single danger button -->
										<div class="btn-group">
										  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
										    스타일
										  </button>
										  <ul class="dropdown-menu menu5">
										    <li value="0"><a class="dropdown-item">모던</a></li>
										    <li value="1"><a class="dropdown-item">미니멀&심플</a></li>
										    <li value="2"><a class="dropdown-item">내추럴</a></li>
										    <li value="3"><a class="dropdown-item">북유럽</a></li>
										    <li value="4"><a class="dropdown-item">빈티지&레트로</a></li>
										    <li value="5"><a class="dropdown-item">크래식&앤틱</a></li>
										    <li value="6"><a class="dropdown-item">프렌치&프로방스</a></li>
										    <li value="7"><a class="dropdown-item">러블리&로맨틱</a></li>
										    <li value="8"><a class="dropdown-item">인더스트리얼</a></li>
										    <li value="9"><a class="dropdown-item">한국&아시아</a></li>
										    <li value="10"><a class="dropdown-item">유니크&믹스매치</a></li>
										  </ul>
										</div>
                                    </div>
                                </li>
                                <li class="filter-bar__control-list__item" style="line-height: 10px;">
                                    <div class="drop-down panel-drop-down filter-bar-control">
                                    	<!-- Example single danger button -->
										<div class="btn-group">
										  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
										    분야
										  </button>
										  <ul class="dropdown-menu menu6">
										    <li><a class="dropdown-item">리모델링</a></li>
										    <li><a class="dropdown-item">홈스타일링</a></li>
										    <li><a class="dropdown-item">부분공사</a></li>
										    <li><a class="dropdown-item">건축</a></li>
										  </ul>
										</div>                                    
                                    </div>
                                </li>
                                <li
                                    class="filter-bar__control-list__item filter-bar__control-list__item--more filter-bar__control-list__item--more-mobile">
                                    
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <br><br>
                        <ul class="filter-bar__tag-list">
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="realShit">
            <!-- start -->
            <div class="project-feed__count">전체 ${countBoard}</div>
            <div class="virtualized-list row"
                style="padding-top: 0px; padding-bottom: 0px; transform: translateY(0px);">
                <c:forEach items="${list}" var="board">
                <div class="col-12 col-md-4" >
                    <article class="project-feed__item"><a class="project-feed__item__link"
                          href="/housewarming/detail?house_num=${board.house_num}&loginId=${loginId}"></a>
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
                                </svg></span>
                          
                                <c:if test="${empty board.scrap_id}">
                                <button onclick="scrapEvent(${board.house_num})" class="project-feed__item__image__scrap" type="button" aria-label="스크랩"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="icon"><defs><path id="scrap-icon-385-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-385-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-385-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-385-a)" href="#scrap-icon-385-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-385-b"></use><use fill="#000" filter="url(#scrap-icon-385-c)" href="#scrap-icon-385-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg></button>
                                <script>
	                                function scrapEvent(house_num) {
	                                	$. ajax({
	                                		url:'/housewarming/scrapUp',
	                                		type:'post',
	                                		data:{
	                                			'house_num':house_num,
	                                			'scrap_id':loginId
	                                		},
	                                		success:function(data){
	                                			if(data==1){
	                                				location.reload();				
	                                			}
	                                		},
	                                		error:function(){
	                                			if(loginId == null || loginId == ''){
	                                				alert('로그인을 해주세요.');
	                                			} else {
	                                				alert('스크랩 실패');	
	                                			}
	                                			
	                                		}
	                                	});
	                                }
                                </script>
                                </c:if>
                                <c:if test="${not empty board.scrap_id}">
                                	<button onclick="scrapDeleteEvent(${board.house_num})" class="project-feed__item__image__scrap project-feed__item__image__scrap--scrapped" type="button" aria-label="스크랩 취소"><svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path></svg></button>
                                		                              
                                </c:if>
                                
                                </div>
                        <h1 class="project-feed__item__title">${board.house_title}</h1>
                        <address class="project-feed__item__writer-wrap"><a class="project-feed__item__writer"
                                href="/users/3218737?affect_type=ProjectSelfIndex&amp;affect_id=0"><img
                                    class="project-feed__item__writer__image" alt=""
                                    src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1567310477_UP.jpeg?gif=1&w=36&h=36&c=c"
                                    srcset=""><span
                                    class="project-feed__item__writer__name">${board.house_writer}</span></a></address>
                        <footer class="project-feed__item__status"><span class="entry">스크랩 ${board.house_scrap}&nbsp;</span><span
                                class="entry">조회 ${board.house_hits}</span></footer>
                    </article>
                    
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
 
    <sec:authorize access="isAuthenticated()" var="result">
	    <sec:authentication property="principal" var="memberVO"/>
		<input type="hidden" name="hnum" value="${houseVO.house_num}"/>
		<input type="hidden" name="nickname" id="memberVO_nickname" value="${memberVO.nickname}"/>
		<input type="hidden" name="id" id="memberVO_id" value="${memberVO.id}"/>
    </sec:authorize>
    
    </div>
 </div>

<!-- footer 들어가야되는데 contents 중간에 껴서 이상하게 나옴. 이거 조만간 처리해야 함 -->






<script type="text/javascript">
	
	//태그 배열 생성
	var menu_arr = new Array();
	//항목별 menu 선택시 menu_arr 배열에 알맞는 index로 push
	var menu_arrange;
	$('.menu0 li a').click(function(){
		menu_arrange = $(this).text();
		menu_arr[0]=menu_arrange;
		console.log(menu_arr[0]);
	});
	var menu_residence;
	$('.menu1 li a').click(function(){
		menu_residence = $(this).text();
		menu_arr[1]=menu_residence;
		console.log(menu_arr[1]);
	});
	var menu_space;
	$('.menu2 li a').click(function(){
		menu_space = $(this).text();
		menu_arr[2]=menu_space;
		console.log(menu_arr[2]);
	});
	var menu_budget;
	$('.menu3 li a').click(function(){
		menu_budget = $(this).text();
		menu_arr[3]=menu_budget;
		console.log(menu_arr[3]);
	});
	var menu_family
	$('.menu4 li a').click(function(){
		menu_family = $(this).text();
		menu_arr[4]=menu_family;
		console.log(menu_arr[4]);
	});
	var menu_style;
	$('.menu5 li').click(function(){
		menu_style = $(this).val(); // 이놈만 <li>의 value값
		menu_arr[5]=menu_style;
		console.log(menu_arr[5]);
	});	
	var menu_area;
	$('.menu6 li a').click(function(){
		menu_area = $(this).text();
		menu_arr[6]=menu_area;
		console.log(menu_arr[6]);
	});
	
	// dropdown-menu에서 선택시 항목별 tag&초기화 버튼 생성
	$('.dropdown-menu').click(function(){
		$('.filter-bar__tag-list').empty();
		$.each(menu_arr, function(index, item){
			if(item != null){
				if(index == 5){
					//style 숫자->한글 작업(그냥 시간없어서 이렇게 하기로 했음)
					item=switch_style(item);
				}
				$('.filter-bar__tag-list').append('<li id="tagList'+index+'" class="filter-bar__tag-list__item"><button onclick="tag_one_clear('+index+');" class="button button--color-blue button--size-50 button--shape-4 filter-bar__tag" type="button">'+item+'<svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path d="M6 4.94L3.879 2.817l-1.061 1.06L4.939 6 2.818 8.121l1.06 1.061L6 7.061l2.121 2.121 1.061-1.06L7.061 6l2.121-2.121-1.06-1.061L6 4.939zM6 12A6 6 0 1 1 6 0a6 6 0 0 1 0 12z"></path></svg></button></li>');						
			}		
		});
		
		// tag리스트에 한개의 tag라도 있을 때, '초기화'버튼 생성
		if($('.filter-bar__tag-list').html() != null){
			$('.filter-bar__tag-list').append('<li class="filter-bar__tag-list__item"><button onclick="tag_clear();" class="filter-bar__tag-list__clear" type="button">초기화</button></li>');
		}
		//ajax로 List Page 변경
		ajax_toController(menu_arr);
		
	});
	
	//초기화 버튼 클릭시 tag-list 초기화 함수
	function tag_clear() {
		menu_arr.splice(0, menu_arr.length); // 빈배열 만들기
		$('.filter-bar__tag-list').empty(); //하위태그 비우기
		location.reload(); //새로고침
	}
	
	//한개의 태그 제거
	function tag_one_clear(index) {
		menu_arr[index]=null;
		ajax_toController(menu_arr);
		$('#tagList'+index).remove();
		
		//tag배열이 전부 null일 때 true
		var check_arr=menu_arr[0]==null&&menu_arr[1]==null&&menu_arr[2]==null&&menu_arr[3]==null&&menu_arr[4]==null&&menu_arr[5]==null&&menu_arr[6]==null;	
		
		//tag배열이 전부 null일 때, tag-list 비우기
		if(check_arr){
			$('.filter-bar__tag-list').empty();
		}
	}
	
	//ajax로 List Page 변경
	function ajax_toController(menu_arr) {
		$. ajax({
			url:'/housewarming/',
			type:'get',
			data:{
				'arrangement':menu_arr[0],
				'house_kind':menu_arr[1],
				'house_space':menu_arr[2],
				'total_budget':menu_arr[3],
				'family_kind':menu_arr[4],
				'style_category':menu_arr[5],
				'working_area':menu_arr[6]
			},
			success: function(result){
//				console.log(result);
				result2 = result.trim().split('<!-- start -->');
				console.log(result2[1]);
				$('.realShit').html(result2[1]); // ajax로 가져온 데이터 파싱 후 div에 넣기
				
			},
			error: function(){
				alert('카테고리별 가져오기 실패');
			}
		});
	}
	//Style menu 숫자->한글 작업 함수
	function switch_style(item){
		switch (item) {
		  case 0:
			  item="모던";
		    break;
		  case 1:
			  item="미니멀&심플";
		    break;
		  case 2:
			  item="내추럴";
			break;
		  case 3:
			  item="북유럽";
			break;
		  case 4:
			  item="빈티지&레트로";
		    break;
		  case 5:
			  item="클래식&앤틱";
		    break;
		  case 6:
			  item="프렌치&프로방스";
			break							
		  case 7:
			  item="러블리&로맨틱";
			break;
		  case 8:
			  item="인더스트리얼";
		    break;
		  case 9:
			  item="한국&아시아";
			break;
		  case 10:
			  item="유니크&믹스매치"; 
			break;						    
		  default:
		}
		
		return item; //스위치 작업 끝난 item 리턴
	}
	
</script>
<script type="text/javascript">
var loginId='${loginId}';
function scrapDeleteEvent(house_num) {
	$. ajax({
		url:'/housewarming/scrapDown',
		type:'post',
		data:{
			'house_num':house_num,
			'scrap_id':loginId
		},
		success:function(data){
			if(data==1){
				location.reload();				
			}
		},
		error:function(){
			if(loginId == null || loginId == ''){
				alert('로그인을 해주세요.');
			} else {
				alert('스크랩취소 실패');
			}
				
		}
	});
}
</script>    

<script type="text/javascript" src="https://cdn.ravenjs.com/3.26.4/raven.js"></script>
<script type="text/javascript" src="../resources/js/housewarming/house_list.js"></script>  
</body>
</html>