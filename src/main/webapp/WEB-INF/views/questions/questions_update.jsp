<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>           
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>questions update</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/ckeditor/ckeditor.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<div class="inputArea">
	<label for="gdsDes">커뮤니티-질문과답변</label>
	<hr>
	<a href="http://localhost:8080/member/memberLogin">login</a>
	
	<form action="/questions/update" method="post" enctype="multipart/form-data">
	
	<sec:authorize access="isAuthenticated()" var="result">
  		<sec:authentication property="principal.id" var="id"/>
  		<sec:authentication property="principal" var="memberVO"/>
		<input type="text" name="quests_id" value="${id}" />
		<input type="text" name="quests_nickname" value="${memberVO.nickname}" />
		<input type="text" name="quests_num" value="${vo.quests_num}"/>
  	</sec:authorize>	
  	<br><br>
	<input type="text" name="quests_title" id="quests_title" value="${vo.quests_title}" placeholder="제목을 입력해주세요!"/>
	<textarea rows="5" cols="50" id="quests_contents" name="quests_contents">${vo.quests_contents}</textarea>
	<script>
		var ckeditor_config = {
		resize_enaleb : false,
		enterMode : CKEDITOR.ENTER_BR,
		shiftEnterMode : CKEDITOR.ENTER_P,
		filebrowserUploadUrl : "${pageContext.request.contextPath}/ckeditor/ckUpload"
		};
								 
		CKEDITOR.replace("quests_contents", ckeditor_config);
	</script>
	<button type="submit">제출</button>
	
	<div onclick="addHashtag()">
		<p>#클릭하여 주요 키워드를 입력해주세요.(최대 5개)</p>
	</div>
	
</form>
</div>

</body>
</html>