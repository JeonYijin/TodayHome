<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<div class="container--my-pgae">
	<article id="customer-center" class="customer-center">
		<h1 class="customer-center_title">고객센터</h1>
		<div class="row">
			<section>
				운영시간 : 평일 09:00 ~ 18:00 (주말 & 공휴일 제외)
				<br>
				이메일 :&nbsp;
				<a href="/contacts/new" style="text-decoration:underline;">이메일 문의하기</a>
				<button type="button">이메일 주소 복사</button>
				<br>
				전화 :&nbsp;
				<a href="tel:1670-0876" style="text-decoration:underline;">1670-0876</a>
				<button type="button">1:1 채팅 상담하기</button>
			</section>
			<section>
				<ul> <!-- 대표 faq 링크 보완 필요 -->
					<li>
						<a href="#">배송은 얼마나 걸리나요?</a>
					</li>
					<li>
						<a href="#">주문 취소는 어떻게 하나요?</a>
					</li>
					<li>
						<a href="#">제품의 자세한 정보를 알고 싶어요</a>
					</li>
					<li>
						<a href="#">제품이 불량일 때는?</a>
					</li>
				
				</ul>
			</section>
		
		</div>
	</article>

</div>




<hr>
<a href="./cscenter">전체</a>
<a href="./cscenter?category=o/p">주문/결제</a>
<a href="./cscenter?category=de">배송관련</a>
<a href="./cscenter?category=c/r">취소/환불</a>
<a href="./cscenter?category=r/e">반품/교환</a>
<a href="./cscenter?category=cer">증빙서류발급</a>
<a href="./cscenter?category=info">회원정보변경</a>
<a href="./cscenter?category=etc">서비스/기타</a>
<hr>
<hr>
<c:forEach items="${csList}" var="list" varStatus="i">
	<section id="section_${i.index}">
		<input type="hidden" value="${i.index}" name="hidden_index"/>
		<input type="hidden" value="${list.num}" name="hidden_num"/>
		<div id="question_${i.index}" onclick="toggle(${i.index});"><span>Q.</span> ${list.question}</div>		
		<div id="answer_${i.index}" style="display:none;">
			<p><span>A.</span> ${list.answer}</p>
		</div>
		<hr>
	</section>
</c:forEach>

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
	
	$('#quest1').click(function(e){
		e.preventDefault();
		var uri = $(this).attr('href');
		if(uri != '#'){
			
		}
	})

</script>
</body>
</html>