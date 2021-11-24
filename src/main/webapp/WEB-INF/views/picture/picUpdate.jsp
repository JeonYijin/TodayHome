<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/picInsert.css">
</head>
<body>
	<form method="post">
	<sec:authentication property="principal" var="memberVO"/>
	<input type="hidden" value="${memberVO.memberNum}" name="memberNum">
		<div class="css-8y5nyu-FormDiv e5zqozy1">
			<div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false" data-sticky-ignore="false" data-direction="top" data-offset="0" class="sticky-container css-ospeve">
				<div class="sticky-child css-vxajtd" style="position: relative;">
					<div class="css-13ye58v-HeaderPrimaryContent e11fa3qm8">
						<a aria-label="오늘의집" class="css-1lo2l38-HeaderPrimaryLogoLink e11fa3qm7" href="/">
							<svg class="icon" width="74" height="30" viewBox="0 0 74 30" preserveAspectRatio="xMidYMid meet">
								<g fill="none" fill-rule="evenodd">
									<path fill="#000" d="M14.2 25.17H9.28V20.7a1.45 1.45 0 0 0-2.9 0v4.47H1.44a1.45 1.45 0 1 0 0 2.9H14.2a1.45 1.45 0 0 0 0-2.9M4.5 9.15c0-4.6 2.08-5.28 3.33-5.28 1.24 0 3.33.69 3.33 5.28v.36c0 4.6-2.09 5.28-3.33 5.28-1.25 0-3.34-.69-3.34-5.28v-.36zm3.33 8.54c3.84 0 6.23-3.13 6.23-8.18v-.36c0-5.05-2.39-8.18-6.23-8.18-3.85 0-6.24 3.13-6.24 8.18v.36c0 5.05 2.39 8.19 6.24 8.19zm25.54-7.34H17.81a1.45 1.45 0 0 0 0 2.9h15.56a1.45 1.45 0 1 0 0-2.9m-1.55 15.5c-7.08 1.83-9.45.79-10.14.25-.45-.35-.65-.8-.65-1.48v-.87h10.25c.8 0 1.46-.65 1.46-1.45v-5.08c0-.8-.66-1.45-1.46-1.45h-11.7a1.45 1.45 0 1 0 0 2.9h10.25v2.18H19.57c-.8 0-1.45.65-1.45 1.45v2.32a4.6 4.6 0 0 0 1.78 3.78c1.2.93 2.94 1.39 5.21 1.39 2.05 0 4.54-.38 7.44-1.13a1.45 1.45 0 1 0-.73-2.82M20.3 7.83h10.8a1.45 1.45 0 1 0 0-2.9h-9.35V1.45a1.45 1.45 0 1 0-2.9 0v4.93c0 .8.65 1.45 1.45 1.45"></path><rect width="3" height="15" x="70" fill="#000" rx="1.5"></rect><path fill="#000" d="M64.5 13.28a1.45 1.45 0 0 0 2.73-1c-.05-.13-1-2.68-3.38-4.5l3.7-4.1a1.45 1.45 0 0 0-1.09-2.42h-9.05a1.45 1.45 0 1 0 0 2.9h5.8l-6.88 7.64a1.45 1.45 0 1 0 2.16 1.95l3.41-3.8a8 8 0 0 1 2.6 3.33M69.56 26.52h-7.01a.82.82 0 0 1-.82-.82v-1.95h8.65v1.95c0 .45-.37.82-.82.82m2.27-9.37c-.8 0-1.45.65-1.45 1.45v2.25h-8.65V18.6a1.45 1.45 0 1 0-2.9 0v7.1a3.73 3.73 0 0 0 3.72 3.72h7.01a3.73 3.73 0 0 0 3.72-3.72v-7.1c0-.8-.65-1.45-1.45-1.45M42.46 3.87c2.22 0 2.33 4.24 2.33 5.08 0 .85-.11 5.09-2.33 5.09-2.21 0-2.32-4.24-2.32-5.08 0-.86.11-5.09 2.32-5.09m0 13.07c1.76 0 3.23-.93 4.14-2.62.71-1.34 1.1-3.2 1.1-5.36s-.39-4.02-1.1-5.37A4.6 4.6 0 0 0 42.46.97c-1.76 0-3.22.93-4.13 2.62-.72 1.35-1.1 3.2-1.1 5.37s.38 4.01 1.1 5.36a4.59 4.59 0 0 0 4.13 2.62"></path><path fill="#000" d="M51.4.49c-.8 0-1.45.65-1.45 1.45v17.78c-1.93.6-5.75 1.13-10.38 1.13h-2.2a1.45 1.45 0 0 0 0 2.9h2.2c2.64 0 7.21-.23 10.38-1.02v4.84a1.45 1.45 0 0 0 2.9 0V1.94c0-.8-.65-1.45-1.45-1.45"></path>
								</g>
							</svg>
						</a>
						
						<button type="button" aria-label="뒤로" class="css-uieupm-HeaderPrimaryBackButton e11fa3qm6">
							<svg class="icon" width="24" height="24" preserveAspectRatio="xMidYMid meet">
								<path d="M3.7 12.5h18.8v-1H3.7l7.8-7.8-.7-.7L2 11.7l.3.3-.3.3 8.8 8.7.7-.7-7.8-7.8z" fill="#000" fill-opacity=".7" fill-rule="evenodd"></path>
							</svg>
						</button>
						
						<div class="css-1t3yl8n-HeaderPrimarySubmitSection e11fa3qm5">
							<button type="submit" class="css-19t9f3f-HeaderPrimarySubmit e11fa3qm2">
								<span class="css-19k4l36-HeaderPrimarySubmitText e11fa3qm4">올리기</span>
							</button>
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="css-38vk11-HeaderSecondary e11fa3qm1">
				<ul class="css-1dghme3-TabListUl e5h95nb0">
					<li class="css-n17caq-TabItemLi e7calwt1">
						<button type="button" aria-pressed="true" class="css-d1mp0l-TabItemButton e7calwt0">사진</button>
					</li>
					
					<li class="css-n17caq-TabItemLi e7calwt1">
						<button type="button" aria-pressed="false" class="css-qn5q0d-TabItemButton e7calwt0">동영상
							<svg width="28" height="14" viewBox="0 0 28 14" fill="none" preserveAspectRatio="xMidYMid meet" class="css-1h3fsoj-HeaderNewIcon e11fa3qm0">
								<rect width="28" height="14" rx="3" fill="#FF7777"></rect>
								<path fill-rule="evenodd" clip-rule="evenodd" d="M3.81006 10.59V3.72998H5.19006L8.04006 8.56998H8.07006V3.72998H9.16006V10.59H7.94006L4.93006 5.41998H4.90006V10.59H3.81006ZM10.7701 10.59V3.72998H15.0501V4.69998H12.0001V6.57998H14.3701V7.53998H12.0001V9.61998H15.1101V10.59H10.7701ZM15.9401 3.72998L17.6501 10.59H18.8601L20.2201 5.60998H20.2501L21.5901 10.59H22.8101L24.4901 3.72998H23.3801L22.2001 8.80998H22.1701L20.7901 3.72998H19.7901L18.3901 8.80998H18.3601L17.1901 3.72998H15.9401Z" fill="white"></path>
							</svg>
						</button>
					</li>
				</ul>
			</div>
			
			<div class="css-1d7nn6z-FormContent e5zqozy0">
				<div class="css-ogmp42-MetadataFormDiv e10hhfgx4">
					<div class="css-1iht2ie-MetadataFormSide e10hhfgx3">
						
						<div class="input-group select-input css-7kwypw-MetadataFormSelectInput e10hhfgx1">
							<select name="pyeongsu" class="form-control empty">
								<option value="" disabled>평수</option>
								<option value="10평 미만">10평 미만</option>
								<option value="10평대">10평대</option>
								<option value="20평대">20평대</option>
								<option value="30평대">30평대</option>
								<option value="40평대">40평대</option>
								<option value="50평 이상">50평 이상</option>
							</select>
							
							<span class="select-input__icon">
								<svg class="icon" width="10" height="10" preserveAspectRatio="xMidYMid meet" style="fill: currentcolor;">
									<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
								</svg>
							</span>
						</div>
						
						<div class="input-group select-input css-7kwypw-MetadataFormSelectInput e10hhfgx1">
							<select name="housetype" class="form-control empty">
								<option value="" disabled="">주거형태</option>
								<option value="원룸&오피스텔">원룸&amp;오피스텔</option>
								<option value="아파트">아파트</option>
								<option value="빌라&연립">빌라&amp;연립</option>
								<option value="단독주택">단독주택</option>
								<option value="사무공간">사무공간</option>
								<option value="상업공간">상업공간</option>
								<option value="기타">기타</option>
							</select>
							
							<span class="select-input__icon">
								<svg class="icon" width="10" height="10" preserveAspectRatio="xMidYMid meet" style="fill: currentcolor;">
									<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
								</svg>
							</span>
						</div>
						
						<div class="input-group select-input css-7kwypw-MetadataFormSelectInput e10hhfgx1">
							<select name="style" class="form-control empty">
								<option value="" disabled="">스타일</option>
								<option value="모던">모던</option>
								<option value="북유럽">북유럽</option>
								<option value="빈티지">빈티지</option>
								<option value="내추럴">내추럴</option>
								<option value="프로방스&로맨틱">프로방스&amp;로맨틱</option>
								<option value="클래식&앤틱">클래식&amp;앤틱</option>
								<option value="한국&아시아">한국&amp;아시아</option>
								<option value="유니크">유니크</option>
							</select>
							
							<span class="select-input__icon">
								<svg class="icon" width="10" height="10" preserveAspectRatio="xMidYMid meet" style="fill: currentcolor;">
								<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
								</svg>
							</span>
						</div>
					</div>
				</div>
				
				<div class="css-40lbws-ContainerDiv e15j4pam2">
					<ol class="e15j4pam1 css-1om8smb-OverviewListOl-ContainerOverviewList enz0n5n1">
						<li class="css-6go531-OverviewListLi enz0n5n0"></li>
					</ol>
					
					<ol class="e15j4pam0 css-5dor4c-CardListOl-ContainerCardList eg53srj2">
						<li class="css-bvb3rb-CardListLi eg53srj1">
							<div class="css-10n24i7-CardDiv e19p9qev2">
								<div class="css-8e6x5e-CardItemDiv e1peeabv2">
									<div class="css-4d4cqx-CardItemLeft e1peeabv1">
										<button class="css-1h7vqm-UploadButton em8wpqo4" type="button">
											<div class="css-k2po69-UploadButtonContent em8wpqo3">
												<svg width="48" height="48" viewBox="0 0 48 48" fill="currentColor" preserveAspectRatio="xMidYMid meet" class="css-utuafj-UploadCameraIcon em8wpqo2">
													<path d="M11.952 9.778l2.397-5.994A1.778 1.778 0 0 1 16 2.667h16c.727 0 1.38.442 1.65 1.117l2.398 5.994h10.174c.982 0 1.778.796 1.778 1.778v32c0 .981-.796 1.777-1.778 1.777H1.778A1.778 1.778 0 0 1 0 43.556v-32c0-.982.796-1.778 1.778-1.778h10.174zM24 38c6.075 0 11-4.925 11-11s-4.925-11-11-11-11 4.925-11 11 4.925 11 11 11z"></path>
												</svg>
												<span class="css-xvgt90-UploadTitle em8wpqo1">사진 올리기</span>
												<span class="css-o7lg39-UploadDescription em8wpqo0">(*최대 10장까지)</span>
											</div>
										</button>
									</div>
									
									<div class="css-1k7ciri-CardItemRight e1peeabv0">
										<div class="css-ryivqb-CardItemDescriptionDiv er05vzw3">
												<div class="input-group select-input css-yk768g-CardItemDescriptionSelectInput er05vzw2">
													<select name="area" class="form-control empty">
														<option value="" disabled="">공간 (필수)</option>
														<option value="원룸">원룸</option>
														<option value="거실">거실</option>
														<option value="침실">침실</option>
														<option value="주방">주방</option>
														<option value="욕실">욕실</option>
														<option value="아이방">아이방</option>
														<option value="드레스룸">드레스룸</option>
														<option value="서재&작업실">서재&amp;작업실</option>
														<option value="베란다">베란다</option>
														<option value="사무공간">사무공간</option>
														<option value="상업공간">상업공간</option>
														<option value="가구&소품">가구&amp;소품</option>
														<option value="현관">현관</option>
														<option value="외관&기타">외관&amp;기타</option>
													</select>
													
													<span class="select-input__icon">
														<svg class="icon" width="10" height="10" preserveAspectRatio="xMidYMid meet" style="fill: currentcolor;">
															<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
														</svg>
													</span>
												</div>
											<textarea class="_3ASDR _1qwAY css-10wf1a7-CardItemDescriptionTextInput er05vzw1" field="[object Object]" name="post_text" placeholder="사진에 대해 설명해주세요." rows="6" style="overflow: hidden; overflow-wrap: break-word; height: 145px;">${pic.post_text}</textarea>
											
											<div class="keyword-input css-17nk9gk-CardItemDescriptionKeywordInput er05vzw0">
												<div class="keyword-input__input-item" style="display: inline-block;">
													<input class="keyword-input__input-item__input" placeholder="키워드" value="" style="box-sizing: content-box; width: 43px;">
													<div style="position: absolute; top: 0px; left: 0px; visibility: hidden; height: 0px; overflow: scroll; white-space: pre; font-size: 15px; font-family: &quot;Noto Sans KR&quot;, &quot;Apple SD Gothic Neo&quot;, &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;, sans-serif; font-weight: 400; font-style: normal; letter-spacing: normal; text-transform: none;"></div>
													<div style="position: absolute; top: 0px; left: 0px; visibility: hidden; height: 0px; overflow: scroll; white-space: pre; font-size: 15px; font-family: &quot;Noto Sans KR&quot;, &quot;Apple SD Gothic Neo&quot;, &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;, sans-serif; font-weight: 400; font-style: normal; letter-spacing: normal; text-transform: none;">키워드</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>
					</ol>
				</div>
			</div>
		</div>
	</form>
	
	
	
	
	
</body>
</html>