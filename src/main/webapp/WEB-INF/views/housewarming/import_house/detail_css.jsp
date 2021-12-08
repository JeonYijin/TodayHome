<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="alternate" href="android-app://net.bucketplace/http/ohou.se/deep">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&amp;display=swap&amp;subset=korean"
        rel="stylesheet">
    <link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/preamble-97ede701.chunk.css">
    <link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/19-ff5a26c5.chunk.css">
    <link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/43-062b3c9e.chunk.css">
    <link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/templates-Content-Project-Detail-3651f1de.chunk.css">
    <link rel="stylesheet"
        href="https://assets.ohou.se/web/dist/css/containers-CommentFeed-CommentFeedProvider-a043973d.chunk.css">
    <link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/21-0e75de9b.chunk.css">
    <link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/23-2ef16b9a.chunk.css">
    <link rel="stylesheet" href="https://assets.ohou.se/web/dist/css/App-6e6c2f0c.chunk.css">
    <style data-emotion="css ficoa8-AuthorAddress" data-s="">
        .css-ficoa8-AuthorAddress {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: justify;
            -webkit-justify-content: space-between;
            justify-content: space-between;
            margin: 0 -15px;
            padding: 24px 15px;
            border-bottom: 10px solid #eaebef;
        }
    
        @media (min-width: 768px) {
            .css-ficoa8-AuthorAddress {
                margin: 0;
                padding: 30px 0;
                border-bottom: 1px solid #eaebef;
            }
        }
    </style>
    <style data-emotion="css 8a30oh-AuthorAuthor" data-s="">
        .css-8a30oh-AuthorAuthor {
            position: relative;
            margin-left: 65px;
            min-height: 50px;
        }
    
        @media (min-width: 768px) {
            .css-8a30oh-AuthorAuthor {
                margin-left: 84px;
                min-height: 64px;
            }
        }
    </style>
    <style data-emotion="css 18j7ebb-AuthorTitle" data-s="">
        .css-18j7ebb-AuthorTitle {
            padding-top: 3px;
            font-size: 15px;
            font-weight: bold;
            color: #212529;
            line-height: 21px;
        }
    
        @media (min-width: 768px) {
            .css-18j7ebb-AuthorTitle {
                font-size: 17px;
                line-height: 23px;
            }
        }
    </style>
    <style data-emotion="css 1u6ed71-AuthorLink" data-s="">
        .css-1u6ed71-AuthorLink {
            -webkit-transition: .1s color;
            transition: .1s color;
        }
    
        .css-1u6ed71-AuthorLink.focus-visible:focus {
            color: #656e75;
        }
    
        @media (min-width: 768px) {
    
            .css-1u6ed71-AuthorLink:hover,
            .css-1u6ed71-AuthorLink:active {
                color: #656e75;
            }
        }
    </style>
    <style data-emotion="css tvpkwu-AuthorImage" data-s="">
        .css-tvpkwu-AuthorImage {
            position: absolute;
            top: 0;
            left: -65px;
            width: 50px;
            height: 50px;
            overflow: hidden;
            background-color: #f5f5f5;
            border-radius: 100%;
        }
    
        @media (min-width: 768px) {
            .css-tvpkwu-AuthorImage {
                left: -84px;
                width: 64px;
                height: 64px;
            }
        }
    
        .css-tvpkwu-AuthorImage>.image {
            width: 100%;
            height: 100%;
        }
    
        .css-tvpkwu-AuthorImage:after {
            content: '';
            position: absolute;
            display: block;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            box-sizing: border-box;
            border: 1px solid rgba(0, 0, 0, .07);
            border-radius: 100%;
        }
    </style>
    <style data-emotion="css 132bynx-AuthorSeparator" data-s="">
        .css-132bynx-AuthorSeparator:before {
            content: '·';
            margin: 0 8px 0;
            color: #656e75;
        }
    </style>
    <style data-emotion="css mxt7n4-AuthorFollow" data-s="">
        .css-mxt7n4-AuthorFollow {
            display: inline-block;
            margin: 0;
            padding: 0;
            border: none;
            background: none;
            font: inherit;
            padding: 2px;
            margin: -2px;
            color: #35c5f0;
            -webkit-transition: .1s opacity;
            transition: .1s opacity;
        }
    
        .css-mxt7n4-AuthorFollow.focus-visible:focus {
            opacity: .5;
        }
    
        @media (min-width: 768px) {
    
            .css-mxt7n4-AuthorFollow:hover,
            .css-mxt7n4-AuthorFollow:active {
                opacity: .5;
            }
        }
    
        .css-mxt7n4-AuthorFollow::-moz-focus-inner {
            border: 0;
        }
    
        .css-mxt7n4-AuthorFollow.focus-visible:focus {
            opacity: 1;
            box-shadow: 0 0 0 3px #a3e4f8;
            border-radius: 3px;
        }
    </style>
    <style data-emotion="css 1uvgjqa-AuthorIntroduction" data-s="">
        .css-1uvgjqa-AuthorIntroduction {
            margin-top: 3px;
            font-size: 14px;
            line-height: 20px;
            min-height: 20px;
            max-height: 40px;
            color: #3f474d;
            display: -webkit-box;
            text-overflow: ellipsis;
            -webkit-line-clamp: 2;
            word-wrap: break-word;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
    
        @media (min-width: 768px) {
            .css-1uvgjqa-AuthorIntroduction {
                margin-top: 10px;
                font-size: 16px;
                line-height: 22px;
                min-height: 22px;
                max-height: 44px;
            }
        }
    </style>
    <style data-emotion="css t9d8mb-ContentDiv" data-s="">
        .css-t9d8mb-ContentDiv {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: space-around;
            -ms-flex-pack: space-around;
            -webkit-justify-content: space-around;
            justify-content: space-around;
        }
    </style>
    <style data-emotion="css wkl218-SectionWrapper" data-s="">
        .css-wkl218-SectionWrapper {
            margin-top: 32px;
        }
    
        @media (min-width: 768px) {
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
    <link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
    
    <style data-emotion="css" data-s=""></style>
    
    <link rel="stylesheet" type="text/css" href="https://assets.ohou.se/web/dist/css/8-b8609d1a.chunk.css">
    <link rel="stylesheet" type="text/css"
        href="https://assets.ohou.se/web/dist/css/templates-Content-CardCollection-CardDetail-29c07014.chunk.css">
    <link rel="stylesheet" type="text/css" href="https://assets.ohou.se/web/dist/css/5-1fc4abe5.chunk.css">
    <link rel="stylesheet" type="text/css" href="https://assets.ohou.se/web/dist/css/7-122a7274.chunk.css">
    <link rel="stylesheet" type="text/css" href="https://assets.ohou.se/web/dist/css/14-70cf3ee0.chunk.css">
    <link rel="stylesheet" type="text/css"
        href="https://assets.ohou.se/web/dist/css/templates-Content-Project-Feed-cfb268e4.chunk.css">
    <link rel="canonical" href="https://ohou.se/projects/67502/detail" data-react-helmet="true">
</head>
<body>

</body>
</html>