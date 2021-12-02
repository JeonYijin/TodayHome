<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
</head>
<body>
	 <h1>Notice Insert Page</h1>
     
 	<form action="./prinsert" method="post">
         <div class="">
            <label for="title" class="form-label">name :</label>
          <input type="text" class="form-control" name="pr_name" id="pr_name">
         </div>
         <div class="">
            <label for="Writer" class="form-label">img :</label>
            <input type="text" class="form-control" name="img_url" id="pr_price">
            
         </div>
         <div class="">
            <label for="Writer" class="form-label">price :</label>
            <input type="text" class="form-control" name="pr_price" id="pr_price">
            
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