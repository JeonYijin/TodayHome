<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="./import_quests/list_css.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

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
        <div class="css-1amvimq-FeedItemList evxc8q72">
        	<c:forEach items="${list}" var="lists">
	        	<c:if test="${lists.notice eq 1}">
	        		<a class="css-2acggu-ItemLink e1lj374k2" href="/questions/selectOne?quests_num=${lists.quests_num}"><span class="css-1n2c0v5-ItemBadge e1lj374k1">공지</span><span
	                    class="css-wk63b1-ItemText e1lj374k0">${lists.quests_title}</span></a>
	            </c:if>
            </c:forEach>        
            <c:forEach items="${list}" var="lists">
	            <c:if test="${empty lists.notice}">
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
	                                            class="css-1rp83u8-KeywordItem e83svgi0"><a href="/questions/fromHashtag?hashtag=${hashtagVO.hashtag_name}">${hashtagVO.hashtag_name}</a></button>
	                                    </li>
	                                </c:forEach>
	                            </ul>
	                        </div>
	                    </div>
	                </div>
                </c:if>
            </c:forEach>
        </div>
    </div>
    </div>
</div>

</body>
</html>