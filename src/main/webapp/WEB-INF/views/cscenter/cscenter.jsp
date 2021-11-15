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
<h1>고객센터</h1>

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
		<input type="hidden" value="${i.index}" name="hidden"/>
		<div id="question_${i.index}" onclick="toggle(${i.index});"><span>Q.</span> ${list.question}</div>		
		<div id="answer_${i.index}" style="display:none;">
			<p><span>A.</span> ${list.answer}</p>
		</div>
		<hr>
	</section>
</c:forEach>

<script type="text/javascript">	
	function toggle(index){		
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
</body>
</html>