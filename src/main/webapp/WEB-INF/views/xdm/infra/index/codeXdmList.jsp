<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>DarkPan</title>
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
    <link href="/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/css/admin/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/resources/css/admin/style.css" rel="stylesheet">
 <link href="/resources/css/admin/footer_bot.css" rel="stylesheet">

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


        <!-- Sidebar Start -->
      <%@include file="includeSideBar.jsp"%>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <%@include file="includeNavbar.jsp"%>
            <!-- Navbar End -->


            <!-- Sale & Revenue Start -->
           
            <!-- Sale & Revenue End -->


            <!-- Sales Chart Start -->
           
            <!-- Sales Chart End -->



            <!-- Recent Sales Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="bg-secondary text-center rounded p-4">
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <h6 class="mb-0">Recent Salse</h6>
                        <a href="">Show All</a>
                    </div>
                    <div class="table-responsive">
                    <form name="formList" method="post">
                    	<select name="shOption">
								<option value="0">--선택해주세요--</option>
								<option value="1">이름</option>
								<option value="2">정보</option>
							</select>
							
								<input type="text"   name="seq"  placeholder="seq">
								<input type="text"   name="name" placeholder="name" >
								<button type="button" id="btn" ><i class="bi bi-search"></i></button>
                        <table class="table text-start align-middle table-bordered table-hover mb-0">
                            <thead>
                                <tr class="text-white">
                                    <th scope="col"><input class="form-check-input" type="checkbox"></th>
                                    <th scope="col">seq</th>
                                    <th scope="col">name</th>
                                    <th scope="col">delNy</th>
									<th scope="col">codeGroup_seq</th>
                                </tr>
                            </thead>
                            <tbody>
						        <c:choose>
									<c:when test="${fn:length(list) eq 0}">
										<tr>
									
										</tr>
									</c:when>
									<c:otherwise><!-- ${list} 자바에서 넘겨준 객체 이름 --><!-- var="list" jstl 블럭에서 사용할 변수 이름 -->
											<c:forEach items="${list}" var="list" varStatus="status">
											<tr>
												<td><input class="form-check-input" type="checkbox"></td>
												<td><c:out value="${list.seq}"></c:out></td>
												<td><a href="codeXdmForm?seq=<c:out value="${list.seq}"/>"><c:out value="${list.name}"></c:out></a></td>
												<td><c:out value="${list.delNy}"></c:out></td>
												<td><c:out value="${list.codeGroup_seq}"></c:out><br></td>
											</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>	
                            </tbody>
                        </table>
                        <button type="button" id="btninsert">추가</button>
                        </form>
                    </div>
                </div>
            </div>


            <!-- Footer Start -->
                <div class="bg-secondary rounded-top p-4" id="footer_bot">
                    <div class="row">
                        <div class="col-12 col-sm-6 text-center text-sm-start">
                            &copy; <a href="#">Your Site Name</a>, All Right Reserved. 
                        </div>
                        <div class="col-12 col-sm-6 text-center text-sm-end">
                            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                            Designed By <a href="https://htmlcodex.com">HTML Codex</a>
                            <br>Distributed By: <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
                        </div>
                    </div>
                </div>
            <!-- Footer End -->
        </div>
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/lib/chart/chart.min.js"></script>
    <script src="/resources/lib/easing/easing.min.js"></script>
    <script src="/resources/lib/waypoints/waypoints.min.js"></script>
    <script src="/resources/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="/resources/lib/tempusdominus/js/moment.min.js"></script>
    <script src="/resources/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="/resources/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>


    <!-- Template Javascript -->
    <script src="/resources/js/admin.js"></script>
<script type="text/javascript">
$("#btn").on("click",function(){
	// 자기 자신을 다시 한번 호출 해 준다.
	//alert("asdfasdf");
	$("form[name=formList]").attr("action","/codeXdmForm").submit();
});
$("#btninsert").on("click",function(){
	
	$("form[name=formList]").attr("action","/indexXdmViewInsert").submit();
});


</script>
</body>

</html>
