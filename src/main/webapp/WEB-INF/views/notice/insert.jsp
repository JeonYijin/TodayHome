<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
</head>
<body>
	 <h1>Notice Insert Page</h1>
     
 	<form action="./insert" method="post">
         <div class="">
            <label for="title" class="form-label">Title :</label>
          <input type="text" class="form-control" name="title" id="title">
            
         </div>
         <div class="">
            <label for="contents">Contents :</label>            
           <input type="text" class="form-control" name="contents" id="contents">
         </div>
           

         <div>
            <button type="submit" class="btn btn-primary">Write</button>
         </div>
         <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	     <script src="js/bootstrap.js"></script>
	</form>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>