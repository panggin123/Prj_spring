<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Log In / Sign Up - pure css - #12</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://unicons.iconscout.com/release/v2.1.9/css/unicons.css'><link rel="stylesheet" href="/resources/css/indexUsrLogin/style_login.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"><!-- 부트스트렙 아이콘 -->

</head>
<body>
<!-- partial:index.partial.html -->
<a href="../startbootstrap-agency-gh-pages/index.html" class="logo"  id="back_house">
	<i class="bi bi-house-fill"></i>
	</a>

	<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<h6 class="mb-0 pb-3"><span>로그인 </span><a href="indexUsrSignup"><span>회원가입</span></a></h6>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front">
									<div class="center-wrap">
									 <form name="form" method="post">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">로그인</h4>
											<div class="form-group">
												<input type="text" name="id" class="form-style" placeholder="아이디 입력해주세요" id="id" autocomplete="off" value= "usr12345">
												<i class="input-icon uil uil-at"></i>
											</div>	
											<div class="form-group mt-2">
												<input type="password" name="pass" class="form-style" placeholder="비밀번호를 입력해주세요" id="pass" autocomplete="off" value= "usr12345">
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											<button type="button" class= "btn mt-4" id="btn">로그인</button>                            				
											<p class="mb-0 mt-4 text-center"><a href="#0" class="link">비밀번호 찾기</a></p>
				      					</div>
				      					</form>
			      					</div>
			      				</div>
			      			</div>
			      		</div>
			      	</div>
		      	</div>
	      	</div>
	    </div>
	</div>
<!-- partial -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

    <script src="/resources/js/adminXdm/main.js"></script>
    <script src="/resources/js/validation/validation.js"></script>
	<script type="text/javascript">
/* 	var objemail = $("#email");
	var objpass = $("#pass");
	
	validationinsert = function(){
		if(checkemail(objemail) == false) return false;
		if(checkpass(objpass) == false) return false;
	}
 	$("#btn").on("click", function() {
 		if(validationinsert() == false) return false;
				$("form[name=form]").attr("action","/indexUsrView").submit();
		});  */
		
 	 $("#btn").on("click", function(){
	     		
	     		if(validation() == false) return false;
	     		
	     		$.ajax({
	     			async: true 
	     			,cache: false
	     			,type: "post"
	     			// ,dataType:"json" //
	     			,url: "/loginProc"
	     			// ,data : $("#loginView").serialize() //
	     			,data : { "id" : $("#id").val(),
	     				"pass" : $("#pass").val()}
	     			,success: function(response) {
	     				if(response.rt == "success") {
	     					alert(response.rtMember.name);
	     					location.href = "/indexUsrView";
	     				} else {
	     					alert("그런 회원 없습니다.");
	     					$("#pass").val("");
	     					$("#pass").focus();
	     				}
	     			}
	     			,error : function(jqXHR, textStatus, errorThrown){
	     				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	     			}
	     		});
	     	});


	     	validation = function() {
	     		// if(!checkNull($("#id"), $.trim($("#id").val()), "아이디를 입력해 주세요!")) return false;
	     		// if(!checkNull($("#pass"), $.trim($("#pass").val()), "비밀번호를 입력해 주세요!")) return false;
	     	} 

	</script>
</body>
</html>
