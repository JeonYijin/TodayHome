<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/productPage.css">
</head>
<body>


<div class="production-selling-overview container">
    <nav class="commerce-category-breadcrumb-wrap production-selling-overview__category">
        <ol class="commerce-category-breadcrumb">
            <li class="commerce-category-breadcrumb__entry">
                <a class="link" href="/store/category?category=0&amp;affect_type= ProductSaleDetail&amp;affect_id=310649">가구</a>
                <svg class="icon" width="8" height="8" viewBox="0 0 8 8" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path d="M4.95 4L2.12 1.19l.7-.71 3.54 3.54-3.53 3.53-.7-.7z"></path></svg>
            </li>
            <li class="commerce-category-breadcrumb__entry">
                <a class="link" href="/store/category?category=0_22&amp;affect_type= ProductSaleDetail&amp;affect_id=310649">${categoryN}</a>
            </li>
            
        </ol>
    </nav>
    <div class="production-selling-overview__container row">
        <div class="production-selling-overview__cover-image-wrap col-12 col-md-6 col-lg-7">
            <div class="production-selling-cover-image-container">
                <div class="carousel production-selling-cover-image production-selling-overview__cover-image" role="region" aria-roledescription="carousel">
                    <div class="carousel__list-wrap production-selling-cover-image__carousel-wrap">
                        <div class="carousel__list" aria-live="polite" style="transform: translateX(0%); transition: transform 0s ease 0s;">
                            <div class="carousel__list__entry production-selling-cover-image__entry" role="group" aria-roledescription="slide" aria-label="6 of 8" style="width: 100%;">
                                <img
                                    class="production-selling-cover-image__entry__image"
                                    tabindex="0"
                                    src="../upload/store/${product.prFiles[0].fileName}"
                                    srcset=""
                                />
                                <div class="production-selling-cover-image__timer--pc"></div>
                            </div>
                            <div class="carousel__list__entry production-selling-cover-image__entry" role="group" aria-roledescription="slide" aria-label="7 of 8" style="width: 100%;">
                                <img
                                    class="production-selling-cover-image__entry__image"
                                    tabindex="0"
                                    src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/161967816850290174.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c"
                                    srcset="
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/161967816850290174.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c   1.5x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/161967816850290174.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c   2x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/161967816850290174.jpg?gif=1&amp;w=1440&amp;h=1440&amp;c=c 3x
                                    "
                                />
                                <div class="production-selling-cover-image__timer--pc"></div>
                            </div>
                        </div>
                    </div>
                    <ul class="production-selling-cover-image__list">
                        <li class="production-selling-cover-image__list__item">
                            <button class="production-selling-cover-image__list__btn" type="button" aria-label="8개 중 1번째 항목">
                                <img
                                    class="image"
                                   src="../upload/store/${product.prFiles[0].fileName}"
                                    srcset="
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162676121775574674.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162676121775574674.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 2x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162676121775574674.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c 3x
                                    "
                                />
                            </button>
                        </li>
                        <li class="production-selling-cover-image__list__item">
                            <button class="production-selling-cover-image__list__btn" type="button" aria-label="8개 중 2번째 항목">
                                <img
                                    class="image"
                                    src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/162364536593696139.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c"
                                    srcset="
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/162364536593696139.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/162364536593696139.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 2x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/162364536593696139.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c 3x
                                    "
                                />
                            </button>
                        </li>
                        <li class="production-selling-cover-image__list__item">
                            <button class="production-selling-cover-image__list__btn" type="button" aria-label="8개 중 3번째 항목">
                                <img
                                    class="image"
                                    src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/162364537442098298.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c"
                                    srcset="
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/162364537442098298.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/162364537442098298.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 2x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/162364537442098298.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c 3x
                                    "
                                />
                            </button>
                        </li>
                        <li class="production-selling-cover-image__list__item">
                            <button class="production-selling-cover-image__list__btn" type="button" aria-label="8개 중 4번째 항목">
                                <img
                                    class="image"
                                    src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/161959452371899076.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c"
                                    srcset="
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/161959452371899076.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/161959452371899076.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 2x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/161959452371899076.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c 3x
                                    "
                                />
                            </button>
                        </li>
                        <li class="production-selling-cover-image__list__item">
                            <button class="production-selling-cover-image__list__btn" type="button" aria-label="8개 중 5번째 항목">
                                <img
                                    class="image"
                                    src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/161959451228215322.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c"
                                    srcset="
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/161959451228215322.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/161959451228215322.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 2x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/161959451228215322.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c 3x
                                    "
                                />
                            </button>
                        </li>
                        <li class="production-selling-cover-image__list__item">
                            <button class="production-selling-cover-image__list__btn production-selling-cover-image__list__btn--selected" type="button" aria-label="8개 중 6번째 항목">
                                <img
                                    class="image"
                                    src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/160575127145960446.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c"
                                    srcset="
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/160575127145960446.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/160575127145960446.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 2x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/160575127145960446.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c 3x
                                    "
                                />
                            </button>
                        </li>
                        <li class="production-selling-cover-image__list__item">
                            <button class="production-selling-cover-image__list__btn" type="button" aria-label="8개 중 7번째 항목">
                                <img
                                    class="image"
                                    src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/161967816850290174.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c"
                                    srcset="
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/161967816850290174.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/161967816850290174.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 2x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/161967816850290174.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c 3x
                                    "
                                />
                            </button>
                        </li>
                        <li class="production-selling-cover-image__list__item">
                            <button class="production-selling-cover-image__list__btn" type="button" aria-label="8개 중 8번째 항목">
                                <img
                                    class="image"
                                    src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/160575127630362101.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c"
                                    srcset="
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/160575127630362101.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 1.5x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/160575127630362101.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 2x,
                                        https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/images/160575127630362101.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c 3x
                                    "
                                />
                            </button>
                        </li>
                    </ul>
                    <div class="production-selling-cover-image__paginator">
                        <ul class="carousel-paginator">
                            <li><span class="carousel-paginator__page tiny" data-key="2"></span></li>
                            <li><span class="carousel-paginator__page small" data-key="3"></span></li>
                            <li><span class="carousel-paginator__page" data-key="4"></span></li>
                            <li><span class="carousel-paginator__page" data-key="5"></span></li>
                            <li><span class="carousel-paginator__page selected" data-key="6"></span></li>
                            <li><span class="carousel-paginator__page" data-key="7"></span></li>
                            <li><span class="carousel-paginator__page" data-key="8"></span></li>
                        </ul>
                    </div>
                </div>
                <div class="production-selling-cover-image__timer--mobile"></div>
            </div>
        </div>
        <div class="production-selling-overview__content col-12 col-md-6 col-lg-5">
            <div class="production-selling-header">
                <h1 class="production-selling-header__title">
                    <p class="production-selling-header__title__brand-wrap"><a class="production-selling-header__title__brand" href="/brands/home?query=%EB%A6%AC%EC%83%98&amp;affect_type=ProductSaleDetail&amp;affect_id=310649">${product.pr_seller}</a></p>
                    <div class="production-selling-header__title__name-wrap">
                        <span class="production-selling-header__title__name">${product.pr_name}</span>
                        <div class="production-selling-header__action">
                            <button class="production-selling-header__action__button production-selling-header__action__button-scrap" type="button">
                                <svg class="icon--stroke" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                                    <path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path>
                                </svg>
                                <span class="count">${product.pr_scrap}</span>
                            </button>
                            <div class="drop-down">
                                <button class="production-selling-header__action__button" type="button">
                                    <svg class="icon" aria-label="공유하기" width="24" height="24" viewBox="0 0 24 24" fill="currentColor" preserveAspectRatio="xMidYMid meet">
                                        <path
                                            d="M9.64 14.646a4.5 4.5 0 1 1 0-5.292l4.54-2.476a4.5 4.5 0 1 1 .63.795l-4.675 2.55c.235.545.365 1.146.365 1.777s-.13 1.232-.365 1.777l4.675 2.55a4.5 4.5 0 1 1-.63.795l-4.54-2.476zM18 8a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM6 15.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM18 23a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"
                                        ></path>
                                    </svg>
                                </button>
                            </div>
                        </div>
                    </div>
                </h1>
                <div class="production-selling-header__content">
                    <p class="production-selling-header__review-wrap">
                        <a class="production-selling-header__review" href="#production-selling-review">
                            <span class="production-selling-header__review__icon" aria-label="별점 4.6점">
                                <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                    <defs>
                                        <path
                                            id="star-path-1.000"
                                            d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"
                                        ></path>
                                        <clipPath id="star-clip-1.000"><rect x="0" y="0" width="24" height="24"></rect></clipPath>
                                    </defs>
                                    <use xlink:href="#star-path-1.000" fill="#DBDBDB"></use>
                                    <use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use>
                                </svg>
                                <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                    <defs>
                                        <path
                                            id="star-path-1.000"
                                            d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"
                                        ></path>
                                        <clipPath id="star-clip-1.000"><rect x="0" y="0" width="24" height="24"></rect></clipPath>
                                    </defs>
                                    <use xlink:href="#star-path-1.000" fill="#DBDBDB"></use>
                                    <use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use>
                                </svg>
                                <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                    <defs>
                                        <path
                                            id="star-path-1.000"
                                            d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"
                                        ></path>
                                        <clipPath id="star-clip-1.000"><rect x="0" y="0" width="24" height="24"></rect></clipPath>
                                    </defs>
                                    <use xlink:href="#star-path-1.000" fill="#DBDBDB"></use>
                                    <use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use>
                                </svg>
                                <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                    <defs>
                                        <path
                                            id="star-path-1.000"
                                            d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"
                                        ></path>
                                        <clipPath id="star-clip-1.000"><rect x="0" y="0" width="24" height="24"></rect></clipPath>
                                    </defs>
                                    <use xlink:href="#star-path-1.000" fill="#DBDBDB"></use>
                                    <use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use>
                                </svg>
                                <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                    <defs>
                                        <path
                                            id="star-path-0.578"
                                            d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"
                                        ></path>
                                        <clipPath id="star-clip-0.578"><rect x="0" y="0" width="13.868877947654823" height="24"></rect></clipPath>
                                    </defs>
                                    <use xlink:href="#star-path-0.578" fill="#DBDBDB"></use>
                                    <use clip-path="url(#star-clip-0.578)" xlink:href="#star-path-0.578"></use>
                                </svg>
                            </span>
                            <span class="production-selling-header__review__text">
                                <span class="number"><span class="mobile-wrapper">(</span>3,859<span class="mobile-wrapper">)</span></span><span class="postfix">개 리뷰</span>
                            </span>
                        </a>
                    </p>
                    <div class="production-selling-header__price">
                        <span class="production-selling-header__price__price-wrap">
                            <span class="production-selling-header__price__discount"><span class="number">${product.pr_discount}</span><span class="percent">%</span></span>
                            <del class="production-selling-header__price__original"><span class="number">${product.pr_price}</span><span class="won">원</span></del><span class="production-selling-header__price__separator"></span>
                            <span class="production-selling-header__price__price">
                                <span class="number">${product.pr_dPrice}</span><span class="won">원</span>
                                <span class="production-selling-header__price__badge">
                                    <svg class="icon" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet">
                                        <rect width="30" height="20" fill="#F77" rx="4"></rect>
                                        <path
                                            fill="#fff"
                                            d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"
                                        ></path>
                                    </svg>
                                </span>
                            </span>
                        </span>
                        
                    </div>
                    
                </div>
              
                    <div class="production-selling-header__delivery">
                        <div class="production-selling-header__delivery__title-wrap"><span>배송</span></div>
                        <div class="production-selling-header__delivery__content-wrap">
                            <span class="production-selling-header__delivery__fee">
                                <span><b>1개당 35,000원 </b>착불 </span>
                            </span>
                            <span class="production-selling-header__delivery__type"><span>업체직접배송</span><span>7일 이내 배송</span></span>
                            <span class="production-selling-header__delivery__disclaimer-wrap">
                                <span class="production-selling-header__delivery__disclaimer">
                                    <svg class="check-icon" width="10" height="9" fill="none" preserveAspectRatio="xMidYMid meet">
                                        <path d="M1 3.83l2.153 3.03a1 1 0 001.627.005L9 1" stroke="#BDBDBD" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                    </svg>
                                    <span>제주도/도서산간 지역 배송 불가</span>
                                </span>
                            </span>
                        </div>
                    </div>
                </div>
                <a class="css-js9gru-LinkWrapper e3xbt9p7" href="/brands/home?query=%EB%A6%AC%EC%83%98&amp;affect_type=ProductSaleDetail&amp;affect_id=310649">
                    <div class="css-16h87qg-NameSection e3xbt9p6">
                        <svg width="24" height="24" fill="none" preserveAspectRatio="xMidYMid meet">
                            <path d="M3.972 8.694c0-.26.212-.472.472-.472h12.278a.472.472 0 010 .945H4.444a.472.472 0 01-.472-.473z" fill="#35C5F0"></path>
                            <path
                                fill-rule="evenodd"
                                clip-rule="evenodd"
                                d="M17.51 5.5H6.492a1 1 0 00-.93.632l-.99 2.5A1 1 0 005.498 10h13.004a1 1 0 00.927-1.368l-.99-2.5a1 1 0 00-.93-.632zM3.642 8.263a2.002 2.002 0 001.397 2.684V17.5a2.5 2.5 0 002.5 2.5H16.474a2.5 2.5 0 002.487-2.5v-6.553a2.002 2.002 0 001.398-2.684l-.99-2.5a2 2 0 00-1.86-1.263H6.493a2 2 0 00-1.86 1.263l-.99 2.5zM6.04 17.5V11h11.921v6.5a1.5 1.5 0 01-1.487 1.5v-4a2 2 0 00-2-2h-.97a2 2 0 00-2 2v4H7.54a1.5 1.5 0 01-1.5-1.5zm6.464 1.5h2.97v-4a1 1 0 00-1-1h-.97a1 1 0 00-1 1v1h.847a.5.5 0 110 1h-.847v2zM8 13h1.5v1.5H8V13zm-1 0a1 1 0 011-1h1.5a1 1 0 011 1v1.5a1 1 0 01-1 1H8a1 1 0 01-1-1V13z"
                                fill="#3F474D"
                            ></path>
                        </svg>
                        <div class="css-1h8edc9-Info e3xbt9p5"><span class="css-1pec80b-BrandName e3xbt9p4">${product.pr_seller}</span></div>
                    </div>
                    <div class="css-1yj9pi0-Button e3xbt9p0">
                        <span>브랜드홈</span><svg width="14" height="14" fill="none" preserveAspectRatio="xMidYMid meet"><path d="M4.083 11.375L8.312 7 4.083 2.625l.803-.875L9.916 7l-5.03 5.25-.803-.875z" fill="#828C94"></path></svg>
                    </div>
                </a>
            </div>
            <div class="production-selling-option-form production-selling-overview__option-form">
                <section class="selling-option-form-content production-selling-option-form__form">
                    <div class="selling-option-form-content__form">
                        <div class="selling-option-select-input">
                            <div class="input-group select-input selling-option-select-input__option selling-option-select-input__option-1 focused">
                                <select class="form-control empty">
                                    <option value="" disabled="">상품선택</option>
                                    <option value="0">슈퍼싱글SS 프레임만(156,000원)</option>
                                    <option value="1">퀸Q 프레임만(196,000원)</option>
                                </select>
                                <span class="select-input__icon">
                                    <svg class="icon" width="10" height="10" preserveAspectRatio="xMidYMid meet" style="fill: currentcolor;"><path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path></svg>
                                </span>
                            </div>
                            <div class="input-group select-input selling-option-select-input__option selling-option-select-input__option-2">
                                <select class="form-control empty">
                                    <option value="" disabled="">색상선택</option>
                                </select>
                                <span class="select-input__icon">
                                    <svg class="icon" width="10" height="10" preserveAspectRatio="xMidYMid meet" style="fill: currentcolor;"><path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path></svg>
                                </span>
                            </div>
                            <div class="input-group select-input selling-option-select-input__option selling-option-select-input__option-extra">
                                <select class="form-control empty">
                                    <option value="" disabled="">추가상품 (선택)</option>
                                    <option value="0">고급방수커버 그레이 슈퍼싱글 SS (19,000원)</option>
                                    <option value="1">고급방수커버 그레이 퀸 Q (25,000원)</option>
                                    <option value="2">슈퍼싱글SS 6회전본넬매트 (89,000원)</option>
                                    <option value="3">슈퍼싱글SS 인디파워독립매트 (119,000원)</option>
                                    <option value="4">슈퍼싱글SS 라텍폼스20T매트 (149,000원)</option>
                                    <option value="5">슈퍼싱글SS 라텍폼스40T매트 (169,000원)</option>
                                    <option value="6">슈퍼싱글SS 텐셀 하드타입 독립포켓 제로매트 (219,000원)</option>
                                    <option value="7">퀸Q 6회전본넬매트 (99,000원)</option>
                                    <option value="8">퀸Q 인디파워독립매트 (129,000원)</option>
                                    <option value="9">퀸Q 라텍폼스20T매트 (159,000원)</option>
                                    <option value="10">퀸Q 라텍폼스40T매트 (189,000원)</option>
                                    <option value="11">퀸Q 텐셀 하드타입 독립포켓 제로매트 (259,000원)</option>
                                </select>
                                <span class="select-input__icon">
                                    <svg class="icon" width="10" height="10" preserveAspectRatio="xMidYMid meet" style="fill: currentcolor;"><path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path></svg>
                                </span>
                            </div>
                        </div>
                    </div>
                    <ul class="selling-option-form-content__list"></ul>
                </section>
                <p class="selling-option-form-content__price">
                    <span class="selling-option-form-content__price__left">주문금액</span><span class="selling-option-form-content__price__right"><span class="selling-option-form-content__price__number">0</span>원</span>
                </p>
                <div class="production-selling-option-form__footer">
                    <button class="button button--color-blue-inverted button--size-55 button--shape-4" type="button">장바구니</button><button class="button button--color-blue button--size-55 button--shape-4" type="button">바로구매</button>
                </div>
            </div>
            <div class="production-selling-overview__promotion-banner">
                <a class="production-selling-promotion-banner" href="/exhibitions/1763">
                    <img
                        class="production-selling-promotion-banner__image production-selling-promotion-banner__image--pc"
                        src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/production_promotions/event/163659366617647823.jpg?gif=1&amp;w=480"
                        srcset="
                            https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/production_promotions/event/163659366617647823.jpg?gif=1&amp;w=640  1.5x,
                            https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/production_promotions/event/163659366617647823.jpg?gif=1&amp;w=850  2x,
                            https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/production_promotions/event/163659366617647823.jpg?gif=1&amp;w=1280 3x
                        "
                    />
                    <img
                        class="production-selling-promotion-banner__image production-selling-promotion-banner__image--mobile"
                        src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/production_promotions/event/163659369085642663.jpg?gif=1&amp;w=240"
                        srcset="
                            https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/production_promotions/event/163659369085642663.jpg?gif=1&amp;w=360 1.5x,
                            https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/production_promotions/event/163659369085642663.jpg?gif=1&amp;w=480 2x,
                            https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/production_promotions/event/163659369085642663.jpg?gif=1&amp;w=720 3x
                        "
                    />
                </a>
            </div>
        </div>
    </div>
</div>


</body>
</html>