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
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
 
    <!-- Css Styles -->
    <link rel="stylesheet" href="/resources/css/shop/cssShop/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/style.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/styles.css">
    <link rel="stylesheet" href="/resources/css/shop/styles1.css">
    
    
    

</head>

<body>
   <%@include file="../usrinclude/shopnav.jsp"%>

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" id="visual_subHeader">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                       <a href="../startbootstrap-agency-gh-pages/index.html" style="text-decoration: none;"><h2>장바구니</h2></a>
                        <div class="breadcrumb__option">  
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product" style="width:14%;">상품들</th>
                                    <th>상품명</th>
                                    <th>가격</th>
                                    <th>수량</th>
                                    <th>합계</th>
                                    <th></th>
                                </tr>
                            </thead>
                           <tbody>
							    <tr>
							        <td class="shoping__cart__item">
							            <img src="/resources/img/assets/img/discount/car1.png" alt="">
							        </td>
							        <td class="shoping__cart__productName">
							            <h3><c:out value="${product.productName}"></c:out></h3>
							        </td>
							        <td class="shoping__cart__price" id="price">
							            <h3><span id="formattedPrice"><c:out value="${product.productPrice}"></c:out></span></h3>
							        </td>
							        <td class="shoping__cart__quantity">
							            <div class="quantity">
							                <div class="pro-qty product" style="padding: 0;">
				                                	<span class ="dec qtybtn" id="decrease" >-</span>
				                                    <input type="text" value="1" id="quantity">
													<span class ="inc qtybtn" id="increase">+</span>
			                                </div>
							            </div>
							        </td>
							        <td class="shoping__cart__total" id="totalPrice">
							            <span id="formattedTotalPrice"><c:out value="${product.productPrice * 2}"></c:out></span>
							        </td>
							        <td class="shoping__cart__item__close">
							            <span id="cancelButton"><i class="bi bi-x-circle"></i></span>
							        </td>
							    </tr>
							</tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="indexUsrShop" class="primary-btn cart-btn">계속 쇼핑하기</a>
                        <a href="#" class="primary-btn cart-btn cart-btn-right"><i class="bi bi-cart4" id="cart_01"></i></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount">
                            <a style="font-size: 20px;font-weight: bold;" >우편물 주소</a>
                            <form action="#">
                                <input id="address_kakao" name="address" type="text" placeholder="배송지를 입력해주세요" style="float: left;width: 50%;margin-bottom: 10px;margin-top: 10px;color: black;" >
                                <input type="text"  name="address_detail" placeholder="상세주소를 입력해주세요"style="float: left;width: 50%">
                                <button type="button" class="site-btn" style="margin-top: 10px;">확인</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>총 결제 금액</h5>
                        <ul id="totalPrice">
                            <li>총 금액 <span id="formattedTotalPrice2"><c:out value="${product.productPrice}"></c:out></span></li>
                        </ul>
                        <a href="#" class="primary-btn" style="background-color: black;" id="payButton">결제하기</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
         <%@include file="../usrinclude/footer.jsp"%>
    <!-- Shoping Cart Section End -->

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
    <!--                          kakaoapi S                          -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!--                          kakaoapi E                          -->
    
    <script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function() {
        const decreaseButton = document.getElementById("decrease");  // 수량 감소
        const increaseButton = document.getElementById("increase"); //  수량 증가
        const quantityInput = document.getElementById("quantity"); // 수량 갯수
        const priceElement = document.getElementById("price"); // 가격
        const totalPriceElement = document.getElementById("totalPrice"); //토탈금액
        const totalPriceElement2 = document.getElementById("formattedTotalPrice2"); //토탈금액

        const productPrice = parseFloat(priceElement.textContent.replace("원", "").replace(",", "")); // 상품 가격

        let quantity = 1; // 초기 수량
        updateTotalPrice();

        decreaseButton.addEventListener("click", function() {
            if (quantity > 1) {
                quantity--;
                quantityInput.value = quantity;
                updateTotalPrice();
            }
        });

        increaseButton.addEventListener("click", function() {
            quantity++;
            quantityInput.value = quantity;
            updateTotalPrice();
        });

        function updateTotalPrice() {
            totalPriceElement.textContent = numberWithCommas(productPrice * quantity) + "원";
            totalPriceElement2.textContent = numberWithCommas(productPrice * quantity) + "원";
        }

        // 숫자에 쉼표 추가하는 함수
        function numberWithCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }
    });
 //------------------------------------------------ 단위마다 쉼표 추가하는 함수------------------------------------------------
    // 페이지 로딩 후 실행
    document.addEventListener("DOMContentLoaded", function() {
        const formattedPriceElement = document.getElementById("formattedPrice");
        const formattedTotalPriceElement = document.getElementById("formattedTotalPrice");
        const formattedTotalPriceElement2 = document.getElementById("formattedTotalPrice2");
        
        // 천 단위 쉼표 추가하는 함수
        function addCommasToPrice(price) {
            return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }
        
        // 가격 엘리먼트에 천 단위 쉼표 추가
        const originalPrice = parseFloat(formattedPriceElement.textContent.replace(/,/g, ""));
        formattedPriceElement.textContent = addCommasToPrice(originalPrice);
        
        // 총 가격 엘리먼트에 천 단위 쉼표 추가
        const totalPrice = parseFloat(formattedTotalPriceElement.textContent.replace(/,/g, ""));
        formattedTotalPriceElement.textContent = addCommasToPrice(totalPrice);
        
        const totalPrice2 = parseFloat(formattedTotalPriceElement2.textContent.replace(/,/g, ""));
        formattedTotalPriceElement2.textContent = addCommasToPrice(totalPrice2);
    });
    //------------------------------------------------ 결제 ------------------------------------------------
    document.addEventListener('DOMContentLoaded', function () {
    const payButton = document.getElementById('payButton');
    const formattedTotalPriceElement = document.getElementById('formattedTotalPrice');
    
    // 결제 버튼 클릭 시
    payButton.addEventListener('click', function () {
        const totalPrice = parseFloat(formattedTotalPriceElement.textContent);
        // 여기서 실제 결제 처리를 수행하는 코드를 추가해야 합니다.
        // 결제 성공 또는 실패에 따른 처리 로직을 구현해야 합니다.
        // 외부 결제 서비스 API를 호출하거나, 테스트용으로 가상의 결제 과정을 시뮬레이션할 수 있습니다.
        // 예시: 실제 결제 서비스를 사용하는 경우, 해당 서비스의 API 문서를 참고하여 구현
        if (Math.random() < 0.5) {
            alert('결제가 완료되었습니다.');
        } else {
            alert('결제가 실패했습니다.');
        }
    });
});
//------------------------------------------------ 카카오api 주소 ------------------------------------------------    
    window.onload = function(){
        document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
            //카카오 지도 발생
            new daum.Postcode({
                oncomplete: function(data) { //선택시 입력값 세팅
                    document.getElementById("address_kakao").value = data.address; // 주소 넣기
                    document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
                }
            }).open();
        });
    }
	</script>
</body>

</html>