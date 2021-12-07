<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://ohou.se/questions"/>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&amp;display=swap&amp;subset=korean" rel="stylesheet">
    <link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/preamble-97ede701.chunk.css">
    <link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/34-84804588.chunk.css">
    <link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/templates-Content-Question-Feed-Feed-cdc32806.chunk.css">
    <link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/21-0e75de9b.chunk.css">
    <link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/23-2ef16b9a.chunk.css">
    <link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/App-6e6c2f0c.chunk.css">
    <style data-emotion="css 6jmcxp-FeedHeader" data-s="">.css-6jmcxp-FeedHeader{padding:40px 15px 30px;background-color:#f7f8fa;}</style>
    <style data-emotion="css doxr2c-FeedHeaderContent" data-s="">.css-doxr2c-FeedHeaderContent{max-width:500px;margin:0 auto;}</style>
    <style data-emotion="css 13etbuw-FeedTitle" data-s="">.css-13etbuw-FeedTitle{margin:0 0 12px;text-align:center;font-weight:bold;font-size:24px;line-height:32px;color:#2f3438;}</style>
    <style data-emotion="css 6196fh-FeedDescription" data-s="">.css-6196fh-FeedDescription{margin:0 0 30px;text-align:center;font-size:14px;line-height:20px;color:#2f3438;word-break:keep-all;}</style>
    <style data-emotion="css b8uw7u-SearchBox" data-s="">.css-b8uw7u-SearchBox{position:relative;margin:0 auto 24px;max-width:500px;}</style>
    <style data-emotion="css ujfb1m-SearchHeader" data-s="">.css-ujfb1m-SearchHeader{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;}</style>
    <style data-emotion="css iwn7aq-SearchCombobox" data-s="">.css-iwn7aq-SearchCombobox{-webkit-flex:1 0 auto;-ms-flex:1 0 auto;flex:1 0 auto;}</style>
    <style data-emotion="css 95hcar-SearchDiv" data-s="">.css-95hcar-SearchDiv{position:relative;}</style>
    <style data-emotion="css jatc2y-SearchInput" data-s="">.css-jatc2y-SearchInput{width:100%;box-sizing:border-box;padding:10px 15px 10px 47px;text-align:left;font-family:inherit;font-size:14px;line-height:22px;color:#2f3438;background-
        color:#ffffff;border:1px solid #eaebef;box-shadow:0 2px 5px rgba(63, 71, 77, .05);border-radius:4px;-webkit-transition:.1s background-color;transition:.1s background-color;}.css-jatc2y-SearchInput::-webkit-input-placeholder{color:#c2c8cc;}.css-jatc2y-SearchInput::-moz-placeholder{color:#c2c8cc;opacity:1;}.css-jatc2y-SearchInput:-ms-input-placeholder{color:#c2c8cc;}.css-jatc2y-SearchInput:-moz-placeholder{color:#c2c8cc;}.css-jatc2y-SearchInput:hover{background-color:#f7f8fa;}.css-jatc2y-SearchInput::-ms-clear{display:none;height:0;width:0;}</style>
    <style data-emotion="css zw1630-SearchInputIcon" data-s="">.css-zw1630-SearchInputIcon{position:absolute;top:11px;left:16px;width:21px;height:21px;font-size:21px;color:#828c94;pointer-events:none;}</style>
    <style data-emotion="css c6s9az-Div" data-s="">.css-c6s9az-Div{position:relative;color:#292929;margin:0 0 -16px;}@media (min-width: 768px){.css-c6s9az-Div{margin:0 0 -24px;}}</style>
    <style data-emotion="css 3qk4hk-RowContainer" data-s="">.css-3qk4hk-RowContainer{margin:0 0 16px;}@media (min-width: 768px){.css-3qk4hk-RowContainer{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;margin:0 0 24px;}}</style>
    <style data-emotion="css 1rl9eug-RowTitle" data-s="">.css-1rl9eug-RowTitle{-webkit-flex:0 0 auto;-ms-flex:0 0 auto;flex:0 0 auto;box-sizing:border-box;height:24px;font-size:12px;line-height:16px;font-weight:bold;color:#2f3438;white-space:nowrap;overflow:hidden;-webkit-transition:.2s width,.2s height;transition:.2s width,.2s height;height:0px;}@media (min-width: 768px){.css-1rl9eug-RowTitle{height:auto;margin:0;padding:7px 0;width:58px;}}@media (min-width: 768px){.css-1rl9eug-RowTitle{height:auto;width:0px;}}</style>
    <style data-emotion="css wk5atv-RowContent" data-s="">.css-wk5atv-RowContent{-webkit-flex:1 0 0px;-ms-flex:1 0 0px;flex:1 0 0px;min-width:0;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:justify;-webkit-justify-content:space-between;justify-content:space-between;}</style>
    <style data-emotion="css n1yl89-KeywordList" data-s="">.css-n1yl89-KeywordList{margin:0 0 -6px;}</style>
    <style data-emotion="css vdlu9i-KeywordListItem" data-s="">.css-vdlu9i-KeywordListItem{display:inline-block;}</style>
    <style data-emotion="css 5wck5y-KeywordItemLink-KeywordItem" data-s="">.css-5wck5y-KeywordItemLink-KeywordItem{display:inline-block;margin:0;padding:0;border:none;background:none;font:inherit;display:inline-block;margin:0 3px 6px;padding:1px 11px;font-size:12px;line-height:20px;color:#2f3438;background-color:#ffffff;border:1px solid #eaebef;border-radius:50px;-webkit-transition:.1s opacity;transition:.1s opacity;}.css-5wck5y-KeywordItemLink-KeywordItem:before{content:'#';color:#c2c8cc;margin-right:3px;}@media (min-width: 768px){.css-5wck5y-KeywordItemLink-KeywordItem{padding:4px 11px;}}.css-5wck5y-KeywordItemLink-KeywordItem.focus-visible:focus{opacity:.6;}@media (min-width: 768px){.css-5wck5y-KeywordItemLink-KeywordItem:hover,.css-5wck5y-KeywordItemLink-KeywordItem:active{opacity:.6;}}.css-5wck5y-KeywordItemLink-KeywordItem::-moz-focus-inner{border:0;}.css-5wck5y-KeywordItemLink-KeywordItem.focus-visible:focus{box-shadow:0 0 0 3px #a3e4f8;opacity:1;}</style>
    <style data-emotion="css 1pco0k7-PcExpandButton" data-s="">.css-1pco0k7-PcExpandButton{display:inline-block;margin:0;padding:0;border:none;background:none;font:inherit;display:none;color:#2f3438;font-size:12px;line-height:16px;-webkit-transition:.1s opacity;transition:.1s opacity;}@media (min-width: 768px){.css-1pco0k7-PcExpandButton{display:block;}}.css-1pco0k7-PcExpandButton.focus-visible:focus{opacity:.6;}@media (min-width: 768px){.css-1pco0k7-PcExpandButton:hover,.css-1pco0k7-PcExpandButton:active{opacity:.6;}}.css-1pco0k7-PcExpandButton::-moz-focus-inner{border:0;}.css-1pco0k7-PcExpandButton.focus-visible:focus{border-radius:4px;box-shadow:0 0 0 3px #a3e4f8;opacity:1;}</style>
    <style data-emotion="css f859t5-ExpandButtonIcon" data-s="">.css-f859t5-ExpandButtonIcon{width:12px;height:12px;margin-left:4px;vertical-align:-1px;-webkit-transition:.2s -webkit-transform;transition:.2s transform;}</style>
    <style data-emotion="css ge2qp8-FeedContent" data-s="">.css-ge2qp8-FeedContent{max-width:780px;padding:0 15px;margin:0 auto;box-sizing:border-box;}</style>
    <style data-emotion="css rej4ml-PanelDiv" data-s="">.css-rej4ml-PanelDiv{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:justify;-webkit-justify-content:space-between;justify-content:space-between;padding:30px 0 20px;color:#292929;-webkit-box-flex-wrap:wrap;-webkit-flex-wrap:wrap;-ms-flex-wrap:wrap;flex-wrap:wrap;}</style>
    <style data-emotion="css cc14jh-PanelSection" data-s="">.css-cc14jh-PanelSection{-webkit-flex:0 0 auto;-ms-flex:0 0 auto;flex:0 0 auto;min-width:0;}</style>
    <style data-emotion="css 6n54vk-PanelSelectInput" data-s="">@media (max-width: 767px){.css-6n54vk-PanelSelectInput.css-6n54vk-PanelSelectInput .form-control{line-height:32px;height:32px;border:none;padding:0 15px 0 0;}.css-6n54vk-PanelSelectInput.css-6n54vk-PanelSelectInput .select-input__icon{top:5px;}}</style>
    <style data-emotion="css u6psnw-PanelButton" data-s="">.css-u6psnw-PanelButton.css-u6psnw-PanelButton{width:180px;font-size:14px;font-weight:normal;}@media (max-width: 767px){.css-u6psnw-PanelButton.css-u6psnw-PanelButton{width:auto;padding:6px 12px;line-height:16px;}}</style>
    <style data-emotion="css 9l7c3-PanelButtonCheckIcon" data-s="">.css-9l7c3-PanelButtonCheckIcon{margin:-1px 8px -2px 0;font-size:18px;color:#c2c8cc;vertical-align:-2px;}</style>
    <style data-emotion="css 107ia2q-PanelButton-PanelNewButton" data-s="">.css-107ia2q-PanelButton-PanelNewButton.css-107ia2q-PanelButton-PanelNewButton{width:180px;font-size:14px;font-weight:normal;}@media (max-width: 767px){.css-107ia2q-PanelButton-PanelNewButton.css-107ia2q-PanelButton-PanelNewButton{width:auto;padding:6px 12px;line-height:16px;}}.css-107ia2q-PanelButton-PanelNewButton.css-107ia2q-PanelButton-PanelNewButton{width:120px;font-weight:bold;margin-left:10px;}@media (max-width: 767px){.css-107ia2q-PanelButton-PanelNewButton.css-107ia2q-PanelButton-PanelNewButton{width:auto;margin-left:6px;}}</style>
    <style data-emotion="css 2acggu-ItemLink" data-s="">.css-2acggu-ItemLink{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;padding:18px 0;border-bottom:1px solid #eaebef;font-weight:bold;font-size:14px;line-height:20px;color:#2f3438;-webkit-transition:.1s opacity;transition:.1s opacity;}.css-2acggu-ItemLink.focus-visible:focus{opacity:.6;}@media (min-width: 768px){.css-2acggu-ItemLink:hover,.css-2acggu-ItemLink:active{opacity:.6;}}</style>
    <style data-emotion="css 1n2c0v5-ItemBadge" data-s="">.css-1n2c0v5-ItemBadge{-webkit-flex:0 0 auto;-ms-flex:0 0 auto;flex:0 0 auto;display:inline-block;margin:1px 10px 0 0;padding:2px 8px;background-color:#effbff;color:#35c5f0;font-size:12px;line-height:20px;border-radius:24px;}</style>
    <style data-emotion="css wk63b1-ItemText" data-s="">.css-wk63b1-ItemText{-webkit-flex:0 1 auto;-ms-flex:0 1 auto;flex:0 1 auto;min-width:0;word-break:keep-all;overflow-wrap:break-word;line-height:24px;}</style>
    <style data-emotion="css 1edegka-QuestionContainer" data-s="">.css-1edegka-QuestionContainer{position:relative;display:block;padding:30px 0;box-sizing:border-box;border-bottom:solid 1px #eaebef;}.css-1edegka-QuestionContainer:after{content:'';display:block;clear:both;}</style>
    <style data-emotion="css qa3x0s-QuestionLink" data-s="">.css-qa3x0s-QuestionLink{position:absolute;z-index:1;top:0;left:0;width:100%;height:100%;background:transparent;}.css-qa3x0s-QuestionLink.focus-visible:focus~.e1amn78m9 .e1amn78m11{color:#828c94;}.css-qa3x0s-QuestionLink.focus-visible:focus~.e1amn78m9 .e1amn78m10{color:#656e75;}.css-qa3x0s-QuestionLink.focus-visible:focus~.e1amn78m9 .e1amn78m12{opacity:.6;}@media (min-width: 768px){.css-qa3x0s-QuestionLink:hover~.e1amn78m9 .e1amn78m11,.css-qa3x0s-QuestionLink:active~.e1amn78m9 .e1amn78m11{color:#828c94;}.css-qa3x0s-QuestionLink:hover~.e1amn78m9 .e1amn78m10,.css-qa3x0s-QuestionLink:active~.e1amn78m9 .e1amn78m10{color:#656e75;}.css-qa3x0s-QuestionLink:hover~.e1amn78m9 .e1amn78m12,.css-qa3x0s-QuestionLink:active~.e1amn78m9 .e1amn78m12{opacity:.6;}}</style>
    <style data-emotion="css 13xsgfl-QuestionTitle" data-s="">.css-13xsgfl-QuestionTitle{margin:0 0 4px;color:#2f3438;font-weight:bold;font-size:16px;line-height:20px;-webkit-transition:.1s color;transition:.1s color;}@media (min-width: 768px){.css-13xsgfl-QuestionTitle{margin:0 0 10px;font-size:18px;line-height:24px;}}</style>
    <style data-emotion="css 6kkt2h-QuestionDescription" data-s="">.css-6kkt2h-QuestionDescription{display:none;margin:0 0 16px;font-size:14px;line-height:20px;height:40px;overflow:hidden;text-overflow:ellipsis;color:#2f3438;-webkit-transition:.1s color;transition:.1s color;}@media (min-width: 768px){.css-6kkt2h-QuestionDescription{display:block;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;margin:0 0 6px;}}</style>
    <style data-emotion="css 1egl09a-QuestionFooter" data-s="">.css-1egl09a-QuestionFooter{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-flex-direction:column;-ms-flex-direction:column;flex-direction:column;color:#828c94;font-size:12px;line-height:16px;margin:-6px 0 0;}@media (min-width: 768px){.css-1egl09a-QuestionFooter{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-flex-direction:row;-ms-flex-direction:row;flex-direction:row;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-flex-wrap:wrap;-webkit-flex-wrap:wrap;-ms-flex-wrap:wrap;flex-wrap:wrap;}}</style>
    <style data-emotion="css 15rrev1-QuestionFooterRow" data-s="">.css-15rrev1-QuestionFooterRow{display:block;margin:16px 8px -5px 0;}</style>
    <style data-emotion="css ksfmz3-QuestionAuthor" data-s="">.css-ksfmz3-QuestionAuthor{display:inline-block;margin:0 0 5px;color:#2f3438;margin-right:10px;font-weight:bold;white-space:nowrap;}</style>
    <style data-emotion="css 1kglkcx-QuestionAuthorImageContainer" data-s="">.css-1kglkcx-QuestionAuthorImageContainer{display:inline-block;position:relative;width:18px;height:18px;margin-right:4px;border-radius:100%;vertical-align:-5px;background-color:#ededed;overflow:hidden;}</style>
    <style data-emotion="css 1k5etid-QuestionAuthorImage" data-s="">.css-1k5etid-QuestionAuthorImage{width:100%;}</style>
    <style data-emotion="css t3gvvz-QuestionStats" data-s="">.css-t3gvvz-QuestionStats{display:inline-block;margin:0 0 5px;}</style>
    <style data-emotion="css hbjh7j-QuestionStatsItem" data-s="">.css-hbjh7j-QuestionStatsItem{display:inline-block;margin-right:8px;}.css-hbjh7j-QuestionStatsItem:not(:last-child):after{content:'·';margin-left:8px;}</style>
    <style data-emotion="css ebqojs-QuestionKeywordList" data-s="">.css-ebqojs-QuestionKeywordList{display:inline-block;margin:16px -3px -6px;}@media (max-width: 767px){.css-ebqojs-QuestionKeywordList{display:block;margin:36px -3px -6px;clear:both;}}.css-ebqojs-QuestionKeywordList .e83svgi1{position:relative;z-index:2;}</style>
    <style data-emotion="css 3qi429-KeywordList-QuestionKeywordList" data-s="">.css-3qi429-KeywordList-QuestionKeywordList{margin:0 0 -6px;display:inline-block;margin:16px -3px -6px;}@media (max-width: 767px){.css-3qi429-KeywordList-QuestionKeywordList{display:block;margin:36px -3px -6px;clear:both;}}.css-3qi429-KeywordList-QuestionKeywordList .e83svgi1{position:relative;z-index:2;}</style>
    <style data-emotion="css 1rp83u8-KeywordItem" data-s="">.css-1rp83u8-KeywordItem{display:inline-block;margin:0;padding:0;border:none;background:none;font:inherit;display:inline-block;margin:0 3px 6px;padding:1px 11px;font-size:12px;line-height:20px;color:#2f3438;background-color:#ffffff;border:1px solid #eaebef;border-radius:50px;-webkit-transition:.1s opacity;transition:.1s opacity;}.css-1rp83u8-KeywordItem:before{content:'#';color:#c2c8cc;margin-right:3px;}@media (min-width: 768px){.css-1rp83u8-KeywordItem{padding:4px 11px;}}.css-1rp83u8-KeywordItem.focus-visible:focus{opacity:.6;}@media (min-width: 768px){.css-1rp83u8-KeywordItem:hover,.css-1rp83u8-KeywordItem:active{opacity:.6;}}.css-1rp83u8-KeywordItem::-moz-focus-inner{border:0;}.css-1rp83u8-KeywordItem.focus-visible:focus{box-shadow:0 0 0 3px #a3e4f8;opacity:1;}</style>
    <style data-emotion="css 17vr42v-QuestionImageContainer" data-s="">.css-17vr42v-QuestionImageContainer{float:right;margin:0 0 0 10px;width:92px;height:92px;background-color:#ededed;border-radius:20px;overflow:hidden;}@media (min-width: 768px){.css-17vr42v-QuestionImageContainer{margin:5px 0 0 30px;width:110px;height:110px;}}</style>
    <style data-emotion="css l9iija-QuestionImage" data-s="">.css-l9iija-QuestionImage{width:100%;border-radius:20px;-webkit-transition:.1s opacity;transition:.1s opacity;}<style data-emotion="css l9iija-QuestionImage" data-s="">.css-l9iija-QuestionImage{width:100%;border-radius:20px;-webkit-transition:.1s opacity;transition:.1s opacity;}</style></style>
    <style data-emotion="css ngni79-FeedPaginatorContainer" data-s="">.css-ngni79-FeedPaginatorContainer{margin:30px 0 50px;}@media (min-width: 768px){.css-ngni79-FeedPaginatorContainer{margin:40px 0 60px;}}</style>
    <style data-emotion="css wkl218-SectionWrapper" data-s="">.css-wkl218-SectionWrapper{margin-top:32px;}@media (min-width: 768px){.css-wkl218-SectionWrapper{margin-top:26px;}}</style>
    <style data-emotion="css 1293549-Container" data-s="">.css-1293549-Container{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;}</style>
    <style data-emotion="css 1p6gxrd-Info" data-s="">.css-1p6gxrd-Info{font-size:10px;line-height:14px;color:#828c94;margin-left:8px;}</style>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>커뮤니티-질문과 답변</title>
</head>
<body>
<div>    
    <header class="css-6jmcxp-FeedHeader evxc8q77">
        <div class="css-doxr2c-FeedHeaderContent evxc8q76">
            <h1 class="css-13etbuw-FeedTitle evxc8q75">질문과 답변</h1>
            <p class="css-6196fh-FeedDescription evxc8q74">오늘의집 인테리어 고수들과 전문가들에게 조언을 받아보세요.</p>
            <div class="css-b8uw7u-SearchBox e1ea57mf2" id="id-14">
                <div class="css-ujfb1m-SearchHeader e1ea57mf1">
                    <div id="id-14-combobox" role="combobox" aria-haspopup="listbox" aria-expanded="false"
                        class="css-iwn7aq-SearchCombobox e1ea57mf0">
                        <div class="css-95hcar-SearchDiv e7zgiho3"><input type="text" autocomplete="off" size="1"
                                id="id-14-input" aria-autocomplete="list" placeholder="궁금한 것을 검색해보세요."
                                aria-label="궁금한 것을 검색해보세요." class="css-jatc2y-SearchInput e7zgiho2" value=""><svg
                                width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                stroke-width="2" preserveAspectRatio="xMidYMid meet"
                                class="css-zw1630-SearchInputIcon e7zgiho1">
                                <path d="M22 22l-5-5"></path>
                                <circle cx="11" cy="11" r="8"></circle>
                            </svg></div>
                    </div>
                </div>
            </div>
            <div class="css-c6s9az-Div e109qnyi5">
                <div class="css-3qk4hk-RowContainer eh6x1oo2">
                    <dt class="css-1rl9eug-RowTitle eh6x1oo1">인기</dt>
                    <dd class="css-wk5atv-RowContent eh6x1oo0">
                        <ul class="css-n1yl89-KeywordList e83svgi2">
                            <li class="css-vdlu9i-KeywordListItem e83svgi1"><a
                                    class="css-5wck5y-KeywordItemLink-KeywordItem e83svgi3"
                                    href="/questions?query=%EB%A6%AC%EB%AA%A8%EB%8D%B8%EB%A7%81%2F%EC%98%AC%EC%88%98%EB%A6%AC">리모델링/올수리</a>
                            </li>
                            <li class="css-vdlu9i-KeywordListItem e83svgi1"><a
                                    class="css-5wck5y-KeywordItemLink-KeywordItem e83svgi3"
                                    href="/questions?query=20%ED%8F%89%EB%8C%80">20평대</a></li>
                            <li class="css-vdlu9i-KeywordListItem e83svgi1"><a
                                    class="css-5wck5y-KeywordItemLink-KeywordItem e83svgi3"
                                    href="/questions?query=%EC%95%84%ED%8C%8C%ED%8A%B8">아파트</a></li>
                            <li class="css-vdlu9i-KeywordListItem e83svgi1"><a
                                    class="css-5wck5y-KeywordItemLink-KeywordItem e83svgi3"
                                    href="/questions?query=%EB%8F%84%EB%B0%B0">도배</a></li>
                        </ul><button type="button" aria-pressed="false" class="css-1pco0k7-PcExpandButton e109qnyi3">키워드
                            더보기<svg width="24" height="24" fill="currentColor" viewBox="0 0 24 24"
                                preserveAspectRatio="xMidYMid meet" class="css-f859t5-ExpandButtonIcon e109qnyi4">
                                <path d="M4.5 7l7.5 7.25L19.5 7 21 8.38 12 17 3 8.38z"></path>
                            </svg></button>
                    </dd>
                </div>
                <div class="" style="overflow: hidden;"></div>
                <div data-sticky-enabled="false" data-sticky-always="false" data-direction="bottom" data-offset="0"
                    class="sticky-container css-1nwy3ua-MobileExpandSticky e109qnyi2">
                    <div class="sticky-child" style="position: relative;">
                        <div class="css-1l6sj99-MobileExpandSection e109qnyi1"><button type="button"
                                aria-pressed="false" class="css-nxxfys-MobileExpandButton e109qnyi0">키워드 더보기<svg
                                    width="24" height="24" fill="currentColor" viewBox="0 0 24 24"
                                    preserveAspectRatio="xMidYMid meet" class="css-f859t5-ExpandButtonIcon e109qnyi4">
                                    <path d="M4.5 7l7.5 7.25L19.5 7 21 8.38 12 17 3 8.38z"></path>
                                </svg></button></div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="css-ge2qp8-FeedContent evxc8q73">
        <div class="css-rej4ml-PanelDiv ehxcasx6">
            <div class="css-cc14jh-PanelSection ehxcasx5">
                <div class="input-group select-input css-6n54vk-PanelSelectInput ehxcasx4"><select class="form-control">
                        <option value="0">인기순</option>
                        <option value="1">최신순</option>
                        <option value="2">최근 답변순</option>
                    </select><span class="select-input__icon"><svg class="icon" width="10" height="10"
                            preserveAspectRatio="xMidYMid meet" style="fill: currentcolor;">
                            <path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path>
                        </svg></span></div>
            </div>
            <div class="css-cc14jh-PanelSection ehxcasx5"><button
                    class="_3Z6oR _39680 _1BDvx css-u6psnw-PanelButton ehxcasx3" type="button" aria-pressed="false"><svg
                        width="1em" height="1em" viewBox="0 0 18 18" fill="none" preserveAspectRatio="xMidYMid meet"
                        class="css-9l7c3-PanelButtonCheckIcon ehxcasx2">
                        <path
                            d="M9 15.2C12.4242 15.2 15.2 12.4242 15.2 9C15.2 5.57583 12.4242 2.8 9 2.8C5.57583 2.8 2.8 5.57583 2.8 9C2.8 12.4242 5.57583 15.2 9 15.2ZM16.5 9C16.5 13.1421 13.1421 16.5 9 16.5C4.85786 16.5 1.5 13.1421 1.5 9C1.5 4.85786 4.85786 1.5 9 1.5C13.1421 1.5 16.5 4.85786 16.5 9Z"
                            fill="currentColor"></path>
                        <path
                            d="M13 7L7.77212 12.2721C7.51828 12.526 7.10672 12.526 6.85288 12.2721L4.41538 9.83462L5.33462 8.91538L7.3125 10.8933L12.0808 6.08076L13 7Z"
                            fill="currentColor"></path>
                    </svg>답변을 기다리는 질문</button><a
                    class="_3Z6oR _3AsCW _1BDvx css-107ia2q-PanelButton-PanelNewButton ehxcasx0"
                    href="/questions/new">질문하기</a></div>
        </div>
        <div class="css-1amvimq-FeedItemList evxc8q72"><a class="css-2acggu-ItemLink e1lj374k2"
                href="/questions/2378"><span class="css-1n2c0v5-ItemBadge e1lj374k1">공지</span><span
                    class="css-wk63b1-ItemText e1lj374k0">오늘의집 인테리어 멘토를 만나보세요🏆</span></a><a
                class="css-2acggu-ItemLink e1lj374k2" href="/questions/3703"><span
                    class="css-1n2c0v5-ItemBadge e1lj374k1">공지</span><span class="css-wk63b1-ItemText e1lj374k0">답변
                    이벤트 안내 및 활동 주의사항 📢</span></a><a class="css-2acggu-ItemLink e1lj374k2" href="/questions/12549"><span
                    class="css-1n2c0v5-ItemBadge e1lj374k1">공지</span><span class="css-wk63b1-ItemText e1lj374k0">빠르고 정확한
                    인테리어 답변을 받는 방법은?</span></a>
            <c:forEach items="${list}" var="lists">
                <div class="css-1edegka-QuestionContainer e1amn78m14"><a class="css-qa3x0s-QuestionLink e1amn78m8"
                        href="./questions/selectOne?quests_num=${lists.quests_num}"></a>
                    <div class="css-av0u4k-QuestionContent e1amn78m9">
                    	<c:if test="${lists.thumbnail ne null}">
	                        <div class="css-17vr42v-QuestionImageContainer e1amn78m13">
	                        	<img class="css-l9iija-QuestionImage e1amn78m12" src="/resources${lists.thumbnail}"/>
	                        </div>
                        </c:if>
                        <div class="css-13xsgfl-QuestionTitle e1amn78m11"><span>${lists.quests_title}</span></div>
                        <div class="css-6kkt2h-QuestionDescription e1amn78m10"><span>${lists.list_contents}</span>
                        </div>
                        <div class="css-1egl09a-QuestionFooter e1amn78m7">
                            <div class="css-15rrev1-QuestionFooterRow e1amn78m6">
                                <div class="css-ksfmz3-QuestionAuthor e1amn78m5">
                                    <div class="css-1kglkcx-QuestionAuthorImageContainer e1amn78m4"><img
                                            class="css-1k5etid-QuestionAuthorImage e1amn78m3" alt=""
                                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36&amp;h=36&amp;c=c"
                                            srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36&amp;h=36&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72&amp;h=72&amp;c=c 3x">
                                    </div>${lists.quests_nickname}
                                </div>
                                <div class="css-t3gvvz-QuestionStats e1amn78m2">
                                    <div class="css-hbjh7j-QuestionStatsItem e1amn78m1">${lists.regDate}</div>
                                    <div class="css-hbjh7j-QuestionStatsItem e1amn78m1">댓글 ${lists.reply}</div>
                                    <div class="css-hbjh7j-QuestionStatsItem e1amn78m1">조회 ${lists.hits}</div>
                                </div>
                            </div>
                            <ul class="e1amn78m0 css-3qi429-KeywordList-QuestionKeywordList e83svgi2">
                                <c:forEach items="${lists.tags}" var="hashtagVO">
                                    <li class="css-vdlu9i-KeywordListItem e83svgi1">
                                        <button type="button"
                                            class="css-1rp83u8-KeywordItem e83svgi0">${hashtagVO.hashtag_name}</button>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    </div>
</div>
<div>
	<a href="${pageContext.request.contextPath}/questions/new">글쓰기</a>
</div>

</body>
</html>