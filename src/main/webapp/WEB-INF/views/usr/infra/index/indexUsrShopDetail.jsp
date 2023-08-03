<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/resources/css/shop/cssShop/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/style.css" type="text/css">
	<link rel="stylesheet" href="/resources/css/shop/styles1.css">
	<link href="/resources/css/shop/styles.css" rel="stylesheet" />
</head>

<body>
    <!-- Page Preloder -->
    
   <%@include file="../usrinclude/shopnav.jsp"%>
   
   

    <!-- Breadcrumb Section Begin -->
    <div style="background-image:url(/resources/img/assets/img/discount/bg10.jpg);width:100%;height:400px;">
    <!-- 슬라이드 들어갈 예정 -->
    </div>
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
<c:forEach items="${list}" var="list" varStatus="status" end="0">
	    <section class="product-details spad">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-6 col-md-6" style="background-image:url(/resources/img/assets/img/shoes/shoes3.jpg);background-size: cover; ">
	                    <div class="product__details__pic">
	                    </div>
	                </div>
	                <div class="col-lg-6 col-md-6">
	                    <div class="product__details__text"  style="margin-left: 100px;">
	                        <h3><a href="indexUsrShopDetail?seq=" style="text-decoration: none;"><c:out value="${list.productName}"></c:out></a></h3>
	                        <div class="product__details__rating">
	                            <i class="bi bi-star-fill"></i>
	                            <i class="bi bi-star-fill"></i>
	                            <i class="bi bi-star-fill"></i>
	                            <i class="bi bi-star-fill-half-o"></i>
	                            <i class="bi bi-star-fill-half-o"></i>
	                            <span>(<c:out value="${list.productHits}"></c:out>)</span>
	                        </div>
	                        <div class="product__details__price"><c:out value="${list.productPrice}"></c:out>원</div>
	<!--                         <p>Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam -->
	<!--                             vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vestibulum ac diam sit amet -->
	<!--                             quam vehicula elementum sed sit amet dui. Proin eget tortor risus.</p> -->
	                        <div class="product__details__quantity">
	                            <div class="quantity">
	                                <div class="pro-qty">
	                                    <input type="text" value="1">
	                                </div>
	                            </div>
	                        </div>
	                        <a href="#" class="primary-btn" style="text-decoration: none;">장바구니 담기</a>
	<!--                         <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a> -->
	                        <ul>
	                            <li><b>상품명</b><c:out value="${list.productName}"></c:out></li>
	                            <li><b>카테고리</b><c:out value="${list.category}"></c:out></li>
	                            <li><b>상품가격</b><c:out value="${list.productPrice}"></c:out>원</li>
	<!--                             <li><b></b> -->
	<!--                                 <div class="share"> -->
	<!--                                     <a href="#"><i class="fa fa-facebook"></i></a> -->
	<!--                                     <a href="#"><i class="fa fa-twitter"></i></a> -->
	<!--                                     <a href="#"><i class="fa fa-instagram"></i></a> -->
	<!--                                     <a href="#"><i class="fa fa-pinterest"></i></a> -->
	<!--                                 </div> -->
	<!--                             </li> -->
	                        </ul>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>
    </c:forEach>
    <!-- Product Details Section End -->
    <div style="background-color: aqua; width: 80%; height: 300px; margin: auto;"></div>



    <!-- Related Product Section Begin -->
    <section class="related-product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related__product__title">
                        <h2>Related Product</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic " style="background-image: url(/resources/img/assets/img/shoes/shoes1.jpg);background-size:260px 270px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="bi bi-heart"></i></a></li>
	                            <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic " style="background-image: url(/resources/img/assets/img/shoes/shoes2.jpg);background-size:260px 270px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="bi bi-heart"></i></a></li>
	                            <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic " style="background-image: url(/resources/img/assets/img/shoes/shoes4.jpg);background-size:260px 270px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="bi bi-heart"></i></a></li>
	                            <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic " style="background-image: url(/resources/img/assets/img/shoes/shoes5.jpg);background-size:260px 270px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="bi bi-heart"></i></a></li>
	                            <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Related Product Section End -->

    <!-- Footer Section Begin -->
    
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="/resources/js/shop/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/shop/bootstrap.min.js"></script>
    <script src="/resources/js/shop/jquery.nice-select.min.js"></script>
    <script src="/resources/js/shop/jquery-ui.min.js"></script>
    <script src="/resources/js/shop/jquery.slicknav.js"></script>
    <script src="/resources/js/shop/mixitup.min.js"></script>
    <script src="/resources/js/shop/owl.carousel.min.js"></script>
    <script src="/resources/js/shop/main.js"></script>

	<script src="/resources/js/scripts.js"></script>
</body>

</html>