<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${comment}" var="comment" >
<li class="comment-feed__list__item">
	
	<article class="comment-feed__item">
		<p class="comment-feed__item__content">
			<a href="/users/5990463" class="comment-feed__item__content__author">
				<img class="comment-feed__item__content__author__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144 3x">
				<!-- <img class="comment-feed__item__content__author__image" alt="" src=""> -->
				<c:forEach items="${comment.memberVO}" var="member">
					<c:if test="${member.memberNum eq comment.memberNum}">
						<span class="comment-feed__item__content__author__name">${member.nickname}</span>
					</c:if>
				</c:forEach>
			</a>
			<span class="comment-feed__item__content__content">${comment.comment_text}</span>
		</p>
		
		<footer class="comment-feed__item__footer">
			<time class="comment-feed__item__footer__time">${comment.comment_date}</time>
				<span class="comment-feed__item__footer__likes zero">
					<button class="comment-feed__item__footer__likes__icon" type="button">
						<svg class="badge" width="15" height="14" preserveAspectRatio="xMidYMid meet">
							<path fill-rule="evenodd" class="heart" d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z"></path>
						</svg>
					</button>
					<span class="comment-feed__item__footer__likes__count">0</span>
				</span>
				
				<a  class="comment-feed__item__footer__like-btn" href="/users/sign_in">좋아요</a>
				<a class="comment-feed__item__footer__reply-btn" href="/users/sign_in">답글 달기</a>
				<a class="comment-feed__item__footer__report-btn" href="/users/sign_in">신고</a>
		</footer>
	
	</article>
</li>
</c:forEach>