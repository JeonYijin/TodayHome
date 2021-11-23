<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의집★</title>
</head>
<body>
<div id="container">
	<div id="main_header">
		<tiles:insertAttribute name="header"/>
	</div>
	<div id="main_body">
		<tiles:insertAttribute name="body"/>
	</div>
	<div id="main_footer">
		<tiles:insertAttribute name="footer"/>
	</div>
</div>
</body>
</html>
