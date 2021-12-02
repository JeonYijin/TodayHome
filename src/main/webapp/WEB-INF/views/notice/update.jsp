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
	<h1>Notice Update Page</h1>
      
 	<form action="./update" method="post">
 		
 			<input type="hidden" name="num" value="${notice.num}">
        
            Title :<input type="text" class="form-control" name="title">
  
            Contents :<input type="text" class="form-control" name="contents">
    
    
         <div>
            <button type="submit" class="btn btn-primary">Update</button>
         </div>
         </form>
</body>
</html>