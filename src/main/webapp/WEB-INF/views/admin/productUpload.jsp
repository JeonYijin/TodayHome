<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

<!-- css 수정 필요  -->
<div>
	<h1>상품 업로드 페이지</h1>
</div>

<div class="container">

	<form class="row g-3" action="productUpload" method="post" enctype="multipart/form-data">
	
	 <div class="col-12">
	    <label for="pr_name" class="form-label">페이지 제목</label>
	    <input name="pr_name" type="text" class="form-control" id="pr_name">
	 </div>
	 
	 <div class="col-md-6">
	    <label for="pr_seller" class="form-label">판매자명</label>
	    <input name="pr_seller" type="text" class="form-control" id="pr_seller">
	 </div>
	 
	 <div class="col-md-6">
	    <label for="pr_category" class="form-label">카테고리</label>
	    <select name="pr_category" id="pr_category" class="form-select">
	      <option value='1'>침대</option>
	      <option value='2'>매트리스/토퍼</option>
	      <option value='3'>소파</option>
	      <option value='4'>테이블/책상</option>
	      <option value='5'>거실장/TV장</option>
	      <option value='6'>서랍/수납장</option>
	      <option value='7'>진열장/책장</option>
	      <option value='8'>선반</option>
	      <option value='9'>행거/옷장</option>
	      <option value='10'>의자</option>
	      <option value='11'>화장대/콘솔</option>
	      <option value='12'>거울</option>
	      <option value='13'>가벽/파티션</option>
	      <option value='14'>야외가구</option>
	      <option value='15'>유아동가구</option>
	    </select>
  	</div>
  	
  	<div class="col-md-6">
	    <label for="pr_price" class="form-label">원가</label>
	    <input name="pr_price" type="text" class="form-control" id="pr_price">
	  </div>
	  
	  <div class="col-md-3">
	    <label for="pr_discount" class="form-label">할인률(%)</label>
	    <input name="pr_discount" type="text" class="form-control" id="pr_discount" placeholder="ex)10%">
	  </div>
	  
	  <div class="col-md-3">
	    <label for="pr_dPrice" class="form-label">할인 가격</label>
	    <input name="pr_dPrice" type="text" class="form-control" id="pr_dPrice">
	  </div>
	  
	  
  	
  	<div class="mb-3">
	  <label for="formFile" class="form-label">대표 이미지</label>
	  <input name="productFile" class="form-control" type="file" id="formFile">
	</div>
	
	<div class="mb-3">
	  <label for="formFile" class="form-label">추가 이미지</label>
	  <input name="productFile" class="form-control" type="file" id="formFile">
	  <input name="productFile" class="form-control" type="file" id="formFile">
	  <input name="productFile" class="form-control" type="file" id="formFile">
	  <input name="productFile" class="form-control" type="file" id="formFile">
	</div>
	<div class="mb-3">
	<label for="formFile" class="form-label">제품 설명 이미지</label>
	  <input name="productFile" class="form-control" type="file" id="formFile">
	  <input name="productFile" class="form-control" type="file" id="formFile">
	  <input name="productFile" class="form-control" type="file" id="formFile">
	  <input name="productFile" class="form-control" type="file" id="formFile">
	  <input name="productFile" class="form-control" type="file" id="formFile">
	  <input name="productFile" class="form-control" type="file" id="formFile">
	  <input name="productFile" class="form-control" type="file" id="formFile">
	  <input name="productFile" class="form-control" type="file" id="formFile">
	</div>
	
	<div>
		<button type="submit" class="btn btn-light">등록</button>
	</div>
	 
	 
	
	</form>


</div>





<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<script type="text/javascript" src="../resources/js/productUpload.js"></script>

</body>
</html>