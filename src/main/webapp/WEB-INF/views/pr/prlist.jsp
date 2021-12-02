<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<c:forEach items="${prVO}" var="prVO">
			<tr>
				<td>${prVO.pr_number}</td>
				<td>${prVO.pr_name}</td>
				<td>${prVO.pr_price}</td>
				<div class="img">
						<a href=""></a>
						<img src="../resources/image/${prVO.img_url}" class="img">
					</div>
			
				
			</tr>
		
		</c:forEach>
	</div>
	<br />
</body>
</html>