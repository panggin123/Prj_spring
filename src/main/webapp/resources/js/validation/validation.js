check = function(parem){
	/*  if($.trim($("#name").val()) == "" || $.trim($("#name").val()) == null){
			alert("값을 입력해 주세요.");
			$("#name").focus();
			return false;
		} else {
		}  */
		
//		공백없는 숫자와 대소문자
		myRe =  /^[ㄱ-ㅎ가-힣0-9_-]{2,10}$/;
		
		 if(myRe.test($.trim($("parem").val())) == false){
		 	alert("공백없는 숫자와 대소문자만 입력 가능합니다.");
		 	$("#name").focus();
		 	return false;
		 } else {
			 // by pass
		 }
	}