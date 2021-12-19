<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&amp;display=swap&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/preamble-97ede701.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/App-6e6c2f0c.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/templates-Home-HomePage-f3a55bf4.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/21-0e75de9b.chunk.css">
<link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/23-2ef16b9a.chunk.css">
<style data-emotion="css 1293549-Container" data-s="">
.css-1293549-Container{
	display:-webkit-box;
	display:-webkit-flex;
	display:-ms-flexbox;
	display:flex;
	-webkit-align-items:center;
	-webkit-box-align:center;
	-ms-flex-align:center;
	align-items:center;
}
.css-1p6gxrd-Info{
	font-size:10px;
	line-height:14px;
	color:#828c94;
	margin-left:8px;
}
.css-wkl218-SectionWrapper{
margin-top:32px;
}
@media (min-width: 768px){
.css-wkl218-SectionWrapper{
margin-top:26px;
}
}
.css-167c30c-Wrapper{position:absolute;width:100%;height:100%;box-sizing:border-box;z-index:1;pointer-events:none;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,viewport-fit=cover">
    <meta name="naver-site-verification"
	content="907a7f8c9a61df897ccf0f03a835f6d2668945b1">
    <meta property="fb:admins" content="100006457426639">
    <meta name="google-site-verification"
	content="d-veBobRNo_in0thN3uOOoIcUWMUOjQZeMidTyItfGk">
    <meta name="google-site-verification"
	content="AZK3GfRwg4q_EH-0OSbbkCurocEY7okWrPZF93COxYU">
    <meta property="fb:app_id" content="185853321610795">
    <title>공지사항 | 예쁜템들 모여사는 오늘의집</title>
    <meta name="description"
	content="2000만이 선택한 No.1 인테리어 필수앱. 집들이 구경부터 제품 정보 확인, 구매까지 한 번에!">
    
    <link rel="alternate"
	href="android-app://net.bucketplace/http/ohou.se/deep">
    <link rel="apple-touch-icon" sizes="57x57"
	href="https://assets.ohou.se/web/assets/bookmark_icon/favicon_57x57.png">
    <link rel="apple-touch-icon" sizes="72x72"
	href="https://assets.ohou.se/web/assets/bookmark_icon/favicon_72x72.png">
    <link rel="apple-touch-icon" sizes="114x114"
	href="https://assets.ohou.se/web/assets/bookmark_icon/favicon_114x114.png">
    <link rel="apple-touch-icon" sizes="144x144"
	href="https://assets.ohou.se/web/assets/bookmark_icon/favicon_144x144.png">
    <link rel="shortcut icon"
	href="https://assets.ohou.se/web/assets/bookmark_icon/favicon_144x144.png">
    <link href="https://assets.ohou.se/web/assets/favicon.png"
	rel="shortcut icon">
    
    <meta name="csrf-param" content="authenticity_token">
    <meta name="csrf-token"
	content="3MC+JdhGhwpvgx3VTZCYBwjiuEv7qWOSP5Uk+UXF6PTfJ/HD8Er76wGRuitnOpJAlo/kQCq0BUNquWjuAsHuOA==">
    <link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&amp;display=swap&amp;subset=korean"
	rel="stylesheet">
    <link rel="stylesheet"
	href="https://assets.ohou.se/web/dist/css/preamble-97ede701.chunk.css">
<link rel="stylesheet"
	href="https://assets.ohou.se/web/dist/css/templates-CustomerNotice-Feed-eeceaff1.chunk.css">
<link rel="stylesheet"
	href="https://assets.ohou.se/web/dist/css/21-0e75de9b.chunk.css">
<link rel="stylesheet"
	href="https://assets.ohou.se/web/dist/css/23-2ef16b9a.chunk.css">
<link rel="stylesheet"
	href="https://assets.ohou.se/web/dist/css/App-6e6c2f0c.chunk.css">
    
  
  <script type="text/javascript" async=""
	src="https://www.google-analytics.com/gtm/js?id=GTM-54TVLXQ&amp;t=gtm7&amp;cid=1460993624.1636618736"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript"
	integrity="sha384-cukXwabQy+j/QA1+RqiXSzxhgQg5Rrn3zVszlwH3pWj/bXJxlA8Ge7NhcD6vP2Ik"
	crossorigin="anonymous" async=""
	src="https://cdn.amplitude.com/libs/amplitude-7.1.0-min.gz.js"></script>
<script
	src="https://connect.facebook.net/signals/config/937204509645248?v=2.9.48&amp;r=stable"
	async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-MK8DN2Q"></script>


  <!-- adinsight 공통스크립트 start -->
  <script type="text/javascript">
			var TRS_AIDX = /iPhone|iPad|iPod|Android/.test(navigator.userAgent) ? 11603
					: 11598;
		</script>
  <script type="text/javascript"
	src="https://analysis.adinsight.co.kr/emnet/trs_esc.js" defer=""></script>
  <!-- adinsight 공통스크립트 end -->

  <!-- Sentry Testing -->
  <script src="https://cdn.ravenjs.com/3.26.4/raven.min.js"
	crossorigin="anonymous"></script>
  <script>
			Raven
					.config(
							'https://b8e5cc27b3eb44be8b976b0c81dd4115@sentry.io/271486')
					.install();

			Raven.setUserContext({});
		</script>

  <script type="application/ld+json">
  {
   "@context": "http://schema.org",
   "@type": "Organization",
   "name": "오늘의집",
   "url": "https://ohou.se",
   "sameAs": [
     "https://www.instagram.com/todayhouse/?hl=ko",
     "https://www.facebook.com/interiortoday",
     "https://m.post.naver.com/my.nhn?memberNo=202156",
     "https://itunes.apple.com/kr/app/id1008236892",
     "https://play.google.com/store/apps/details?id=net.bucketplace&hl=ko",
     "https://www.youtube.com/channel/UCBKtitA1RwY7F32rCniV1dA/featured"
   ]
  }
  </script>


    <!--[if lte IE 9]>
    <script>
      alert("본 서비스는 Microsoft Explorer 11 이하는 지원하지 않습니다. 브라우저를 업그레이드하고 사용하시거나 앱을 다운받아 사용하실 수 있습니다. 확인을 누르면 앱 다운로드 링크로 연결됩니다.");
      window.location.href = "https://play.google.com/store/apps/details?id=net.bucketplace&hl=kor";
    </script>
    <![endif]-->
  <style data-emotion="css wkl218-SectionWrapper" data-s="">
.css-wkl218-SectionWrapper {
	margin-top: 32px;
}

@media ( min-width : 768px) {
	.css-wkl218-SectionWrapper {
		margin-top: 26px;
	}
}
</style>
<style data-emotion="css 1293549-Container" data-s="">
.css-1293549-Container {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}
</style>
<style data-emotion="css 1p6gxrd-Info" data-s="">
.css-1p6gxrd-Info {
	font-size: 10px;
	line-height: 14px;
	color: #828c94;
	margin-left: 8px;
}
</style>
<meta http-equiv="origin-trial"
	content="A4RpyXPHPXj2Tt0KMMrya+U6IibH8/6yFLknmyK5ZwpgUNYhhwGyllkLZNqKedteT7fKzxsI8p/Pbpbd4tEJOQoAAAB8eyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5uZXQ6NDQzIiwiZmVhdHVyZSI6IkludGVyZXN0Q29ob3J0QVBJIiwiZXhwaXJ5IjoxNjI2MjIwNzk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ==">
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
<style id="ab-css-definitions-3-1-2">
.ab-pause-scrolling, body.ab-pause-scrolling, html.ab-pause-scrolling {
	overflow: hidden;
	touch-action: none
}

.ab-centering-div, .ab-iam-root.v3 {
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	pointer-events: none;
	z-index: 1050;
	-webkit-tap-highlight-color: transparent
}

.ab-centering-div:focus, .ab-iam-root.v3:focus {
	outline: 0
}

.ab-centering-div.ab-effect-fullscreen, .ab-centering-div.ab-effect-html,
	.ab-centering-div.ab-effect-modal, .ab-iam-root.v3.ab-effect-fullscreen,
	.ab-iam-root.v3.ab-effect-html, .ab-iam-root.v3.ab-effect-modal {
	opacity: 0
}

.ab-centering-div.ab-effect-fullscreen.ab-show, .ab-centering-div.ab-effect-html.ab-show,
	.ab-centering-div.ab-effect-modal.ab-show, .ab-iam-root.v3.ab-effect-fullscreen.ab-show,
	.ab-iam-root.v3.ab-effect-html.ab-show, .ab-iam-root.v3.ab-effect-modal.ab-show
	{
	opacity: 1
}

.ab-centering-div.ab-effect-fullscreen.ab-show.ab-animate-in,
	.ab-centering-div.ab-effect-html.ab-show.ab-animate-in,
	.ab-centering-div.ab-effect-modal.ab-show.ab-animate-in, .ab-iam-root.v3.ab-effect-fullscreen.ab-show.ab-animate-in,
	.ab-iam-root.v3.ab-effect-html.ab-show.ab-animate-in, .ab-iam-root.v3.ab-effect-modal.ab-show.ab-animate-in
	{
	-webkit-transition: opacity .5s;
	-moz-transition: opacity .5s;
	-o-transition: opacity .5s;
	transition: opacity .5s
}

.ab-centering-div.ab-effect-fullscreen.ab-hide, .ab-centering-div.ab-effect-html.ab-hide,
	.ab-centering-div.ab-effect-modal.ab-hide, .ab-iam-root.v3.ab-effect-fullscreen.ab-hide,
	.ab-iam-root.v3.ab-effect-html.ab-hide, .ab-iam-root.v3.ab-effect-modal.ab-hide
	{
	opacity: 0
}

.ab-centering-div.ab-effect-fullscreen.ab-hide.ab-animate-out,
	.ab-centering-div.ab-effect-html.ab-hide.ab-animate-out,
	.ab-centering-div.ab-effect-modal.ab-hide.ab-animate-out, .ab-iam-root.v3.ab-effect-fullscreen.ab-hide.ab-animate-out,
	.ab-iam-root.v3.ab-effect-html.ab-hide.ab-animate-out, .ab-iam-root.v3.ab-effect-modal.ab-hide.ab-animate-out
	{
	-webkit-transition: opacity .5s;
	-moz-transition: opacity .5s;
	-o-transition: opacity .5s;
	transition: opacity .5s
}

.ab-centering-div.ab-effect-slide .ab-in-app-message, .ab-iam-root.v3.ab-effect-slide .ab-in-app-message
	{
	-webkit-transform: translateX(535px);
	-moz-transform: translateX(535px);
	-ms-transform: translateX(535px);
	transform: translateX(535px)
}

.ab-centering-div.ab-effect-slide.ab-show .ab-in-app-message,
	.ab-iam-root.v3.ab-effect-slide.ab-show .ab-in-app-message {
	-webkit-transform: translateX(0);
	-moz-transform: translateX(0);
	-ms-transform: translateX(0);
	transform: translateX(0)
}

.ab-centering-div.ab-effect-slide.ab-show.ab-animate-in .ab-in-app-message,
	.ab-iam-root.v3.ab-effect-slide.ab-show.ab-animate-in .ab-in-app-message
	{
	-webkit-transition: transform .5s ease-in-out;
	-moz-transition: transform .5s ease-in-out;
	-o-transition: transform .5s ease-in-out;
	transition: transform .5s ease-in-out
}

.ab-centering-div.ab-effect-slide.ab-hide .ab-in-app-message,
	.ab-iam-root.v3.ab-effect-slide.ab-hide .ab-in-app-message {
	-webkit-transform: translateX(535px);
	-moz-transform: translateX(535px);
	-ms-transform: translateX(535px);
	transform: translateX(535px)
}

.ab-centering-div.ab-effect-slide.ab-hide .ab-in-app-message.ab-swiped-left,
	.ab-iam-root.v3.ab-effect-slide.ab-hide .ab-in-app-message.ab-swiped-left
	{
	-webkit-transform: translateX(-535px);
	-moz-transform: translateX(-535px);
	-ms-transform: translateX(-535px);
	transform: translateX(-535px)
}

.ab-centering-div.ab-effect-slide.ab-hide .ab-in-app-message.ab-swiped-up,
	.ab-iam-root.v3.ab-effect-slide.ab-hide .ab-in-app-message.ab-swiped-up
	{
	-webkit-transform: translateY(-535px);
	-moz-transform: translateY(-535px);
	-ms-transform: translateY(-535px);
	transform: translateY(-535px)
}

.ab-centering-div.ab-effect-slide.ab-hide .ab-in-app-message.ab-swiped-down,
	.ab-iam-root.v3.ab-effect-slide.ab-hide .ab-in-app-message.ab-swiped-down
	{
	-webkit-transform: translateY(535px);
	-moz-transform: translateY(535px);
	-ms-transform: translateY(535px);
	transform: translateY(535px)
}

.ab-centering-div.ab-effect-slide.ab-hide.ab-animate-out .ab-in-app-message,
	.ab-iam-root.v3.ab-effect-slide.ab-hide.ab-animate-out .ab-in-app-message
	{
	-webkit-transition: transform .5s ease-in-out;
	-moz-transition: transform .5s ease-in-out;
	-o-transition: transform .5s ease-in-out;
	transition: transform .5s ease-in-out
}

.ab-centering-div .ab-ios-scroll-wrapper, .ab-iam-root.v3 .ab-ios-scroll-wrapper
	{
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	overflow: auto;
	pointer-events: all;
	touch-action: auto;
	-webkit-overflow-scrolling: touch
}

.ab-centering-div .ab-in-app-message, .ab-iam-root.v3 .ab-in-app-message
	{
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	position: fixed;
	text-align: center;
	-webkit-box-shadow: 0 0 4px rgba(0, 0, 0, .3);
	-moz-box-shadow: 0 0 4px rgba(0, 0, 0, .3);
	box-shadow: 0 0 4px rgba(0, 0, 0, .3);
	line-height: normal;
	letter-spacing: normal;
	font-family: 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial,
		'Lucida Grande', sans-serif;
	z-index: 1050;
	max-width: 100%;
	overflow: hidden;
	display: inline-block;
	pointer-events: all;
	color: #333
}

.ab-centering-div .ab-in-app-message.ab-no-shadow, .ab-iam-root.v3 .ab-in-app-message.ab-no-shadow
	{
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none
}

.ab-centering-div .ab-in-app-message :focus, .ab-centering-div .ab-in-app-message:focus,
	.ab-iam-root.v3 .ab-in-app-message :focus, .ab-iam-root.v3 .ab-in-app-message:focus
	{
	outline: 0
}

.ab-centering-div .ab-in-app-message.ab-clickable, .ab-iam-root.v3 .ab-in-app-message.ab-clickable
	{
	cursor: pointer
}

.ab-centering-div .ab-in-app-message.ab-background, .ab-iam-root.v3 .ab-in-app-message.ab-background
	{
	background-color: #fff
}

.ab-centering-div .ab-in-app-message .ab-close-button, .ab-iam-root.v3 .ab-in-app-message .ab-close-button
	{
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	background-color: transparent;
	background-repeat: no-repeat;
	background-origin: content-box;
	background-size: 15px;
	border: none;
	width: 15px;
	height: 15px;
	-webkit-border-radius: 7.5px;
	-moz-border-radius: 7.5px;
	border-radius: 7.5px;
	cursor: pointer;
	display: block;
	font-size: 15px;
	line-height: 0;
	padding-top: 15px;
	padding-right: 15px;
	padding-left: 10px;
	padding-bottom: 10px;
	position: absolute;
	right: 0;
	top: 0;
	text-align: center;
	z-index: 1060
}

.ab-centering-div .ab-in-app-message .ab-close-button svg, .ab-iam-root.v3 .ab-in-app-message .ab-close-button svg
	{
	-webkit-transition: .2s ease;
	-moz-transition: .2s ease;
	-o-transition: .2s ease;
	transition: .2s ease;
	fill: #9b9b9b
}

.ab-centering-div .ab-in-app-message .ab-close-button svg.ab-chevron,
	.ab-iam-root.v3 .ab-in-app-message .ab-close-button svg.ab-chevron {
	display: none
}

.ab-centering-div .ab-in-app-message .ab-close-button:active,
	.ab-iam-root.v3 .ab-in-app-message .ab-close-button:active {
	background-color: transparent
}

.ab-centering-div .ab-in-app-message .ab-close-button:focus,
	.ab-iam-root.v3 .ab-in-app-message .ab-close-button:focus {
	background-color: transparent
}

.ab-centering-div .ab-in-app-message .ab-close-button:hover,
	.ab-iam-root.v3 .ab-in-app-message .ab-close-button:hover {
	background-color: transparent
}

.ab-centering-div .ab-in-app-message .ab-close-button:hover svg,
	.ab-iam-root.v3 .ab-in-app-message .ab-close-button:hover svg {
	fill-opacity: .8
}

.ab-centering-div .ab-in-app-message .ab-message-text, .ab-iam-root.v3 .ab-in-app-message .ab-message-text
	{
	float: none;
	line-height: 1.5;
	margin: 20px 25px;
	max-width: 100%;
	overflow: hidden;
	overflow-y: auto;
	vertical-align: text-bottom;
	word-wrap: break-word;
	white-space: pre-wrap
}

.ab-centering-div .ab-in-app-message .ab-message-text.start-aligned,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-text.start-aligned {
	text-align: left;
	text-align: start
}

.ab-centering-div .ab-in-app-message .ab-message-text.end-aligned,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-text.end-aligned {
	text-align: right;
	text-align: end
}

.ab-centering-div .ab-in-app-message .ab-message-text.center-aligned,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-text.center-aligned {
	text-align: center
}

.ab-centering-div .ab-in-app-message .ab-message-text::-webkit-scrollbar,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-text::-webkit-scrollbar
	{
	-webkit-appearance: none;
	width: 14px
}

.ab-centering-div .ab-in-app-message .ab-message-text::-webkit-scrollbar-thumb,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-text::-webkit-scrollbar-thumb
	{
	-webkit-appearance: none;
	border: 4px solid transparent;
	background-clip: padding-box;
	-webkit-border-radius: 7px;
	-moz-border-radius: 7px;
	border-radius: 7px;
	background-color: rgba(0, 0, 0, .2)
}

.ab-centering-div .ab-in-app-message .ab-message-text::-webkit-scrollbar-button,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-text::-webkit-scrollbar-button
	{
	width: 0;
	height: 0;
	display: none
}

.ab-centering-div .ab-in-app-message .ab-message-text::-webkit-scrollbar-corner,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-text::-webkit-scrollbar-corner
	{
	background-color: transparent
}

.ab-centering-div .ab-in-app-message .ab-message-header, .ab-iam-root.v3 .ab-in-app-message .ab-message-header
	{
	float: none;
	letter-spacing: 0;
	margin: 0;
	font-weight: 700;
	display: block;
	font-size: 20px;
	margin-bottom: 10px;
	line-height: 1.3
}

.ab-centering-div .ab-in-app-message .ab-message-header.start-aligned,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-header.start-aligned {
	text-align: left;
	text-align: start
}

.ab-centering-div .ab-in-app-message .ab-message-header.end-aligned,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-header.end-aligned {
	text-align: right;
	text-align: end
}

.ab-centering-div .ab-in-app-message .ab-message-header.center-aligned,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-header.center-aligned {
	text-align: center
}

.ab-centering-div .ab-in-app-message.ab-fullscreen, .ab-centering-div .ab-in-app-message.ab-modal,
	.ab-centering-div .ab-in-app-message.ab-slideup, .ab-iam-root.v3 .ab-in-app-message.ab-fullscreen,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal, .ab-iam-root.v3 .ab-in-app-message.ab-slideup
	{
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	border-radius: 8px
}

.ab-centering-div .ab-in-app-message.ab-slideup, .ab-iam-root.v3 .ab-in-app-message.ab-slideup
	{
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	cursor: pointer;
	overflow: hidden;
	word-wrap: break-word;
	text-overflow: ellipsis;
	font-size: 14px;
	font-weight: 700;
	margin: 20px;
	margin-top: calc(constant(safe-area-inset-top, 0)+ 20px);
	margin-right: calc(constant(safe-area-inset-right, 0)+ 20px);
	margin-bottom: calc(constant(safe-area-inset-bottom, 0)+ 20px);
	margin-left: calc(constant(safe-area-inset-left, 0)+ 20px);
	margin-top: calc(env(safe-area-inset-top, 0)+ 20px);
	margin-right: calc(env(safe-area-inset-right, 0)+ 20px);
	margin-bottom: calc(env(safe-area-inset-bottom, 0)+ 20px);
	margin-left: calc(env(safe-area-inset-left, 0)+ 20px);
	max-height: 150px;
	padding: 10px;
	right: 0;
	background-color: #efefef
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone {
	max-height: 66px;
	margin: 10px;
	margin-top: calc(constant(safe-area-inset-top, 0)+ 10px);
	margin-right: calc(constant(safe-area-inset-right, 0)+ 10px);
	margin-bottom: calc(constant(safe-area-inset-bottom, 0)+ 10px);
	margin-left: calc(constant(safe-area-inset-left, 0)+ 10px);
	margin-top: calc(env(safe-area-inset-top, 0)+ 10px);
	margin-right: calc(env(safe-area-inset-right, 0)+ 10px);
	margin-bottom: calc(env(safe-area-inset-bottom, 0)+ 10px);
	margin-left: calc(env(safe-area-inset-left, 0)+ 10px);
	max-width: 90%;
	max-width: calc(100% - 40px);
	min-width: 90%;
	min-width: calc(100% - 40px)
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone .ab-close-button,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone .ab-close-button
	{
	display: none
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone .ab-close-button svg:not(.ab-chevron),
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone .ab-close-button svg:not(.ab-chevron)
	{
	display: none
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone.ab-clickable .ab-close-button,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone.ab-clickable .ab-close-button
	{
	display: block;
	height: 20px;
	padding: 0 20px 0 18px;
	pointer-events: none;
	top: 50%;
	-webkit-transform: translateY(-50%);
	-moz-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
	width: 12px
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone.ab-clickable .ab-close-button svg.ab-chevron,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone.ab-clickable .ab-close-button svg.ab-chevron
	{
	display: inline
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone.ab-clickable .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone.ab-clickable .ab-message-text
	{
	border-right-width: 40px
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone .ab-message-text
	{
	max-width: 100%;
	border-right-width: 10px
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone .ab-message-text span,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone .ab-message-text span
	{
	max-height: 66px
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone .ab-message-text.ab-with-icon,
	.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone .ab-message-text.ab-with-image,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone .ab-message-text.ab-with-icon,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone .ab-message-text.ab-with-image
	{
	max-width: 80%;
	max-width: calc(100% - 50px - 5px - 10px - 25px)
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone .ab-image-area
	{
	width: 50px
}

.ab-centering-div .ab-in-app-message.ab-slideup.simulate-phone .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.simulate-phone .ab-image-area img
	{
	max-width: 50px;
	max-height: 50px;
	width: auto
}

.ab-centering-div .ab-in-app-message.ab-slideup.ab-clickable:active .ab-message-text,
	.ab-centering-div .ab-in-app-message.ab-slideup.ab-clickable:focus .ab-message-text,
	.ab-centering-div .ab-in-app-message.ab-slideup.ab-clickable:hover .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable:active .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable:focus .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable:hover .ab-message-text
	{
	opacity: .8
}

.ab-centering-div .ab-in-app-message.ab-slideup.ab-clickable:active .ab-close-button svg.ab-chevron,
	.ab-centering-div .ab-in-app-message.ab-slideup.ab-clickable:focus .ab-close-button svg.ab-chevron,
	.ab-centering-div .ab-in-app-message.ab-slideup.ab-clickable:hover .ab-close-button svg.ab-chevron,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable:active .ab-close-button svg.ab-chevron,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable:focus .ab-close-button svg.ab-chevron,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable:hover .ab-close-button svg.ab-chevron
	{
	fill-opacity: .8
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-message-text {
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	display: table-cell;
	border-color: transparent;
	border-style: solid;
	border-width: 5px 25px 5px 10px;
	max-width: 430px;
	vertical-align: middle;
	margin: 0
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-message-text span,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-message-text span {
	display: block;
	max-height: 150px;
	overflow: auto
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-message-text.ab-with-icon,
	.ab-centering-div .ab-in-app-message.ab-slideup .ab-message-text.ab-with-image,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-message-text.ab-with-icon,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-message-text.ab-with-image
	{
	max-width: 365px;
	border-top: 0;
	border-bottom: 0
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-close-button,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button {
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	background-color: transparent;
	background-repeat: no-repeat;
	background-origin: content-box;
	background-size: 15px;
	border: none;
	width: 15px;
	height: 15px;
	-webkit-border-radius: 7.5px;
	-moz-border-radius: 7.5px;
	border-radius: 7.5px;
	cursor: pointer;
	display: block;
	font-size: 15px;
	line-height: 0;
	padding-top: 10px;
	padding-right: 10px;
	padding-left: 6.66666667px;
	padding-bottom: 6.66666667px;
	position: absolute;
	right: 0;
	top: 0;
	text-align: center;
	z-index: 1060
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-close-button svg,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button svg {
	-webkit-transition: .2s ease;
	-moz-transition: .2s ease;
	-o-transition: .2s ease;
	transition: .2s ease;
	fill: #9b9b9b
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-close-button svg.ab-chevron,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button svg.ab-chevron
	{
	display: none
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-close-button:active,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button:active {
	background-color: transparent
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-close-button:focus,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button:focus {
	background-color: transparent
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-close-button:hover,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button:hover {
	background-color: transparent
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-close-button:hover svg,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button:hover svg
	{
	fill-opacity: .8
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-image-area {
	float: none;
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	display: table-cell;
	border-color: transparent;
	border-style: solid;
	border-width: 5px 0 5px 5px;
	vertical-align: top;
	width: 60px;
	margin: 0
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-image-area.ab-icon-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-image-area.ab-icon-area
	{
	width: auto
}

.ab-centering-div .ab-in-app-message.ab-slideup .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-image-area img {
	float: none;
	width: 100%
}

.ab-centering-div .ab-in-app-message.ab-fullscreen, .ab-centering-div .ab-in-app-message.ab-modal,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen, .ab-iam-root.v3 .ab-in-app-message.ab-modal
	{
	font-size: 14px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen .ab-image-area,
	.ab-centering-div .ab-in-app-message.ab-modal .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-image-area {
	float: none;
	position: relative;
	display: block;
	overflow: hidden
}

.ab-centering-div .ab-in-app-message.ab-fullscreen .ab-image-area .ab-center-cropped-img,
	.ab-centering-div .ab-in-app-message.ab-modal .ab-image-area .ab-center-cropped-img,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen .ab-image-area .ab-center-cropped-img,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-image-area .ab-center-cropped-img
	{
	background-size: cover;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0
}

.ab-centering-div .ab-in-app-message.ab-fullscreen .ab-icon,
	.ab-centering-div .ab-in-app-message.ab-modal .ab-icon, .ab-iam-root.v3 .ab-in-app-message.ab-fullscreen .ab-icon,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-icon {
	margin-top: 20px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.graphic,
	.ab-centering-div .ab-in-app-message.ab-modal.graphic, .ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.graphic,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.graphic {
	padding: 0
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.graphic .ab-message-text,
	.ab-centering-div .ab-in-app-message.ab-modal.graphic .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.graphic .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.graphic .ab-message-text {
	display: none
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.graphic .ab-message-buttons,
	.ab-centering-div .ab-in-app-message.ab-modal.graphic .ab-message-buttons,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.graphic .ab-message-buttons,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.graphic .ab-message-buttons
	{
	bottom: 0;
	left: 0
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.graphic .ab-image-area,
	.ab-centering-div .ab-in-app-message.ab-modal.graphic .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.graphic .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.graphic .ab-image-area {
	float: none;
	height: auto;
	margin: 0
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.graphic .ab-image-area img,
	.ab-centering-div .ab-in-app-message.ab-modal.graphic .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.graphic .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.graphic .ab-image-area img
	{
	display: block;
	top: 0;
	-webkit-transform: none;
	-moz-transform: none;
	-ms-transform: none;
	transform: none
}

.ab-centering-div .ab-in-app-message.ab-modal, .ab-iam-root.v3 .ab-in-app-message.ab-modal
	{
	padding-top: 20px;
	width: 450px;
	max-width: 450px;
	max-height: 720px
}

.ab-centering-div .ab-in-app-message.ab-modal.simulate-phone,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.simulate-phone {
	max-width: 91%;
	max-width: calc(100% - 30px)
}

.ab-centering-div .ab-in-app-message.ab-modal.simulate-phone.graphic .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.simulate-phone.graphic .ab-image-area img
	{
	max-width: 91vw;
	max-width: calc(100vw - 30px)
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-message-text {
	max-height: 660px
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-message-text.ab-with-image,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-message-text.ab-with-image
	{
	max-height: 524.82758621px
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-message-text.ab-with-icon,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-message-text.ab-with-icon
	{
	max-height: 610px
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-message-text.ab-with-buttons,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-message-text.ab-with-buttons
	{
	margin-bottom: 93px;
	max-height: 587px
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-message-text.ab-with-buttons.ab-with-image,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-message-text.ab-with-buttons.ab-with-image
	{
	max-height: 451.82758621px
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-message-text.ab-with-buttons.ab-with-icon,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-message-text.ab-with-buttons.ab-with-icon
	{
	max-height: 537px
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-image-area {
	margin-top: -20px;
	max-height: 155.17241379px
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-image-area img {
	max-width: 100%;
	max-height: 155.17241379px
}

.ab-centering-div .ab-in-app-message.ab-modal .ab-image-area.ab-icon-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal .ab-image-area.ab-icon-area
	{
	height: auto
}

.ab-centering-div .ab-in-app-message.ab-modal.graphic, .ab-iam-root.v3 .ab-in-app-message.ab-modal.graphic
	{
	width: auto;
	overflow: hidden
}

.ab-centering-div .ab-in-app-message.ab-modal.graphic .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.graphic .ab-image-area {
	display: inline
}

.ab-centering-div .ab-in-app-message.ab-modal.graphic .ab-image-area img,
	.ab-iam-root.v3 .ab-in-app-message.ab-modal.graphic .ab-image-area img
	{
	max-height: 720px;
	max-width: 450px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen, .ab-iam-root.v3 .ab-in-app-message.ab-fullscreen
	{
	width: 450px;
	max-height: 720px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.landscape,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape {
	width: 720px;
	max-height: 450px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.landscape .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape .ab-image-area
	{
	height: 225px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.landscape.graphic .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape.graphic .ab-image-area
	{
	height: 450px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.landscape .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape .ab-message-text
	{
	max-height: 112px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen .ab-message-text {
	max-height: 247px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen .ab-message-text.ab-with-buttons,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen .ab-message-text.ab-with-buttons
	{
	margin-bottom: 93px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen .ab-image-area {
	height: 360px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.graphic .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.graphic .ab-image-area
	{
	height: 720px
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone {
	-webkit-transition: top none;
	-moz-transition: top none;
	-o-transition: top none;
	transition: top none;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	height: 100%;
	width: 100%;
	max-height: none;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-transform: none;
	-moz-transform: none;
	-ms-transform: none;
	transform: none;
	height: auto !important
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone.landscape .ab-close-button,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone.landscape .ab-close-button
	{
	margin-right: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
	margin-right: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0));
	margin-left: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
	margin-left: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0))
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone .ab-image-area,
	.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone.landscape .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone.landscape .ab-image-area
	{
	height: 50%
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone .ab-message-text,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone .ab-message-text
	{
	max-height: 48%;
	max-height: calc(50% - 20px - 20px)
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone .ab-message-text.ab-with-buttons,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone .ab-message-text.ab-with-buttons
	{
	margin-bottom: 20px;
	max-height: 30%;
	max-height: calc(50% - 93px - 20px)
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone.landscape .ab-message-text.ab-with-buttons,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone.landscape .ab-message-text.ab-with-buttons
	{
	max-height: 20%;
	max-height: calc(50% - 93px - 20px)
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone:not(.graphic),
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone:not(.graphic)
	{
	padding-bottom: 0;
	padding-bottom: constant(safe-area-inset-bottom, 0);
	padding-bottom: env(safe-area-inset-bottom, 0)
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone:not(.graphic) .ab-message-buttons,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone:not(.graphic) .ab-message-buttons
	{
	padding-top: 0;
	position: relative
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone.graphic,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone.graphic
	{
	display: block
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone.graphic .ab-image-area,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone.graphic .ab-image-area
	{
	height: 100%
}

.ab-centering-div .ab-in-app-message.ab-fullscreen.simulate-phone.graphic .ab-message-button,
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.simulate-phone.graphic .ab-message-button
	{
	margin-bottom: 0;
	margin-bottom: constant(safe-area-inset-bottom, 0);
	margin-bottom: env(safe-area-inset-bottom, 0)
}

.ab-centering-div .ab-in-app-message.ab-html-message, .ab-iam-root.v3 .ab-in-app-message.ab-html-message
	{
	background-color: transparent;
	border: none;
	height: 100%;
	overflow: auto;
	position: relative;
	touch-action: auto;
	width: 100%
}

.ab-centering-div .ab-in-app-message .ab-message-buttons, .ab-iam-root.v3 .ab-in-app-message .ab-message-buttons
	{
	position: absolute;
	bottom: 0;
	width: 100%;
	padding: 17px 25px 30px 25px;
	z-index: inherit;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box
}

.ab-centering-div .ab-in-app-message .ab-message-button, .ab-iam-root.v3 .ab-in-app-message .ab-message-button
	{
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	cursor: pointer;
	display: inline-block;
	font-size: 14px;
	font-weight: 700;
	height: 44px;
	line-height: normal;
	letter-spacing: normal;
	margin: 0;
	max-width: 100%;
	min-width: 80px;
	padding: 0 12px;
	position: relative;
	text-transform: none;
	width: 48%;
	width: calc(50% - 5px);
	border: 1px solid #1b78cf;
	-webkit-transition: .2s ease;
	-moz-transition: .2s ease;
	-o-transition: .2s ease;
	transition: .2s ease;
	overflow: hidden;
	word-wrap: break-word;
	text-overflow: ellipsis;
	word-wrap: normal;
	white-space: nowrap
}

.ab-centering-div .ab-in-app-message .ab-message-button:first-of-type,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-button:first-of-type {
	float: left;
	background-color: #fff;
	color: #1b78cf
}

.ab-centering-div .ab-in-app-message .ab-message-button:last-of-type,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-button:last-of-type {
	float: right;
	background-color: #1b78cf;
	color: #fff
}

.ab-centering-div .ab-in-app-message .ab-message-button:first-of-type:last-of-type,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-button:first-of-type:last-of-type
	{
	float: none;
	width: auto
}

.ab-centering-div .ab-in-app-message .ab-message-button:after,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-button:after {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: transparent
}

.ab-centering-div .ab-in-app-message .ab-message-button:after,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-button:after {
	-webkit-transition: .2s ease;
	-moz-transition: .2s ease;
	-o-transition: .2s ease;
	transition: .2s ease
}

.ab-centering-div .ab-in-app-message .ab-message-button:hover,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-button:hover {
	opacity: .8
}

.ab-centering-div .ab-in-app-message .ab-message-button:active:after,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-button:active:after {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, .08)
}

.ab-centering-div .ab-in-app-message .ab-message-button:focus:after,
	.ab-iam-root.v3 .ab-in-app-message .ab-message-button:focus:after {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, .15)
}

.ab-centering-div .ab-in-app-message .ab-message-button a, .ab-iam-root.v3 .ab-in-app-message .ab-message-button a
	{
	color: inherit;
	text-decoration: inherit
}

.ab-centering-div .ab-in-app-message img, .ab-iam-root.v3 .ab-in-app-message img
	{
	float: none;
	display: inline-block
}

.ab-centering-div .ab-in-app-message .ab-icon, .ab-iam-root.v3 .ab-in-app-message .ab-icon
	{
	float: none;
	display: inline-block;
	padding: 10px;
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	border-radius: 8px
}

.ab-centering-div .ab-in-app-message .ab-icon .fa, .ab-iam-root.v3 .ab-in-app-message .ab-icon .fa
	{
	float: none;
	font-size: 30px;
	width: 30px
}

.ab-centering-div .ab-start-hidden, .ab-iam-root.v3 .ab-start-hidden {
	visibility: hidden
}

.ab-centering-div .ab-centered, .ab-centering-div.ab-centering-div .ab-modal,
	.ab-iam-root.v3 .ab-centered, .ab-iam-root.v3.ab-centering-div .ab-modal
	{
	margin: auto;
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-moz-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%)
}

.ab-email-capture, .ab-iam-root.v3 {
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0
}

.ab-email-capture .ab-page-blocker, .ab-iam-root.v3 .ab-page-blocker {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 1040;
	pointer-events: all;
	background-color: rgba(51, 51, 51, .75)
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-email-capture-input {
	margin-bottom: 30px
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-message-buttons ~.ab-message-text
	{
	max-height: 541px;
	margin-bottom: 160px
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-message-buttons ~.ab-message-text.with-explanatory-link
	{
	max-height: 513px;
	margin-bottom: 188px
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-image-area ~.ab-message-text
	{
	max-height: 385.82758621px
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-image-area ~.ab-message-text.with-explanatory-link
	{
	max-height: 357.82758621px
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-email-validation-error
	{
	margin-top: 62px
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-explanatory-link {
	display: block
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-background,
	.ab-email-capture .ab-in-app-message.ab-modal .ab-mask {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	z-index: -1
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-close-button {
	line-height: normal
}

.ab-email-capture .ab-in-app-message.ab-modal .ab-html-close-button {
	right: 3px;
	top: -1px;
	font-size: 34px;
	padding-top: 0
}

@media ( max-width :600px) {
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup {
		max-height: 66px;
		margin: 10px;
		margin-top: calc(constant(safe-area-inset-top, 0)+ 10px);
		margin-right: calc(constant(safe-area-inset-right, 0)+ 10px);
		margin-bottom: calc(constant(safe-area-inset-bottom, 0)+ 10px);
		margin-left: calc(constant(safe-area-inset-left, 0)+ 10px);
		margin-top: calc(env(safe-area-inset-top, 0)+ 10px);
		margin-right: calc(env(safe-area-inset-right, 0)+ 10px);
		margin-bottom: calc(env(safe-area-inset-bottom, 0)+ 10px);
		margin-left: calc(env(safe-area-inset-left, 0)+ 10px);
		max-width: 90%;
		max-width: calc(100% - 40px);
		min-width: 90%;
		min-width: calc(100% - 40px)
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button {
		display: none
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-close-button svg:not(.ab-chevron)
		{
		display: none
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable .ab-close-button
		{
		display: block;
		height: 20px;
		padding: 0 20px 0 18px;
		pointer-events: none;
		top: 50%;
		-webkit-transform: translateY(-50%);
		-moz-transform: translateY(-50%);
		-ms-transform: translateY(-50%);
		transform: translateY(-50%);
		width: 12px
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable .ab-close-button svg.ab-chevron
		{
		display: inline
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup.ab-clickable .ab-message-text
		{
		border-right-width: 40px
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-message-text {
		max-width: 100%;
		border-right-width: 10px
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-message-text span {
		max-height: 66px
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-message-text.ab-with-icon,
		.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-message-text.ab-with-image
		{
		max-width: 80%;
		max-width: calc(100% - 50px - 5px - 10px - 25px)
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-image-area {
		width: 50px
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-slideup .ab-image-area img {
		max-width: 50px;
		max-height: 50px;
		width: auto
	}
	.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen,
		.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.landscape
		{
		-webkit-transition: top none;
		-moz-transition: top none;
		-o-transition: top none;
		transition: top none;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		height: 100%;
		width: 100%;
		max-height: none;
		-webkit-border-radius: 0;
		-moz-border-radius: 0;
		border-radius: 0;
		-webkit-transform: none;
		-moz-transform: none;
		-ms-transform: none;
		transform: none;
		height: auto !important
	}
	.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.landscape .ab-close-button,
		.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.landscape.landscape .ab-close-button
		{
		margin-right: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
		margin-right: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0));
		margin-left: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
		margin-left: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0))
	}
	.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen .ab-image-area,
		.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.landscape .ab-image-area,
		.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.landscape.landscape .ab-image-area
		{
		height: 50%
	}
	.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen .ab-message-text,
		.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.landscape .ab-message-text
		{
		max-height: 48%;
		max-height: calc(50% - 20px - 20px)
	}
	.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen .ab-message-text.ab-with-buttons,
		.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.landscape .ab-message-text.ab-with-buttons
		{
		margin-bottom: 20px;
		max-height: 30%;
		max-height: calc(50% - 93px - 20px)
	}
	.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.landscape .ab-message-text.ab-with-buttons,
		.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.landscape.landscape .ab-message-text.ab-with-buttons
		{
		max-height: 20%;
		max-height: calc(50% - 93px - 20px)
	}
	.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.landscape:not(.graphic),
		.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen:not(.graphic)
		{
		padding-bottom: 0;
		padding-bottom: constant(safe-area-inset-bottom, 0);
		padding-bottom: env(safe-area-inset-bottom, 0)
	}
	.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.landscape:not(.graphic) .ab-message-buttons,
		.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen:not(.graphic) .ab-message-buttons
		{
		padding-top: 0;
		position: relative
	}
	.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.graphic,
		.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.landscape.graphic
		{
		display: block
	}
	.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.graphic .ab-image-area,
		.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.landscape.graphic .ab-image-area
		{
		height: 100%
	}
	.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.graphic .ab-message-button,
		.ab-iam-root.v3 .ab-in-app-message:not(.force-desktop).ab-fullscreen.landscape.graphic .ab-message-button
		{
		margin-bottom: 0;
		margin-bottom: constant(safe-area-inset-bottom, 0);
		margin-bottom: env(safe-area-inset-bottom, 0)
	}
}

@media ( max-width :480px) {
	.ab-email-capture .ab-in-app-message.ab-modal:not(.force-desktop),
		.ab-iam-root.v3 .ab-in-app-message.ab-modal:not(.force-desktop) {
		max-width: 91%;
		max-width: calc(100% - 30px)
	}
	.ab-email-capture .ab-in-app-message.ab-modal:not(.force-desktop).graphic .ab-image-area img,
		.ab-iam-root.v3 .ab-in-app-message.ab-modal:not(.force-desktop).graphic .ab-image-area img
		{
		max-width: 91vw;
		max-width: calc(100vw - 30px)
	}
}

@media ( max-height :750px) {
	.ab-email-capture .ab-in-app-message.ab-modal:not(.force-desktop),
		.ab-iam-root.v3 .ab-in-app-message.ab-modal:not(.force-desktop) {
		max-height: 91%;
		max-height: calc(100% - 30px)
	}
	.ab-email-capture .ab-in-app-message.ab-modal:not(.force-desktop).graphic .ab-image-area img,
		.ab-iam-root.v3 .ab-in-app-message.ab-modal:not(.force-desktop).graphic .ab-image-area img
		{
		max-height: 91vh;
		max-height: calc(100vh - 30px)
	}
	.ab-email-capture .ab-in-app-message.ab-modal:not(.force-desktop) .ab-message-text,
		.ab-iam-root.v3 .ab-in-app-message.ab-modal:not(.force-desktop) .ab-message-text
		{
		max-height: 65vh;
		max-height: calc(100vh - 30px - 60px)
	}
	.ab-email-capture .ab-in-app-message.ab-modal:not(.force-desktop) .ab-message-text.ab-with-image,
		.ab-iam-root.v3 .ab-in-app-message.ab-modal:not(.force-desktop) .ab-message-text.ab-with-image
		{
		max-height: 45vh;
		max-height: calc(100vh - 30px - 155.17241379310346px - 40px)
	}
	.ab-email-capture .ab-in-app-message.ab-modal:not(.force-desktop) .ab-message-text.ab-with-icon,
		.ab-iam-root.v3 .ab-in-app-message.ab-modal:not(.force-desktop) .ab-message-text.ab-with-icon
		{
		max-height: 45vh;
		max-height: calc(100vh - 30px - 70px - 40px)
	}
	.ab-email-capture .ab-in-app-message.ab-modal:not(.force-desktop) .ab-message-text.ab-with-buttons,
		.ab-iam-root.v3 .ab-in-app-message.ab-modal:not(.force-desktop) .ab-message-text.ab-with-buttons
		{
		max-height: 50vh;
		max-height: calc(100vh - 30px - 93px - 40px)
	}
	.ab-email-capture .ab-in-app-message.ab-modal:not(.force-desktop) .ab-message-text.ab-with-buttons.ab-with-image,
		.ab-iam-root.v3 .ab-in-app-message.ab-modal:not(.force-desktop) .ab-message-text.ab-with-buttons.ab-with-image
		{
		max-height: 30vh;
		max-height: calc(100vh - 30px - 155.17241379310346px - 93px - 20px)
	}
	.ab-email-capture .ab-in-app-message.ab-modal:not(.force-desktop) .ab-message-text.ab-with-buttons.ab-with-icon,
		.ab-iam-root.v3 .ab-in-app-message.ab-modal:not(.force-desktop) .ab-message-text.ab-with-buttons.ab-with-icon
		{
		max-height: 30vh;
		max-height: calc(100vh - 30px - 70px - 93px - 20px)
	}
}

@media ( min-width :601px) {
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen .ab-image-area img {
		max-height: 100%;
		max-width: 100%
	}
}

@media ( max-height :750px) and (min-width:601px) {
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not(.landscape):not(.force-desktop)
		{
		-webkit-transition: top none;
		-moz-transition: top none;
		-o-transition: top none;
		transition: top none;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		height: 100%;
		width: 100%;
		max-height: none;
		-webkit-border-radius: 0;
		-moz-border-radius: 0;
		border-radius: 0;
		-webkit-transform: none;
		-moz-transform: none;
		-ms-transform: none;
		transform: none;
		height: auto !important;
		width: 450px
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not(.landscape):not(.force-desktop).landscape .ab-close-button
		{
		margin-right: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
		margin-right: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0));
		margin-left: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
		margin-left: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0))
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not(.landscape):not(.force-desktop) .ab-image-area,
		.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not(.landscape):not(.force-desktop).landscape .ab-image-area
		{
		height: 50%
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not(.landscape):not(.force-desktop) .ab-message-text
		{
		max-height: 48%;
		max-height: calc(50% - 20px - 20px)
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not(.landscape):not(.force-desktop) .ab-message-text.ab-with-buttons
		{
		margin-bottom: 20px;
		max-height: 30%;
		max-height: calc(50% - 93px - 20px)
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not(.landscape):not(.force-desktop).landscape .ab-message-text.ab-with-buttons
		{
		max-height: 20%;
		max-height: calc(50% - 93px - 20px)
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not(.landscape):not(.force-desktop):not(.graphic)
		{
		padding-bottom: 0;
		padding-bottom: constant(safe-area-inset-bottom, 0);
		padding-bottom: env(safe-area-inset-bottom, 0)
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not(.landscape):not(.force-desktop):not(.graphic) .ab-message-buttons
		{
		padding-top: 0;
		position: relative
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not(.landscape):not(.force-desktop).graphic
		{
		display: block
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not(.landscape):not(.force-desktop).graphic .ab-image-area
		{
		height: 100%
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen:not(.landscape):not(.force-desktop).graphic .ab-message-button
		{
		margin-bottom: 0;
		margin-bottom: constant(safe-area-inset-bottom, 0);
		margin-bottom: env(safe-area-inset-bottom, 0)
	}
}

@media ( max-height :480px) {
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop)
		{
		-webkit-transition: top none;
		-moz-transition: top none;
		-o-transition: top none;
		transition: top none;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		height: 100%;
		width: 100%;
		max-height: none;
		-webkit-border-radius: 0;
		-moz-border-radius: 0;
		border-radius: 0;
		-webkit-transform: none;
		-moz-transform: none;
		-ms-transform: none;
		transform: none;
		height: auto !important
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop).landscape .ab-close-button
		{
		margin-right: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
		margin-right: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0));
		margin-left: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
		margin-left: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0))
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop) .ab-image-area,
		.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop).landscape .ab-image-area
		{
		height: 50%
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop) .ab-message-text
		{
		max-height: 48%;
		max-height: calc(50% - 20px - 20px)
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop) .ab-message-text.ab-with-buttons
		{
		margin-bottom: 20px;
		max-height: 30%;
		max-height: calc(50% - 93px - 20px)
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop).landscape .ab-message-text.ab-with-buttons
		{
		max-height: 20%;
		max-height: calc(50% - 93px - 20px)
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop):not(.graphic)
		{
		padding-bottom: 0;
		padding-bottom: constant(safe-area-inset-bottom, 0);
		padding-bottom: env(safe-area-inset-bottom, 0)
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop):not(.graphic) .ab-message-buttons
		{
		padding-top: 0;
		position: relative
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop).graphic
		{
		display: block
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop).graphic .ab-image-area
		{
		height: 100%
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop).graphic .ab-message-button
		{
		margin-bottom: 0;
		margin-bottom: constant(safe-area-inset-bottom, 0);
		margin-bottom: env(safe-area-inset-bottom, 0)
	}
}

@media ( max-width :750px) {
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop)
		{
		-webkit-transition: top none;
		-moz-transition: top none;
		-o-transition: top none;
		transition: top none;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		height: 100%;
		width: 100%;
		max-height: none;
		-webkit-border-radius: 0;
		-moz-border-radius: 0;
		border-radius: 0;
		-webkit-transform: none;
		-moz-transform: none;
		-ms-transform: none;
		transform: none;
		height: auto !important
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop).landscape .ab-close-button
		{
		margin-right: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
		margin-right: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0));
		margin-left: calc(constant(safe-area-inset-bottom, 0)+ constant(safe-area-inset-top, 0));
		margin-left: calc(env(safe-area-inset-bottom, 0)+ env(safe-area-inset-top, 0))
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop) .ab-image-area,
		.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop).landscape .ab-image-area
		{
		height: 50%
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop) .ab-message-text
		{
		max-height: 48%;
		max-height: calc(50% - 20px - 20px)
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop) .ab-message-text.ab-with-buttons
		{
		margin-bottom: 20px;
		max-height: 30%;
		max-height: calc(50% - 93px - 20px)
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop).landscape .ab-message-text.ab-with-buttons
		{
		max-height: 20%;
		max-height: calc(50% - 93px - 20px)
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop):not(.graphic)
		{
		padding-bottom: 0;
		padding-bottom: constant(safe-area-inset-bottom, 0);
		padding-bottom: env(safe-area-inset-bottom, 0)
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop):not(.graphic) .ab-message-buttons
		{
		padding-top: 0;
		position: relative
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop).graphic
		{
		display: block
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop).graphic .ab-image-area
		{
		height: 100%
	}
	.ab-iam-root.v3 .ab-in-app-message.ab-fullscreen.landscape:not(.force-desktop).graphic .ab-message-button
		{
		margin-bottom: 0;
		margin-bottom: constant(safe-area-inset-bottom, 0);
		margin-bottom: env(safe-area-inset-bottom, 0)
	}
}

body>.ab-feed {
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	width: 421px;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0
}

body>.ab-feed .ab-feed-body {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	border: none;
	border-left: 1px solid #d0d0d0;
	padding-top: 58px;
	min-height: 100%
}

body>.ab-feed .ab-no-cards-message {
	position: absolute;
	width: 100%;
	margin-left: -20px;
	top: 40%
}

.ab-feed {
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-box-shadow: 0 1px 7px 1px rgba(66, 82, 113, .15);
	-moz-box-shadow: 0 1px 7px 1px rgba(66, 82, 113, .15);
	box-shadow: 0 1px 7px 1px rgba(66, 82, 113, .15);
	width: 402px;
	background-color: #eee;
	font-family: 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial,
		'Lucida Grande', sans-serif;
	font-size: 13px;
	line-height: 130%;
	letter-spacing: normal;
	overflow-y: auto;
	overflow-x: visible;
	z-index: 1050;
	-webkit-overflow-scrolling: touch
}

.ab-feed :focus, .ab-feed:focus {
	outline: 0
}

.ab-feed .ab-feed-body {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	border: 1px solid #d0d0d0;
	border-top: none;
	padding: 20px 20px 0 20px
}

.ab-feed.ab-effect-slide {
	-webkit-transform: translateX(450px);
	-moz-transform: translateX(450px);
	-ms-transform: translateX(450px);
	transform: translateX(450px);
	-webkit-transition: transform .5s ease-in-out;
	-moz-transition: transform .5s ease-in-out;
	-o-transition: transform .5s ease-in-out;
	transition: transform .5s ease-in-out
}

.ab-feed.ab-effect-slide.ab-show {
	-webkit-transform: translateX(0);
	-moz-transform: translateX(0);
	-ms-transform: translateX(0);
	transform: translateX(0)
}

.ab-feed.ab-effect-slide.ab-hide {
	-webkit-transform: translateX(450px);
	-moz-transform: translateX(450px);
	-ms-transform: translateX(450px);
	transform: translateX(450px)
}

.ab-feed .ab-card {
	position: relative;
	-webkit-box-shadow: 0 2px 3px 0 rgba(178, 178, 178, .5);
	-moz-box-shadow: 0 2px 3px 0 rgba(178, 178, 178, .5);
	box-shadow: 0 2px 3px 0 rgba(178, 178, 178, .5);
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	width: 100%;
	border: 1px solid #d0d0d0;
	margin-bottom: 20px;
	overflow: hidden;
	background-color: #fff;
	-webkit-transition: height .4s ease-in-out, margin .4s ease-in-out;
	-moz-transition: height .4s ease-in-out, margin .4s ease-in-out;
	-o-transition: height .4s ease-in-out, margin .4s ease-in-out;
	transition: height .4s ease-in-out, margin .4s ease-in-out
}

.ab-feed .ab-card .ab-pinned-indicator {
	position: absolute;
	right: 0;
	top: 0;
	margin-right: -1px;
	width: 0;
	height: 0;
	border-style: solid;
	border-width: 0 24px 24px 0;
	border-color: transparent #1676d0 transparent transparent
}

.ab-feed .ab-card .ab-pinned-indicator .fa-star {
	position: absolute;
	right: -21px;
	top: 2px;
	font-size: 9px;
	color: #fff
}

.ab-feed .ab-card.ab-effect-card.ab-hide {
	-webkit-transition: all .5s ease-in-out;
	-moz-transition: all .5s ease-in-out;
	-o-transition: all .5s ease-in-out;
	transition: all .5s ease-in-out
}

.ab-feed .ab-card.ab-effect-card.ab-hide.ab-swiped-left {
	-webkit-transform: translateX(-450px);
	-moz-transform: translateX(-450px);
	-ms-transform: translateX(-450px);
	transform: translateX(-450px)
}

.ab-feed .ab-card.ab-effect-card.ab-hide.ab-swiped-right {
	-webkit-transform: translateX(450px);
	-moz-transform: translateX(450px);
	-ms-transform: translateX(450px);
	transform: translateX(450px)
}

.ab-feed .ab-card.ab-effect-card.ab-hide:not(.ab-swiped-left):not(.ab-swiped-right)
	{
	opacity: 0
}

.ab-feed .ab-card .ab-close-button {
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	background-color: transparent;
	background-repeat: no-repeat;
	background-origin: content-box;
	background-size: 15px;
	border: none;
	width: 15px;
	height: 15px;
	-webkit-border-radius: 7.5px;
	-moz-border-radius: 7.5px;
	border-radius: 7.5px;
	cursor: pointer;
	display: block;
	font-size: 15px;
	line-height: 0;
	padding-top: 15px;
	padding-right: 15px;
	padding-left: 10px;
	padding-bottom: 10px;
	position: absolute;
	right: 0;
	top: 0;
	text-align: center;
	z-index: 1060;
	opacity: 0;
	-webkit-transition: .5s;
	-moz-transition: .5s;
	-o-transition: .5s;
	transition: .5s
}

.ab-feed .ab-card .ab-close-button svg {
	-webkit-transition: .2s ease;
	-moz-transition: .2s ease;
	-o-transition: .2s ease;
	transition: .2s ease;
	fill: #9b9b9b
}

.ab-feed .ab-card .ab-close-button svg.ab-chevron {
	display: none
}

.ab-feed .ab-card .ab-close-button:active {
	background-color: transparent
}

.ab-feed .ab-card .ab-close-button:focus {
	background-color: transparent
}

.ab-feed .ab-card .ab-close-button:hover {
	background-color: transparent
}

.ab-feed .ab-card .ab-close-button:hover svg {
	fill-opacity: .8
}

.ab-feed .ab-card .ab-close-button:hover {
	opacity: 1
}

.ab-feed .ab-card .ab-close-button:focus {
	opacity: 1
}

.ab-feed .ab-card a {
	float: none;
	color: inherit;
	text-decoration: none
}

.ab-feed .ab-card a:hover {
	text-decoration: underline
}

.ab-feed .ab-card .ab-image-area {
	float: none;
	display: inline-block;
	vertical-align: top;
	line-height: 0;
	overflow: hidden;
	width: 100%;
	-webkit-box-sizing: initial;
	-moz-box-sizing: initial;
	box-sizing: initial
}

.ab-feed .ab-card .ab-image-area img {
	float: none;
	height: auto;
	width: 100%
}

.ab-feed .ab-card.ab-banner .ab-card-body {
	display: none
}

.ab-feed .ab-card .ab-card-body {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	display: inline-block;
	width: 100%;
	position: relative
}

.ab-feed .ab-card .ab-unread-indicator {
	position: absolute;
	bottom: 0;
	margin-right: -1px;
	width: 100%;
	height: 5px;
	background-color: #1676d0
}

.ab-feed .ab-card .ab-unread-indicator.read {
	background-color: transparent
}

.ab-feed .ab-card .ab-title {
	float: none;
	letter-spacing: 0;
	margin: 0;
	font-weight: 700;
	display: block;
	overflow: hidden;
	word-wrap: break-word;
	text-overflow: ellipsis;
	font-size: 18px;
	line-height: 130%;
	font-family: 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial,
		'Lucida Grande', sans-serif;
	padding: 20px 25px 0 25px
}

.ab-feed .ab-card .ab-description {
	float: none;
	color: #545454;
	padding: 15px 25px 20px 25px;
	word-wrap: break-word;
	white-space: pre-wrap
}

.ab-feed .ab-card .ab-description.ab-no-title {
	padding-top: 20px
}

.ab-feed .ab-card .ab-url-area {
	float: none;
	color: #1676d0;
	margin-top: 12px;
	font-family: 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial,
		'Lucida Grande', sans-serif
}

.ab-feed .ab-card.ab-classic-card .ab-card-body {
	min-height: 40px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px
}

.ab-feed .ab-card.ab-classic-card.with-image .ab-card-body {
	min-height: 100px;
	padding-left: 72px
}

.ab-feed .ab-card.ab-classic-card.with-image .ab-image-area {
	width: 60px;
	height: 60px;
	padding: 20px 0 25px 25px;
	position: absolute
}

.ab-feed .ab-card.ab-classic-card.with-image .ab-image-area img {
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	max-width: 100%;
	max-height: 100%;
	width: auto;
	height: auto
}

.ab-feed .ab-card.ab-classic-card.with-image .ab-title {
	background-color: transparent;
	font-size: 16px
}

.ab-feed .ab-card.ab-classic-card.with-image .ab-description {
	padding-top: 10px
}

.ab-feed .ab-card.ab-control-card {
	height: 0;
	width: 0;
	margin: 0;
	border: 0
}

.ab-feed .ab-feed-buttons-wrapper {
	float: none;
	position: relative;
	background-color: #282828;
	height: 38px;
	-webkit-box-shadow: 0 2px 3px 0 rgba(178, 178, 178, .5);
	-moz-box-shadow: 0 2px 3px 0 rgba(178, 178, 178, .5);
	box-shadow: 0 2px 3px 0 rgba(178, 178, 178, .5);
	z-index: 1
}

.ab-feed .ab-feed-buttons-wrapper .ab-close-button, .ab-feed .ab-feed-buttons-wrapper .ab-refresh-button
	{
	float: none;
	cursor: pointer;
	color: #fff;
	font-size: 18px;
	margin: 10px;
	-webkit-transition: .2s;
	-moz-transition: .2s;
	-o-transition: .2s;
	transition: .2s
}

.ab-feed .ab-feed-buttons-wrapper .ab-close-button:hover, .ab-feed .ab-feed-buttons-wrapper .ab-refresh-button:hover
	{
	font-size: 22px
}

.ab-feed .ab-feed-buttons-wrapper .ab-close-button {
	float: right;
	margin-top: 9px
}

.ab-feed .ab-feed-buttons-wrapper .ab-close-button:hover {
	margin-top: 6px;
	margin-right: 9px
}

.ab-feed .ab-feed-buttons-wrapper .ab-refresh-button {
	margin-left: 12px
}

.ab-feed .ab-feed-buttons-wrapper .ab-refresh-button:hover {
	margin-top: 8px;
	margin-left: 10px
}

.ab-feed .ab-no-cards-message {
	text-align: center;
	margin-bottom: 20px
}

@media ( max-width :600px) {
	body>.ab-feed {
		width: 100%
	}
}
</style>
<script async="" src="https://static.hotjar.com/c/hotjar-877658.js?sv=6"></script>
<script async=""
	src="https://script.hotjar.com/modules.376dac12c7cbd03331c3.js"
	charset="utf-8"></script>
<style type="text/css">
iframe#_hjRemoteVarsFrame {
	display: none !important;
	width: 1px !important;
	height: 1px !important;
	opacity: 0 !important;
	pointer-events: none !important;
}
.customer-notice-detail__back {
    display: inline-block;
    background: none;
    font: inherit;
    display: block;
    width: 180px;
    margin: 0 auto;
    padding: 10px 0;
    font-size: 15px;
    line-height: 20px;
    text-align: center;
    font-weight: 700;
    background-color: #35c5f0;
    border: none;
    color: #fff;
    border-radius: 4px;
    transition: background-color .1s;
}
</style>
</head>

<body>
<header class="layout-navigation-bar">
			<div data-sticky-enabled="false" data-sticky-disabled="false"
				data-sticky-always="true" data-sticky-ignore="false"
				data-direction="top" data-offset="0"
				class="sticky-container layout-navigation-primary-wrap">
				<div class="sticky-child layout-navigation-primary"
					style="position: relative;">
					<div class="layout-navigation-primary__content">
						<div class="layout-navigation-primary__leftmost">
							<button
								class="layout-navigation-bar-icon layout-navigation-bar-drawer-button"
								title="메뉴" aria-label="메뉴" type="button">
								<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
									preserveAspectRatio="xMidYMid meet">
									<path fill="currentColor"
										d="M3 4h18v2H3V4zm0 7h18v2H3v-2zm0 7h18v2H3v-2z"></path></svg>
							</button>
						</div>
						<div class="layout-navigation-primary__left">
							<a class="layout-navigation-logo layout-navigation__bar__logo"
								aria-label="오늘의집" href="/"><svg class="icon" width="74"
									height="30" viewBox="0 0 74 30"
									preserveAspectRatio="xMidYMid meet">
									<g fill="none" fill-rule="evenodd">
									<path fill="#000"
										d="M14.2 25.17H9.28V20.7a1.45 1.45 0 0 0-2.9 0v4.47H1.44a1.45 1.45 0 1 0 0 2.9H14.2a1.45 1.45 0 0 0 0-2.9M4.5 9.15c0-4.6 2.08-5.28 3.33-5.28 1.24 0 3.33.69 3.33 5.28v.36c0 4.6-2.09 5.28-3.33 5.28-1.25 0-3.34-.69-3.34-5.28v-.36zm3.33 8.54c3.84 0 6.23-3.13 6.23-8.18v-.36c0-5.05-2.39-8.18-6.23-8.18-3.85 0-6.24 3.13-6.24 8.18v.36c0 5.05 2.39 8.19 6.24 8.19zm25.54-7.34H17.81a1.45 1.45 0 0 0 0 2.9h15.56a1.45 1.45 0 1 0 0-2.9m-1.55 15.5c-7.08 1.83-9.45.79-10.14.25-.45-.35-.65-.8-.65-1.48v-.87h10.25c.8 0 1.46-.65 1.46-1.45v-5.08c0-.8-.66-1.45-1.46-1.45h-11.7a1.45 1.45 0 1 0 0 2.9h10.25v2.18H19.57c-.8 0-1.45.65-1.45 1.45v2.32a4.6 4.6 0 0 0 1.78 3.78c1.2.93 2.94 1.39 5.21 1.39 2.05 0 4.54-.38 7.44-1.13a1.45 1.45 0 1 0-.73-2.82M20.3 7.83h10.8a1.45 1.45 0 1 0 0-2.9h-9.35V1.45a1.45 1.45 0 1 0-2.9 0v4.93c0 .8.65 1.45 1.45 1.45"></path>
									<rect width="3" height="15" x="70" fill="#000" rx="1.5"></rect>
									<path fill="#000"
										d="M64.5 13.28a1.45 1.45 0 0 0 2.73-1c-.05-.13-1-2.68-3.38-4.5l3.7-4.1a1.45 1.45 0 0 0-1.09-2.42h-9.05a1.45 1.45 0 1 0 0 2.9h5.8l-6.88 7.64a1.45 1.45 0 1 0 2.16 1.95l3.41-3.8a8 8 0 0 1 2.6 3.33M69.56 26.52h-7.01a.82.82 0 0 1-.82-.82v-1.95h8.65v1.95c0 .45-.37.82-.82.82m2.27-9.37c-.8 0-1.45.65-1.45 1.45v2.25h-8.65V18.6a1.45 1.45 0 1 0-2.9 0v7.1a3.73 3.73 0 0 0 3.72 3.72h7.01a3.73 3.73 0 0 0 3.72-3.72v-7.1c0-.8-.65-1.45-1.45-1.45M42.46 3.87c2.22 0 2.33 4.24 2.33 5.08 0 .85-.11 5.09-2.33 5.09-2.21 0-2.32-4.24-2.32-5.08 0-.86.11-5.09 2.32-5.09m0 13.07c1.76 0 3.23-.93 4.14-2.62.71-1.34 1.1-3.2 1.1-5.36s-.39-4.02-1.1-5.37A4.6 4.6 0 0 0 42.46.97c-1.76 0-3.22.93-4.13 2.62-.72 1.35-1.1 3.2-1.1 5.37s.38 4.01 1.1 5.36a4.59 4.59 0 0 0 4.13 2.62"></path>
									<path fill="#000"
										d="M51.4.49c-.8 0-1.45.65-1.45 1.45v17.78c-1.93.6-5.75 1.13-10.38 1.13h-2.2a1.45 1.45 0 0 0 0 2.9h2.2c2.64 0 7.21-.23 10.38-1.02v4.84a1.45 1.45 0 0 0 2.9 0V1.94c0-.8-.65-1.45-1.45-1.45"></path></g></svg></a>
						</div>
						<nav class="layout-navigation-primary__menu">
							<a
								class="layout-navigation-primary__menu__item layout-navigation-primary__menu__item--active layout-navigation-primary__menu__item--open"
								href="/">커뮤니티</a><a class="layout-navigation-primary__menu__item"
								href="../store/category?pr_category=0">스토어</a>
						</nav>
						<div class="layout-navigation-primary__right mymenuStart">
							<div class="layout-navigation-bar-search">
								<div class="layout-navigation-search" id="id-13">
									<div class="layout-navigation-search__header">
										<div id="id-13-combobox"
											class="layout-navigation-search__combobox" role="combobox"
											aria-haspopup="listbox" aria-expanded="false">
										</div>
									</div>
								</div>
							</div>
							<button
								class="layout-navigation-bar-icon layout-navigation-bar-search-button"
								title="검색" aria-label="검색" type="button">
								<svg class="icon" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" preserveAspectRatio="xMidYMid meet">
									<path d="M22 22l-5-5"></path>
									<circle cx="11" cy="11" r="8"></circle>
								</svg>
							</button>
		<!-- 로그인 안했을 때 헤더 -------------------------------------------------------------------------------------------------------------------------------------------------------- -->											
							<sec:authorize access="!isAuthenticated()">
								<a class="layout-navigation-bar-icon" title="장바구니"aria-label="장바구니" href="../cart">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" stroke="currentColor" fill="none" stroke-linejoin="round" stroke-width="2" preserveAspectRatio="xMidYMid meet">
											<path stroke-linecap="round" d="M4 5h18l-2.6 10.5a2 2 0 0 1-2 1.5H8.6a2 2 0 0 1-2-1.5L4 5zm4 15.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0zm7 0a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0z"></path>
											<path d="M1 2h3v3"></path>
									</svg>
								</a>
							<div class="layout-navigation-bar-login">
								<a class="layout-navigation-bar-login__item" href="../member/memberLogin">로그인</a>
								<a class="layout-navigation-bar-login__item" href="../member/memberJoin">회원가입</a>
								<a class="layout-navigation-bar-login__item layout-navigation-bar-login__item--xl" href="../cscenter">고객센터</a>
							</div>
							<div class="drop-down layout-navigation-bar-upload-button">
								<button class="layout-navigation-bar-upload-button__button  writeBtn1" type="button">글쓰기
									<svg class="icon" width="1em" height="1em" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd" d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path>
									</svg>
								</button>
							</div>
							</sec:authorize>
		<!-- 로그인 했을 때 헤더 -------------------------------------------------------------------------------------------------------------------------------------------------------- -->					
							<sec:authorize access="isAuthenticated()">
								<a class="layout-navigation-bar-icon layout-navigation-bar-icon--hide-mobile" title="스크랩북" aria-label="스크랩북" href="/users/4672761/collections">
									<svg class="icon" width="24" height="24" stroke="currentColor" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
										<path fill="none" stroke-width="2" d="M3 20.967zm0 0V2.5a.5.5 0 01.5-.5h17a.5.5 0 01.5.5v18.467l-8.057-4.309a2 2 0 00-1.886 0L3 20.968z"></path>
									</svg>
								</a>
								
								<a class="layout-navigation-bar-icon layout-navigation-bar-icon--hide-mobile" title="알림" aria-label="알림" href="/notifications/feed">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
										<path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.04 4.19C10.16 3.16 10.6 2 12.05 2c1.35 0 1.78 1.11 1.9 2.13C21.05 5.25 21 13.43 21 19H3c0-5.48-.05-13.48 7.04-14.81zM10 19c0 1.66.9 3 2 3s2-1.34 2-3"></path>
									</svg>
								</a>
							
								<a class="layout-navigation-bar-icon" title="장바구니" aria-label="장바구니" href="../cart">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" stroke="currentColor" fill="none" stroke-linejoin="round" stroke-width="2" preserveAspectRatio="xMidYMid meet">
										<path stroke-linecap="round" d="M4 5h18l-2.6 10.5a2 2 0 0 1-2 1.5H8.6a2 2 0 0 1-2-1.5L4 5zm4 15.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0zm7 0a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0z"></path>
										<path d="M1 2h3v3"></path>
									</svg>
										<!-- <span class="layout-navigation-bar-icon__ticker"></span> -->
								</a>
								
								<div class="drop-down layout-navigation-bar-user-section my">
									<button class="layout-navigation-bar-user-button myBtn" type="button" aria-label="">
										<div class="layout-navigation-bar-user-button__image">
											<img class="image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144 3x">
											<!-- <img class="image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1564109270_WT.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x"> -->
										</div>
										<svg class="layout-navigation-bar-user-button__caret" width="8" height="8" viewBox="0 0 8 8" fill="currentColor" preserveAspectRatio="xMidYMid meet">
											<path d="M0 2l4 4 4-4z"></path>
										</svg>
									</button>
								</div>
		<!-- 로그인 했을 때 헤더 -------------------------------------------------------------------------------------------------------------------------------------------------------- -->											
							<div class="drop-down layout-navigation-bar-upload-button">
								<button class="layout-navigation-bar-upload-button__button  writeBtn1" type="button">글쓰기
									<svg class="icon" width="1em" height="1em" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd" d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path>
									</svg>
								</button>
							</div>
								
							</sec:authorize>
						</div>
					</div>
				</div>
			</div>
			
			<div data-sticky-enabled="false" data-sticky-disabled="false"
				data-sticky-always="true" data-sticky-ignore="false"
				data-direction="top" data-offset="31"
				class="sticky-container layout-navigation-secondary-wrap">
				<div class="sticky-child layout-navigation-secondary"
					style="position: relative;">
					<div class="layout-navigation-secondary__content">
						<nav class="layout-navigation-secondary__menu">
							<a class="layout-navigation-secondary__menu__item" href="/">홈</a>
								<a class="layout-navigation-secondary__menu__item" href="../picture/picList">사진</a>
								<a class="layout-navigation-secondary__menu__item" href="../housewarming/">집들이</a>
								<a class="layout-navigation-secondary__menu__item" href="../questions/">질문과답변</a>
								<a class="layout-navigation-secondary__menu__item layout-navigation-secondary__menu__item--active" href="../notice/list">공지사항</a>
								
						</nav>
						<div
							class="layout-navigation-app-download layout-navigation__bar__app-download">
							<a class="layout-navigation-app-download__link" href="/3d_intro"><svg
									class="icon" width="20" height="20" viewBox="0 0 20 20"
									preserveAspectRatio="xMidYMid meet">
									<g fill="none" fill-rule="evenodd">
									<path fill="#35C5F0"
										d="M16.41 0H3.59A3.59 3.59 0 0 0 0 3.59v12.82A3.59 3.59 0 0 0 3.59 20h12.82A3.59 3.59 0 0 0 20 16.41V3.59A3.59 3.59 0 0 0 16.41 0"></path>
									<path fill="#FFF"
										d="M14.75 10.34c-.74 0-1.33-.6-1.33-1.34 0-.74.6-1.34 1.33-1.34s1.32.6 1.32 1.34c0 .74-.59 1.34-1.32 1.34zm-1 3.53H6.12V8.75l3.82-2.7 2.2 1.55a3.01 3.01 0 0 0-.35 1.4 3 3 0 0 0 1.98 2.83v2.04zm1-7.87c-.34 0-.66.06-.97.17l-3.17-2.24a1.18 1.18 0 0 0-1.35 0L4.5 7.28a1.2 1.2 0 0 0-.51.98v6.54c0 .66.53 1.2 1.19 1.2h9.5a1.2 1.2 0 0 0 1.18-1.2v-3.02A3 3 0 0 0 17.7 9c0-1.65-1.32-3-2.96-3z"></path></g></svg>3D인테리어<svg
									class="icon-beta" width="30" height="14"
									preserveAspectRatio="xMidYMid meet">
									<g fill="none" fill-rule="evenodd">
									<rect width="30" height="14" fill="#757575" rx="7"></rect>
									<path fill="#FFF" fill-rule="nonzero"
										d="M7.1 10.59c1.52 0 2.24-.82 2.24-1.96 0-1-.53-1.48-1.33-1.64v-.03c.76-.26 1.05-.78 1.05-1.5 0-1.09-.64-1.73-2.12-1.73H4.69v6.86h2.4zm-.37-3.94h-.9V4.64h.95c.74 0 1.13.25 1.13.99 0 .78-.5 1.02-1.18 1.02zm.2 3.02h-1.1v-2.2h1.04c.82 0 1.26.3 1.26 1.09 0 .75-.42 1.11-1.2 1.11zm7.65.92v-.97h-2.92V7.54h2.22v-.96h-2.22V4.7h2.86v-.97h-4.01v6.86h4.07zm3.8 0V4.7h1.83v-.97h-4.83v.97h1.85v5.89h1.15zm2.92 0l.58-1.74h2.39l.58 1.74h1.2l-2.3-6.86h-1.18l-2.34 6.86h1.07zm2.68-2.66h-1.83l.9-2.74h.03l.9 2.74z"></path></g></svg></a>
						</div>
					</div>
				</div>
			</div>
		</header>
	
	<form action="./list" id="frm">
		<div class="customer-notice-list">
			<div class="customer-notice-list__content">
				<h1 class="customer-notice-list__title">공지사항</h1>
				<div class="virtualized-list customer-notice-list__list"
					style="padding-top: 0px; padding-bottom: 0px; transform: translateY(0px)">
					<div class="customer-notice-list__list-item">
					<c:forEach items="${noticeVO}" var="noticeVO">
						<a class="customer-notice-feed-item"
								href="./select?num=${noticeVO.num}"><article
									class="customer-notice-feed-item__content">
								<h1 class="customer-notice-feed-item__title">${noticeVO.title}</h1>
								<time class="customer-notice-feed-item__date" datetime="">${noticeVO.regDate}</time>
							</article></a>
							</c:forEach>
					</div>
				</div>
			</div>
		</div>
	  <sec:authorize access="isAuthenticated()" var="result">
                                <sec:authentication property="principal" var="memberVO"/>
                                <c:forEach items="${memberVO.roles}" var="role">
                                   <c:if test="${role.num eq 1}">
                                           <a class="customer-notice-detail__back"href="./insert">등록</a>
                                   </c:if>
                                </c:forEach>
                             </sec:authorize>
	</form>
	<%@ include file="../store/footer.jsp"%>
	<script type="text/javascript">

//마이메뉴 선택하면 마이페이지/로그아웃 등 드롭다운 메뉴 보여주기

	$('.myBtn').click(function(){
		//alert('마이메뉴');
		$('.mymenu').css('display', 'block');
	})
	
// 이외의 영역을 클릭하면 사라지기	

	$('.home-page').click(function(e){
		 if(!$(e.target).hasClass('mymenu')){
			$('.mymenu').css('display', 'none');
		} 
	});
	
// 글쓰기 선택하면 메뉴 보여주기
	
	$('.writeBtn1').click(function(){
		$('.writemenu').css('display', 'block');
	})

// 이외의 영역을 클릭하면 사라지기 
	$('.home-page').click(function(e){
		 if(!$(e.target).hasClass('writemenu')){
			$('.writemenu').css('display', 'none');
		} 
	});

	$('.logout').click(function(){
		location.href="../member/memberLogout"
	})

// 슬라이드 배너 만들기

$(document).ready(function(){
	console.log('확인')
	$('.home-header__banner__item').not('.active').hide();
	//3초마다 넘어가기
 	setInterval("next()", 4000);

});

//이전 슬라이드
function prev(){
	$('.home-header__banner__item').hide();
	let allSlide = $('.home-header__banner__item');
	let currentIndex = 0; 
	
	//반복문의로 현재 active인 div 찾기
	$('.home-header__banner__item').each(function(index, item){
		if($(this).hasClass("active")){
			currentIndex = index;
		}
	});
	
	//새로 띄울 슬라이드 index
	let newIndex = 0;
	if(currentIndex <=0){
		//현재 슬라이드가 0인경우 - 첫번째인 경우 마지막 슬라이드로 보내기
		newIndex = allSlide.length-1;
	} else{
		//현재 슬라이드가 0이상일 경우 
		newIndex = currentIndex-1;
	}
	
	//모든 슬라이드에서 active 지우고 새로 주기
	$('.home-header__banner__item').removeClass("active");
	
	//새로운 index의 슬라이드에 active 주고 보여주기
	$('.home-header__banner__item').eq(newIndex).addClass("active");
	$('.home-header__banner__item').eq(newIndex).show();
	
}


//다음 슬라이드
function next(){
	$('.home-header__banner__item').hide();
	let allSlide = $('.home-header__banner__item');
	let currentIndex = 0;
	
	$('.home-header__banner__item').each(function(index, item){
		if($(this).hasClass("active")){
			currentIndex = index;
		}
	});
	
	let newIndex =0;
	//만약 마지막 슬라이드라면
	if(currentIndex >= allSlide.length-1){
		newIndex = 0;
	} else{
		//아니라면 다음 슬라이드 
		newIndex = currentIndex+1;
	}
	
	$('.home-header__banner__item').removeClass("active");
	$('.home-header__banner__item').eq(newIndex).addClass("active");
	$('.home-header__banner__item').eq(newIndex).show();
	
}



</script>
</body>
</html>