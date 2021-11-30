<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>           
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h1 style="font-size:x-small; color:skyblue;">질문과 답변</h1>
<div style="border: solid 1px;">
	${quest.quests_title}
</div>
<div style="">
	<u>${quest.quests_nickname}</u>
</div><br>
<div style="border: dotted 1px">
	${quest.quests_contents}
</div><br>
<div>
	${quest.regDate}
</div>

<div class="hidden_wrap">
	<input type="hidden" value="${quest.quests_num}" id="hid_num"/>
</div>

<!-- [ security : start ] -->
	<sec:authorize access="isAuthenticated()" var="result">
  		<sec:authentication property="principal.id" var="id"/>
  		<sec:authentication property="principal" var="memberVO"/>
  		<label for="login-id">로그인된 아이디</label>
		<input type="text" id="login-id" name="quests_id" value="${id}" readonly/>
		<input type="text" name="quests_nickname" value="${memberVO.nickname}" hidden="hidden"/>
			<c:if test="${quest.quests_id == id}">
				<div>
					<button type="button" id="updateBtn">Modify</button>
					<button type="button" id="deleteBtn">Delete</button>
				</div>
			</c:if>
  	


		<!-- 댓글  -->
		<div class="collapse" id="reply_card${tmp.no }">
		        <div class="card card-body">
		            <!-- 댓글 목록 -->
		            <div class="reply-list reply-list${tmp.no }">
		                <!-- 댓글 목록이 들어가는 곳 -->
		            </div>
		            <!-- 댓글 작성 => 로그인한 상태여야만 댓글작성 칸이 나온다. -->
		            <c:if test="${not empty memberVO}">
		                <div class="row reply_write">
		                    <div class="col-1">
		                        <a href="other_profile.do?other_nick=${tmp.writer }">
		                            <img alt="" id="write_reply_profileImage"
		                                src="#" />
		                        </a>
		                    </div>
		                    <div class="col-8" class="input_reply_div">
		                        <input class="w-100 form-control" id="input_reply${tmp.no}"
		                            type="text" placeholder="댓글입력">
		                    </div>
		                    <div class="col-3">
		                        <button type="button" idx="${tmp.no }"
		                            class="btn btn-success mb-1 write_reply">댓글&nbsp;달기</button>
		                    </div>
		                </div>
		            </c:if>
		        </div>
		</div>

	</sec:authorize>	
	<!-- [ security : end ] -->

<script type="text/javascript">
	const num=$('#hid_num').val();
	const userid=$('input[name=quests_id]').val();

	$('#updateBtn').click(function(){
		location.href="/questions/update?quests_num="+num+"&quests_id="+userid;
	})
	
	$('#deleteBtn').click(function(){
		location.href="/questions/delete?quests_num="+num+"&quests_id="+userid;
	})	
</script>
<script type="text/javascript" src="../resources/js/q_reply.js"></script>
</body>
</html>