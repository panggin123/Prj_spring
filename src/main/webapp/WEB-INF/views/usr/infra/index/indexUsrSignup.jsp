<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>DarkPan - Bootstrap 5 Admin Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet"> 
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/resources/css/adminXdm/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/css/adminXdm/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/css/adminXdm/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/resources/css/adminXdm/style.css" rel="stylesheet">
    <link href="../../../../../resources/css/indexUsrLogin/style_loginUp.css" rel="stylesheet" >
</head>

<body>
    <div class="container-fluid position-relative d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sign Up Start -->
        <div class="container-fluid">
            <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;" id="signUp_back">
                <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
                    <div class="bg-secondary rounded p-4 p-sm-5 my-4 mx-3" id="signUp_sback">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <h3>회원가입</h3>
                        </div>
                        <form name="form" method="post">
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="name" name="name" value="<c:out value= "${item.name}"/>">
                            <label for="floatingText">이름</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="email" name="email"value="<c:out value= "${item.email}"/>" >
                            <label for="floatingInput">이메일</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="text" class="form-control" id="id" name="id" value="<c:out value= "${item.id}"/>" >
                            <label for="floatingPassword">아이디</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="password" class="form-control" id="pass" name="pass"value="<c:out value= "${item.pass}"/>"  >
                            <label for="floatingPassword">비밀번호</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="text" class="form-control" id="adderss" name="adderss" value="<c:out value= "${item.adderss}"/>">
                            <label for="floatingPassword">주소</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="text" class="form-control" id="tel" name="tel" value="<c:out value= "${item.tel}"/>" >
                            <label for="floatingPassword">전화번호</label>
                        </div>

                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check">
                                <label class="form-check-label" for="exampleCheck1">비밀번호 확인</label>
                            </div>
                            <a href="">비밀번호 찾기</a>
                        </div>
                        <button type="button" class="btn btn-primary py-3 w-100 mb-4" id="btninsert">회원가입</button>
                        <p class="text-center mb-0">이미 계정이 있습니까?<a href="">로그인</a></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Sign Up End -->
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/adminXdm/chart.min.js"></script>
    <script src="/resources/js/adminXdm/easing.min.js"></script>
    <script src="/resources/js/adminXdm/waypoints.min.js"></script>
    <script src="/resources/js/adminXdm/owl.carousel.min.js"></script>
    <script src="/resources/js/adminXdm/js/moment.min.js"></script>
    <script src="/resources/js/adminXdm/moment-timezone.min.js"></script>
    <script src="/resources/js/adminXdm/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="/resources/js/adminXdm/main.js"></script>
    <script src="/resources/js/validation/validation.js"></script>
	<script type="text/javascript">

	var objname = $("#name");
	var objemail = $("#email");
	var objid = $("#id");
	var objpass = $("#pass");
	var objadderss = $("#adderss");
	var objtel = $("#tel");

	validationinsert = function(){
 		if(check(objname) == false) return false;
 		if(checkemail(objemail) == false) return false;
 		if(checkid(objid) == false) return false;
 		if(checkpass(objpass) == false) return false;
 		if(checkadderss(objadderss) == false) return false;
 		if(checktel(objtel) == false) return false;
	}	
 	$("#btninsert").on("click", function() {
 		if(validationinsert() == false) return false;
				$("form[name=form]").attr("action","/memberinsertbtn").submit();
		}); 

 	</script>
 	</body>
</html>