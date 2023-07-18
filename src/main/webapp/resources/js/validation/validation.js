/*check = function(parem){
	  if($.trim($("#name").val()) == "" || $.trim($("#name").val()) == null){
			alert("값을 입력해 주세요.");
			$("#name").focus();
			return false;
		} else {
		}  
		
//		공백없는 숫자와 대소문자
		myRe =  /^[ㄱ-ㅎ가-힣0-9_-]{2,10}$/;  // 이름
		myTe = /\d{2,3}-\d{3,4}-\d{4}/g;  // 전화번호
		myId =  /^[a-z0-9_-]{8,20}$/; // id
		
		
		 if(myRe.test($.trim($("parem").val())) == false){
		 	alert("공백없는 숫자와 대소문자만 입력 가능합니다.");
		 	$("#name").focus();
		 	return false;
		 }else {
			
		 }*/
		 
 check = function(obj){
				
		myRe =  /^[ㄱ-ㅎ가-힣0-9_-]{2,10}$/;  // 이름
		 if(myRe.test($.trim(obj.val())) == false){
		 	alert("이름을 정확하게 입력해주세요");
		 	obj.focus();
		 	return false;
		}else {
		// by pass
		}
		}

 checkid = function(obj){

		
		myId = /^[A-Za-z0-9]{8,20}$/; // id
		
		 if(myId.test(obj.val()) == false){
 					
 					obj.siblings(".room").remove();
 					obj.parent().append('<input type="text" class="form-control room mt-1"  style=" vertical-align:top"  value="중복 아이디입니다." >');
 					obj.focus();
		 	return false;
		}else {
				 	obj.siblings(".room").remove();
 					obj.parent().append('<input type="text" class="form-control room mt-1 " style=" vertical-align:top"  value="사용가능 합니다." >');
		// by pass
		}
}
 checkpass = function(obj){
		
		
			myPs =		/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,20}$/;
/*		myPs = /(?=.*[0-9])(?=.*[a-z])(?=.*\W)(?=\S+$).{8,20}/; // 비밀번호*/
		 if(myPs.test($.trim(obj.val())) == false){
		 	alert("비밀번호를 정확하게 입력해주세요.");
		 	obj.focus();
		 	return false;
		}else {
		// by pass
		}
}
 checkemail = function(obj){
		
		
		myEm = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+$/; //이메일
		
		 if(myEm.test($.trim(obj.val())) == false){
		 	alert("이메일 정확하게 입력해주세요.");
		 	obj.focus();
		 	return false;
		}else {
		// by pass
		}
}
 checkadderss = function(obj){

		
				myAd = /^[ㄱ-ㅎ가-힣A-Z0-9]*$/; // 주소		
		
		 if(myAd.test($.trim(obj.val())) == false){
		 	alert("주소를 정확하게 입력해주세요.");
		 	obj.focus();
		 	return false;
		}else {
		}
}
 checktel = function(obj){

		
		myTe = /^\d{2,3}-?\d{3,4}-?\d{4}$/;  // 전화번호
		
		 if(myTe.test($.trim(obj.val())) == false){
		 	alert("전화번호 정확하게 입력해주세요.");
		 	obj.focus();
		 	return false;
		}else {
		// by pass
		}
}
