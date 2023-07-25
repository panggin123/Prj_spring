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
    <link href="/resources/css/adminXdm/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/css/adminXdm/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/css/adminXdm/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/resources/css/adminXdm/style.css" rel="stylesheet">
	<link href="/resources/css/adminXdm/footer_bot.css" rel="stylesheet">

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
			<%@include file="../include/includeSideBar.jsp"%>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
           <%@include file="../include/includeNavbar.jsp"%>
            <!-- Navbar End -->


            <!-- Sale & Revenue Start -->
          
            <!-- Sale & Revenue End -->


            <!-- Sales Chart Start -->
          
            <!-- Sales Chart End -->



            <!-- Recent Sales Start -->
             <div class="container-fluid pt-4 px-4">
                <div class="row g-4" id="Email_si">
                    <div class="col-sm-12 col-xl-12">
                    <!-- <div class="col-sm-12 col-xl-6"> -->
                        <div class="bg-secondary rounded h-100 p-4">
                            <h6 class="mb-4">Basic Form</h6>
                            <form name="form" method="post">
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">seq</label>
                                    <input type="email" class="form-control" id="seq" name="seq" aria-describedby="emailHelp"readonly value="<c:out value="${item.seq }"/>">
                                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">defaultNy</label>
                                    <input type="text" class="form-control" id="defaultNy" name="defaultNy" value="<c:out value= "${item.defaultNy}"/>">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">category</label>
                                    <input type="text" class="form-control" id="category" name="category" value="<c:out value="${item.category}"/>">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">productName</label>
                                    <input type="text" class="form-control" id="productName" name="productName" value="<c:out value="${item.productName}"/>">
                                </div>
                                 <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">productNumber</label>
                                    <input type="text" class="form-control" id="productNumber" name="productNumber" value="<c:out value= "${item.productNumber}"/>">
                                </div>
                                 <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">productPrice</label>
                                    <input type="text" class="form-control" id="productPrice" name="productPrice" value="<c:out value= "${item.productPrice}"/>">
                                </div>
                                 <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">productStock</label>
                                    <input type="text" class="form-control" id="productStock" name="productStock" value="<c:out value= "${item.productStock}"/>">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">productDesc</label>
                                    <input type="text" class="form-control" id="productDesc" name="productDesc" value="<c:out value= "${item.productDesc}"/>">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">productDate</label>
                                    <input type="text" class="form-control" id="productDate" name="productDate" value="<c:out value= "${item.productDate}"/>">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">productHits</label>
                                    <input type="text" class="form-control" id="productHits" name="productHits" value="<c:out value= "${item.productHits}"/>">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">favorites</label>
                                    <input type="text" class="form-control" id="favorites" name="favorites" value="<c:out value= "${item.favorites}"/>">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">sale</label>
                                    <input type="text" class="form-control" id="sale" name="sale" value="<c:out value= "${item.sale}"/>">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">memberMembership_seq</label>
                                    <input type="text" class="form-control" id="memberMembership_seq" name="memberMembership_seq" value="<c:out value= "${item.memberMembership_seq}"/>">
                                </div>
                              
                                <div class="col-sm-6 mt-3 mt-sm-0" style="float:left;">
						        	<c:set var="type" value="2"/>		<!-- #-> -->
						        	<c:set var="name" value="uploadImg"/>		<!-- #-> -->
						        	<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
						        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
						        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
						        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
						            <label for="uploadImg" class="form-label input-file-button border-danger" >이미지첨부</label>
						 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
									<div id="<c:out value="${name }"/>Preview" class="addScroll bg-warning" style="height:200px; width:95%; margin-bottom:20px;">
										<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
											<c:if test="${listUploaded.type eq type }">
												<div id="imgDiv_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">
													<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">
													<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>
												</div>
											</c:if>
										</c:forEach>
									</div>
						        </div>
								<div class="col-sm-6 mt-3 mt-sm-0" style="float:left;">
						        	<c:set var="type" value="3"/>		<!-- #-> -->
						        	<c:set var="name" value="uploadFile"/>		<!-- #-> -->
						        	<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
						        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
						        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
						        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>   	
									<label for="uploadFile" class="form-label input-file-button border-danger" >파일첨부</label>
									<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 2, 0, 0, 2);" >
									<div class="addScroll bg-warning" style="height:200px;width:95%; margin-bottom:20px;">
										<ul id="<c:out value="${name }"/>Preview" class="list-group">
											<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
												<c:if test="${listUploaded.type eq type }">
													<li id="li_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" class="list-group-item d-flex justify-content-between align-items-center">
													<a href="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" download="<c:out value="${listUploaded.originalName }"/>" class="text-decoration-none"><c:out value="${listUploaded.originalName }"/></a>
													<span class="badge bg-danger rounded-pill" onClick="delLi('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>
													</li>
												</c:if>
											</c:forEach>				
										</ul>
									</div>
						        </div>
						          <a href="productList" class="btn btn-primary" id="btnList" style="float: left;"><i class="bi bi-list"></i></a>
								<button type="button" class="btn btn-primary"  id="btninsertbtn" style="float: right; margin-right:50%">추가</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>



            <!-- Footer Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="bg-secondary rounded-top p-4">
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
 </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/adminXdm/chart.min.js"></script>
    <script src="/resources/js/adminXdm/easing.min.js"></script>
    <script src="/resources/js/adminXdm/waypoints.min.js"></script>
    <script src="/resources/js/adminXdm/owl.carousel.min.js"></script>
    <script src="/resources/js/adminXdm/moment.min.js"></script>
    <script src="/resources/js/adminXdm/moment-timezone.min.js"></script>
    <script src="/resources/js/adminXdm/tempusdominus-bootstrap-4.min.js"></script>


    <!-- Template Javascript -->
    <script src="/resources/js/adminXdm/main.js"></script>
<script type="text/javascript">


$("#btninsertbtn").on("click",function(){
				$("form[name=form]").attr("action","/productinsertbtn").submit();
	
});

upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
	
//	objName 과 seq 는 jsp 내에서 유일 하여야 함.
//	memberProfileImage: 1
//	memberImage: 2
//	memberFile : 3

//	uiType: 1 => 이미지형
//	uiType: 2 => 파일형
//	uiType: 3 => 프로필형

	var files = $("#" + objName +"")[0].files;
	var filePreview = $("#" + objName +"Preview");
	var numbering = [];
	var maxNumber = 0;
	
	if(uiType == 1) {
		var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
		var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
		
		for(var i=0; i<tagIds.length; i++){
			var tagId = tagIds[i].getAttribute("id").split("_");
			numbering.push(tagId[2]);
		}
		
		if(uploadedFilesCount > 0){
			numbering.sort();
			maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
		}
	} else if(uiType == 2){
		var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
		var tagIds = document.querySelectorAll("#" + objName + "Preview > li");

		for(var i=0; i<tagIds.length; i++){
			var tagId = tagIds[i].getAttribute("id").split("_");
			numbering.push(tagId[2]);
		}
		
		if(uploadedFilesCount > 0){
			numbering.sort();
			maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
		}
	} else {
		// by pass
	}
	
	$("#" + objName + "MaxNumber").val(maxNumber);

	var totalFileSize = 0;
	var filesCount = files.length;
	var filesArray = [];
	
	allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
	allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
	allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
	
	if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
	
	for (var i=0; i<filesCount; i++) {
		if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
		if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }

		totalFileSize += files[i].size;
		
		filesArray.push(files[i]);
	}

	if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
	
	if (uiType == 1) {
		for (var i=0; i<filesArray.length; i++) {
			var file = filesArray[i];

			var picReader = new FileReader();
		    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
		    picReader.readAsDataURL(file);
		}			
	} else if(uiType == 2) {
		for (var i = 0 ; i < filesCount ; i++) {
			addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
		}
	} else if (uiType == 3) {
		var fileReader = new FileReader();
		 fileReader.onload = function () {
			 $("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */
		 }	
		 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
	} else {
		return false;
	}
	return false;
}


addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
	return function(event) {
		var imageFile = event.target;
		var sort = parseInt(maxNumber) + i;

		var divImage = "";
		divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
		divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
		divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
		divImage += '</div> ';
		
		filePreview.append(divImage);
    };
}


delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
	
	$("#imgDiv_"+type+"_"+sort).remove();
	
	var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
	var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

	if(objDeleteSeq.val() == "") {
		objDeleteSeq.val(deleteSeq);
	} else {
		objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
	}
	
	if(objDeletePathFile.val() == "") {
		objDeletePathFile.val(pathFile);
	} else {
		objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
	}
}


addUploadLi = function (objName, type, i, name, filePreview, maxNumber){

	var sort = parseInt(maxNumber) + i;
	
	var li ="";
	li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
	li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
	li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
	li += name;
	li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
	li +='</li>';
	
	filePreview.append(li);
}


delLi = function(objName, type, sort, deleteSeq, pathFile) {
	
	$("#li_"+type+"_"+sort).remove();

	var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
	var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

	if(objDeleteSeq.val() == "") {
		objDeleteSeq.val(deleteSeq);
	} else {
		objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
	}
	
	if(objDeletePathFile.val() == "") {
		objDeletePathFile.val(pathFile);
	} else {
		objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
	}
}

openViewer = function (type, sort) {
	var str = '<c:set var="tmp" value="'+ type +'"/>';
	$("#modalImgViewer").append(str);
	$("#modalImgViewer").modal("show");
}
</script>
</body>

</html>