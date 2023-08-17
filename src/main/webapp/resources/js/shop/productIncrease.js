$(document).ready(function() {
    const $decreaseButton = $('#decrease');
    const $increaseButton = $('#increase');
    const $quantityElement = $('#quantity');
    const $totalElement = $('#total');

    let price = "#totalPrice";
    let quantity = 1;

    $decreaseButton.on('click', function() {
		console.log("asd")
        if (quantity > 1) {
            quantity--;
            updateQuantityAndTotal();
        }
    });

    $increaseButton.on('click', function() {
		console.log("asd")
        quantity++;
        updateQuantityAndTotal();
    });

    function updateQuantityAndTotal() {
        $quantityElement.text(quantity);
        const totalPrice = price * quantity;
        $totalElement.text(totalPrice);
        document.getElementById('totalPrice').innerText = totalPrice + "원";
    }

    updateQuantityAndTotal();
    
	
});




































//// 요소 가져오기
//const decreaseButton = document.getElementById('decrease');
//const increaseButton = document.getElementById('increase');
//const quantityElement = document.getElementById('quantity');
//const totalElement = document.getElementById('total');
//
//// product.productPrice를 가져오는 대신 임의로 설정
//let price = product.productPrice; // 상품 가격
//let quantity = 1; // 상품 수량
//
//// 수량 증감 버튼 클릭 이벤트 리스너 등록
//decreaseButton.addEventListener('click', () => {
//    if (quantity > 1) {
//        quantity--;
//        updateQuantityAndTotal();
//    }
//});
//
//increaseButton.addEventListener('click', () => {
//    quantity++;
//    updateQuantityAndTotal();
//});
//
//// 수량과 총합계 업데이트 함수
//function updateQuantityAndTotal() {
//    if (quantityElement && totalElement) {
//        quantityElement.textContent = quantity;
//        const totalPrice = price * quantity;
//        totalElement.textContent = totalPrice;
//    }
//}
//
//// 초기 업데이트 수행
//updateQuantityAndTotal();