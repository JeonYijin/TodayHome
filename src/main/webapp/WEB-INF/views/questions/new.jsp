<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문과답변:insert게시판</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="stylesheet" href="../resources/css/questions_new.css">
</head>
<body>
	<h1>커뮤니티 질문과답변 insert 게시판입니다.</h1>
	
	<div style="text-align:center;">
		<form enctype="multipart/form-data">
			<div>
				<div>
					<input type="text" name="title" placeholder="제목을 입력해주세요." maxlength="30"/>		
				</div>
			</div>
		
			<div>
				<textarea class="questions_contents_wrapper contents" onkeyup="enterkey();" placeholder="내용을 입력해주세요.">
					<div>
						<p>
							
						</p>
					</div>
				</textarea>
			</div>
		</form>
	</div>	
	
<script>
 	function enterkey() {
		if (window.event.keyCode == 13) {
	    	//엔터키가 눌렸을 때
	    	alert('enterKey 감지');
	    }
	} 
</script> 	
</body>
</html>