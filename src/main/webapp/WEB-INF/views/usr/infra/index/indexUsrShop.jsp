<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>08</title>
     
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <!-- Css Styles -->
    <link rel="stylesheet" href="/resources/css/shop/cssShop/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/style.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/styles1.css">
    <link href="/resources/css/shop/styles.css" rel="stylesheet" />
</head>

<body>
    <!-- Breadcrumb Section Begin -->
   
   <!-- nav s -->
   <%@include file="../usrinclude/shopnav.jsp"%>
   <!-- nav e -->
   
    
    <!-- Breadcrumb Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebar">
                        <div class="sidebar__item" id="side" style="margin-top:64px;">
                            <h4>카테고리</h4>
                            <ul>
                                <li><a href="indexUsrShop?category" style="text-decoration: none;">신발</a></li>
                                <li><a href="indexUsrShop?category" style="text-decoration: none;">가전제품</a></li>
                                <li><a href="indexUsrShop?category" style="text-decoration: none;">의류</a></li>
                                <li><a href="indexUsrShop?category" style="text-decoration: none;">완구</a></li>
                                <li><a href="indexUsrShop?category" style="text-decoration: none;">주방용품</a></li>
                                <li><a href="indexUsrShop?category" style="text-decoration: none;">자동차</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-7">
                    <div class="product__discount">
                        <div class="row">
                            <div class="product__discount__slider owl-carousel">
                                <div class="col-lg-4">
                                    <div class="product__discount__item">
                                        <div class="product__discount__item__pic set-bg" id="bg_1">
                                            <div class="product__discount__percent">-20%</div>
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="bi bi-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__discount__item__text">
                                            <span>Dried Fruit</span>
                                            <h5><a href="#">Raisin’n’nuts</a></h5>
                                            <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="product__discount__item">
                                        <div class="product__discount__item__pic set-bg" id="bg_2">
                                            <img src="../startbootstrap-agency-gh-pages/assets/img/discount/bg1.jpg" alt="">
                                            <div class="product__discount__percent">-20%</div>
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="bi bi-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__discount__item__text">
                                            <span>Vegetables</span>
                                            <h5><a href="#">Vegetables’package</a></h5>
                                            <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="product__discount__item">
                                        <div class="product__discount__item__pic set-bg" id="bg_3">
                                            <div class="product__discount__percent">-20%</div>
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="bi bi-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__discount__item__text">
                                            <span>Dried Fruit</span>
                                            <h5><a href="#">Mixed Fruitss</a></h5>
                                            <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="product__discount__item">
                                        <div class="product__discount__item__pic set-bg" id="bg_4">
                                            <div class="product__discount__percent">-20%</div>
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="bi bi-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__discount__item__text">
                                            <span>Dried Fruit</span>
                                            <h5><a href="#">Raisin’n’nuts</a></h5>
                                            <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="product__discount__item">
                                        <div class="product__discount__item__pic set-bg" id="bg_5">
                                            <div class="product__discount__percent">-20%</div>
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="bi bi-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__discount__item__text">
                                            <span>Dried Fruit</span>
                                            <h5><a href="#">Raisin’n’nuts</a></h5>
                                            <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="product__discount__item">
                                        <div class="product__discount__item__pic set-bg" id="bg_6">
                                            <div class="product__discount__percent">-20%</div>
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="bi bi-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__discount__item__text">
                                            <span>Dried Fruit</span>
                                            <h5><a href="#">Raisin’n’nuts</a></h5>
                                            <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="filter__item">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                                <div class="filter__sort">
                                    <span>정렬</span>
                                    <select>
                                        <option value="0">가격순</option>
                                        <option value="0">조회순</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6><span>16</span> Products found</h6>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-3">
                                <div class="filter__option">
                                    <span ><i class="bi bi-grid"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    
                       <c:forEach items="${list}" var="list" varStatus="status">
							<div class="col-lg-4 col-md-6 col-sm-6 ">
	                            <div class="product__item rankList">
	                               <div class="product__item__pic set-bg">
	                               <a href="indexUsrShopDetail?seq=<c:out value="${list.seq}"/>"><img alt="" src="/resources/img/assets/img/shoes/shoes3.jpg" style="width: 100%;height:  100%"></a>
	                                    <ul class="product__item__pic__hover">
	                                        <li><a href="#"><i class="bi bi-heart"></i></a></li>
	                                        <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li>
	                                    </ul>
	                                </div>
	                                <div class="product__item__text" >
	                                    <h6><a href="indexUsrShopDetail?seq=<c:out value="${list.seq}"/>" style="text-decoration: none;"><c:out value="${list.productName}"></c:out></a></h6>
	                                    <h5><c:out value="${list.productPrice}"></c:out></h5>
	                                </div>
	                            </div>
	                        </div>                                   
                        </c:forEach>
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" id="bg_7" > -->
<!--                                     <ul class="product__item__pic__hover"> -->
<!--                                         <li><a href="#"><i class="bi bi-heart"></i></a></li> -->
<!--                                         <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></i></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6><a href="#" style="text-decoration: none;">상세보기</a></h6> -->
<!--                                     <h5>$30.00</h5> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" id="bg_8"> -->
<!--                                     <ul class="product__item__pic__hover"> -->
<!--                                         <li><a href="#"><i class="bi bi-heart"></i></a></li> -->
<!--                                         <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6><a href="#" style="text-decoration: none;">상세보기</a></h6> -->
<!--                                     <h5>$30.00</h5> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" id="bg_9"> -->
<!--                                     <ul class="product__item__pic__hover"> -->
<!--                                         <li><a href="#"><i class="bi bi-heart"></i></a></li> -->
<!--                                         <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6><a href="#" style="text-decoration: none;">상세보기</a></h6> -->
<!--                                     <h5>$30.00</h5> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" id="bg_1"> -->
<!--                                     <ul class="product__item__pic__hover"> -->
<!--                                         <li><a href="#"><i class="bi bi-heart"></i></a></li> -->
<!--                                         <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6><a href="#" style="text-decoration: none;">상세보기</a></h6> -->
<!--                                     <h5>$30.00</h5> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" id="bg_2"> -->
<!--                                     <ul class="product__item__pic__hover"> -->
<!--                                         <li><a href="#"><i class="bi bi-heart"></i></a></li> -->
<!--                                         <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6><a href="#" style="text-decoration: none;">상세보기</a></h6> -->
<!--                                     <h5>$30.00</h5> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" id="bg_3"> -->
<!--                                     <ul class="product__item__pic__hover"> -->
<!--                                         <li><a href="#"><i class="bi bi-heart"></i></a></li> -->
<!--                                         <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6><a href="#" style="text-decoration: none;">상세보기</a></h6> -->
<!--                                     <h5>$30.00</h5> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" id="bg_4"> -->
<!--                                     <ul class="product__item__pic__hover"> -->
<!--                                         <li><a href="#"><i class="bi bi-heart"></i></a></li> -->
<!--                                         <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6><a href="#" style="text-decoration: none;">상세보기</a></h6> -->
<!--                                     <h5>$30.00</h5> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" id="bg_5"> -->
<!--                                     <ul class="product__item__pic__hover"> -->
<!--                                         <li><a href="#"><i class="bi bi-heart"></i></a></li> -->
<!--                                         <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6><a href="#" style="text-decoration: none;">상세보기</a></h6> -->
<!--                                     <h5>$30.00</h5> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" id="bg_6"> -->
<!--                                     <ul class="product__item__pic__hover"> -->
<!--                                         <li><a href="#"><i class="bi bi-heart"></i></a></li> -->
<!--                                         <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6><a href="#" style="text-decoration: none;">상세보기</a></h6> -->
<!--                                     <h5>$30.00</h5> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" id="bg_7"> -->
<!--                                     <ul class="product__item__pic__hover"> -->
<!--                                         <li><a href="#"><i class="bi bi-heart"></i></a></li> -->
<!--                                         <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6><a href="#" style="text-decoration: none;">상세보기</a></h6> -->
<!--                                     <h5>$30.00</h5> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" id="bg_8"> -->
<!--                                     <ul class="product__item__pic__hover"> -->
<!--                                         <li><a href="#"><i class="bi bi-heart"></i></a></li> -->
<!--                                         <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6><a href="#" style="text-decoration: none;">상세보기</a></h6> -->
<!--                                     <h5>$30.00</h5> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" id="bg_9"> -->
<!--                                     <ul class="product__item__pic__hover"> -->
<!--                                         <li><a href="#"><i class="bi bi-heart"></i></a></li> -->
<!--                                         <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6><a href="#" style="text-decoration: none;">상세보기</a></h6> -->
<!--                                     <h5>$30.00</h5> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
                    </div>
                    <div class="product__pagination">
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-start">Copyright &copy; Your Website 2023</div>
                    <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Facebook"><i class="bi bi-facebook"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="LinkedIn"><i class="bi bi-instagram"></i></a>
                    </div>
                    <div class="col-lg-4 text-lg-end">
                        <a class="link-dark text-decoration-none me-3" href="#!">Privacy Policy</a>
                        <a class="link-dark text-decoration-none" href="#!">Terms of Use</a>
                    </div>
                </div>
            </div>
        </footer>
    </section>
    <!-- Product Section End -->

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
<!--     <script src="/resources/js/shop/main.js"></script> -->

    <script src="/resources/js/scripts.js"></script>
<script type="text/javascript">
        $("#logout").on("click", function(){
  		
  		$.ajax({
  			async: true 
  			,cache: false
  			,type: "post"
  			// ,dataType:"json" //
  			,url: "/logoutProc"
  			// ,data : $("#loginView").serialize() //
  			,data : {}
  			,success: function(response) {
  				location.href = "/indexUsrView";
  			}
  			,error : function(jqXHR, textStatus, errorThrown){
  				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
  			}
  		});
  	});
        
        $("#side a").on("click", function(){
			var target = "";
			target = $(this).prop('class');
			targetHref = target.slice(-6);
			$(".rankList").addClass("d-none");
			$(targetHref).removeClass("d-none");
			$("#side a").parent().removeClass("text-primary");
			$(this).parent().addClass("text-primary");
			
		})
        </script>
</body>

</html>