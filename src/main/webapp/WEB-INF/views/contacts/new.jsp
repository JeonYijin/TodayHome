<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 문의하기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>	
</head>
<body>
<div class="layout">
	<div class="container">
		<div>
			<p>이메일 문의하기</p>
			<p>상품/배송 등 쇼핑 관련 문의는 고객센터에서 요청해주세요.</p>
		</div>
		<div>
			<form enctype="multipart/form-data">
				<div>
					<select class="form-select" aria-label="Default select example" name="inquiry_type">
					  <option selected>문의유형</option>
					  <option value="회원정보 문의">회원정보 문의</option>
					  <option value="쿠폰/포인트 문의">쿠폰/포인트 문의</option>
					  <option value="주문/결제 관련 문의">주문/결제 관련 문의</option>
					  <option value="취소/환불 관련 문의">취소/환불 관련 문의</option>
					  <option value="배송 관련 문의">배송 관련 문의</option>
					  <option value="주문 전 상품 정보 문의">주문 전 상품 정보 문의</option>
					  <option value="서비스 개선 제안">서비스 개선 제안</option>
					  <option value="시스템 오류 제보">시스템 오류 제보</option>
					  <option value="불편 신고">불편 신고</option>
					  <option value="기타문의">기타문의</option>
					</select>
				</div>
				<div>
					<input type="text" name="inquiry_name" placeholder="이름"/>
				</div>
				<div>
					<input type="email" name="inquiry_email" placeholder="이메일"/>				
				</div>
				<div>
					<input type="text" name="inquiry_title" placeholder="제목"/>
				</div>
				<div>
					<textarea name="inquiry_contents" rows="1" maxlength="500" style="overflow:hidden; overflow-wrap: break-word; height:160px;" placeholder="문의내용"></textarea>
				</div>
				<div>
					<input type="file" name="files"/>
				</div>
				<div class="css-28ngv3-Footer e1yarwt5"><div class="css-1jiqnx5-Agreement e1yarwt4"><div class="_3zqA8 css-cnu37l-Checkbox e1cxhokq0"><input type="checkbox" class="_3UImz" id="privacy-terms-agreement" name="agree_term" value=""><span class="_2mDYR"><svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div><label for="privacy-terms-agreement" required="" class="css-qobsvh-AgreementLabel e1yarwt2">개인정보 수집 및 이용동의</label><p class="css-8cyhpq-AgreementDesc e1yarwt1">1. 수집하는 개인정보 항목 : 이름, 이메일<br>2. 수집 목적 : 문의자 확인, 문의에 대한 회신 등의 처리<br>3. 보유 기간 : <em>목적 달성 후 파기</em>, 단, 관계법령에 따라 또는 회사 정책에 따른 정보보유사유가 발생하여 보존할 필요가 있는 경우에는 필요한 기간 동안 해당 정보를 보관합니다. 전자상거래 등에서의 소비자 보호에 관한 법률, 전자금융거래법, 통신비밀보호법 등 법령에서 일정기간 정보의 보관을 규정하는 경우, 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 다른 목적으로는 절대 이용하지 않습니다. (개인정보처리방침 참고)<br>4. 귀하는 회사의 정보수집에 대해 동의하지 않거나 거부할 수 있습니다. 다만, 이때 원활한 문의 및 서비스 이용 등이 제한될 수 있습니다.</p></div><button class="_1eWD8 _3SroY _27do9 css-cqmnii-Button e1yarwt0" type="button">제출하기</button></div>
			</form>
		</div>
	</div>
</div>
</body>
</html>