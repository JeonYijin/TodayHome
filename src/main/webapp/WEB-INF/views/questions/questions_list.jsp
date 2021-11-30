<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>커뮤니티-질문과 답변</title>
</head>
<body>
<h1>커뮤니티:질문과답변 게시판 입니다.</h1>

<table>
	<thead>
		<tr>
			<td>
				WRITER
			</td>
			<td>
				TITLE
			</td>
			<td>
				CONTENTS
			</td>			
		</tr>	
	</thead>
	<tbody>
		<c:forEach items="${list}" var="list">
			<tr>
				<td>${list.quests_nickname}</td>
				<td><a href="/questions/selectOne?quests_num=${list.quests_num}">${list.quests_title}</a></td>
			</tr>
		</c:forEach>	
	</tbody>
</table>

<div>
	<a href="${pageContext.request.contextPath}/questions/new">글쓰기</a>
</div>



</body>
</html>