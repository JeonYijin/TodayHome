<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글 수정</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
</head>
<body>
	<h1>게시판 글 수정</h1>
      
 	<form action="./update" method="post">
 		
 			<input type="hidden" name="num" value="${notice.num}">
        
            Title :<input type="text" class="form-control" name="title">
  
            Content :<textarea class="form-control" id="summernote" name="contents" placeholder="contents"></textarea>
    
    
         <div>
            <button type="submit" class="btn btn-primary">Update</button>
         </div>
         </form>
         <script>
		$(document).ready(function() {

			$('#summernote').summernote({
				placeholder : 'Write contents',
				height : 400,
				minHeight : null, // set minimum height of editor
				maxHeight : null, // set maximum height of editor
			});
		})
	</script>
</body>
</html>