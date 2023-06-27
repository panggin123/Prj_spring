<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form name="form" method="post">
	<input type="text" name="seq" id ="seq" realonly value="<c:out value="${item.seq }"/>">
	<input type="text" name="name" id ="name" value="<c:out value="${item.name}"/>">
	<button type="button" id="btnDelete">삭제</button>
	<button type="button" id="btnUelete">수정</button>
	<button type="button" id="btn">등록</button>
</form>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$("#btnUelete").on("click",function(){
		$("form[name=form]").attr("action","/codeGroupUpdate").submit();
	})
		
	$("#btnDelete").on("click",function(){
		$("form[name=form]").attr("action","/codeGroupDelete").submit();
	})
	
	$("#btn").on("click",function(){
		$("form[name=form]").attr("action","/codeGroupinsert").submit();
	})
</script>