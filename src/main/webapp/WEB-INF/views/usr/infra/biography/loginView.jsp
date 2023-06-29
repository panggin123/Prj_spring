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
<link rel='stylesheet' href='https://unicons.iconscout.com/release/v2.1.9/css/unicons.css'><link rel="stylesheet" href="../../../../../resources/css/style_login.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"><!-- 부트스트렙 아이콘 -->
</head>
<body>
<!-- partial:index.partial.html -->
<a href="../../home.jsp" class="logo"  id="back_house">
	<i class="bi bi-house-fill"></i>
	</a>
	<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<h6 class="mb-0 pb-3"><span>로그인 </span><span>회원가입</span></h6>
			          	<input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
			          	<label for="reg-log"></label>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">로그인</h4>
											<div class="form-group">
												<input type="email" name="logemail" class="form-style" placeholder="이메일을 입력해주세요" id="logemail" autocomplete="off">
												<i class="input-icon uil uil-at"></i>
											</div>	
											<div class="form-group mt-2">
												<input type="password" name="logpass" class="form-style" placeholder="비밀번호를 입력해주세요" id="logpass" autocomplete="off">
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											<a href="indexXdmViewMain" class="btn mt-4">로그인</a>
                            				<p class="mb-0 mt-4 text-center"><a href="#0" class="link">비밀번호 찾기</a></p>
				      					</div>
			      					</div>
			      				</div>
								<div class="card-back">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">회원가입</h4>
											<div class="form-group">
												<input type="text" name="logname" class="form-style" placeholder="이름 입력해주세요" id="logname" autocomplete="off">
												<i class="input-icon uil uil-user"></i>
											</div>	
											<div class="form-group mt-2">
												<input type="email" name="logemail" class="form-style" placeholder="이메일 입력해주세요" id="logemail" autocomplete="off">
												<i class="input-icon uil uil-at"></i>
											</div>	
											<div class="form-group mt-2">
												<input type="password" name="logpass" class="form-style" placeholder="비밀번호 입력해주세요" id="logpass" autocomplete="off">
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											<div class="form-group" id="name_login">
												<input type="text" name="logadderss" class="form-style" placeholder="주소 입력해주세요" id="logadderss" autocomplete="off">
												<i class="bi bi-house-add-fill name_login"></i>
											</div>
											<div class="form-group" id="name_login">
												<input type="tel" name="logtel" class="form-style" placeholder="전화번호 입력해주세요" id="logtel" autocomplete="off">
												<i class="bi bi-telephone-fill name_login"></i>
											</div>
											<a href="#" class="btn mt-4">회원가입</a>
				      					</div>
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
  <script  src="./script.js../"></script>
</body>
</html>
