<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
</head>
<body>
	<h1>Notice Insert Page</h1>

	<form action="./insert" method="post">
		<div class="">
			<label for="title" class="form-label">Title :</label> 
			<input
			type="text" class="form-control" name="title" id="title">

		</div>
		<div class="">
			<textarea class="form-control" id="summernote" name="contents" placeholder="contents" maxlength="140" rows="7"></textarea>
		</div>


		<div>
			<button type="submit" class="btn btn-primary">Write</button>
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