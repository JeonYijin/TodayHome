<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&amp;display=swap&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" media="screen" href="https://static.ohou.se/assets/v3/layout/application_react-790a108e6a9b26136290c8bea25696fec3e4701284512f9eed313b7dbb352615.css">
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/21-5a255da7.chunk.css">
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/23-aae64295.chunk.css">
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/templates-Home-HomePage-3d4bc12a.chunk.css">
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
<link rel="stylesheet" type="text/css" href="https://static.ohou.se/dist/css/templates-ContactUs-7a5b5ff3.chunk.css">

<link rel="stylesheet" href="../resources/css/cscenter.css">
<link rel="stylesheet" href="https://static.ohou.se/assets/v3/layout/application_react-790a108e6a9b26136290c8bea25696fec3e4701284512f9eed313b7dbb352615.css">
<link rel="stylesheet" href="https://static.ohou.se/dist/css/templates-ContactUs-7a5b5ff3.chunk.css">
<link rel="stylesheet" href="https://static.ohou.se/dist/css/App-2903fdef.chunk.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<div id="contact-us">
	<div class="container--my-page">
		<article id="customer-center" class="customer-center">
			<h1 class="customer-center__title">고객센터</h1>
			<div class="row">
				<section class="col-12 col-md-6 customer-center__contact">
					운영시간 : 평일 09:00 ~ 18:00 (주말 & 공휴일 제외)
					<br>
					이메일 :&nbsp;
					<a href="/contacts/new" style="text-decoration:underline;">이메일 문의하기</a>
					<button type="button" class="customer-center__contact__btn-copy-email">이메일 주소 복사</button>
					<br>
					전화 :&nbsp;
					<a href="tel:1670-0876" style="text-decoration:underline;">1670-0876</a>
					<button type="button" class="btn btn-md btn-priority customer-center__contact__btn-inquiry">1:1 채팅 상담하기</button>
				</section>
				<section class="col-12 col-md-6 customer-center__faq">
					<ul class="customer-center__faq__list">  <!-- 대표 faq 링크 보완 필요 -->
						<li>
							<a href="/cscenter/?category=de&num=14" class="customer-center__faq__list" onclick="csAjax('de', 14);">배송은 얼마나 걸리나요?</a>
						</li>
						<li>
							<a href="/cscenter/?category=c/r&num=20" class="customer-center__faq__list" onclick="csAjax('c/r', 20);">주문 취소는 어떻게 하나요?</a>
						</li>
						<li>
							<a href="/cscenter/?category=etc&num=38" class="customer-center__faq__list" onclick="csAjax('etc', 38);">제품의 자세한 정보를 알고 싶어요</a>
						</li>
						<li>
							<a href="/cscenter/?category=r/e&num=23" class="customer-center__faq__list" onclick="csAjax('r/e', 23);">제품이 불량일 때는?</a>
						</li>
					</ul>
				</section>
			</div>
		</article>
	</div>
	
	<div class="container--my-page">
		<article id="faq" class="faq">
			<nav class="faq__nav">
				<ul class="faq__nav__list">
					<li class="faq__nav__item entire">
						<a href="/cscenter">전체</a>
					</li>
					<li class="faq__nav__item o/p">
						<a href="/cscenter?category=o/p">주문/결제</a>
					</li>
					<li class="faq__nav__item de">
						<a href="/cscenter?category=de">배송관련</a>
					</li>
					<li class="faq__nav__item c/r">
						<a href="/cscenter?category=c/r">취소/환불</a>
					</li>	
					<li class="faq__nav__item r/e">
						<a href="/cscenter?category=r/e">반품/교환</a>
					</li>
					<li class="faq__nav__item cer">				
						<a href="/cscenter?category=cer">증빙서류발급</a>
					</li>
					<li class="faq__nav__item info">				
						<a href="/cscenter?category=info">회원정보변경</a>
					</li>
					<li class="faq__nav__item etc">				
						<a href="/cscenter?category=etc">서비스/기타</a>
					</li>
				</ul>
			</nav>

			<article class="faq__contents">
				<c:forEach items="${csList}" var="list" varStatus="i">
					<section id="section_${i.index}" class="faq__contents__group">
						<input type="hidden" value="${i.index}" name="hidden_${i.index}"/>
						<div id="question_${i.index}" class="faq__contents__item__question trigger" onclick="toggle(${i.index});">${list.question}</div>		
						<input type="hidden" value="${list.num}" name="hidden_${list.num}" id="hidden_${list.num}"/>
						<div id="answer_${i.index}" class="faq__contents__item__answer" style="display:none;">
							<p><span>A.</span> ${list.answer}</p>
						</div>
						<hr>
					</section>
				</c:forEach>
			</article>
		</article>
	</div>
</div>


<script type="text/javascript">	

	function toggle(index) {		
		var divId = 'answer_'+index;
		var answerId = $('#'+divId);

		if(answerId.attr('style')=='display:none;') {
			answerId.attr('style', 'display:block;');
			answerId.show();
		} else {
			answerId.attr('style', 'display:none;');
			answerId.hide();
		}
	}


	
</script>
<script type="text/javascript" src="../resources/js/cscenter_ajax.js"></script>
</body>
</html>