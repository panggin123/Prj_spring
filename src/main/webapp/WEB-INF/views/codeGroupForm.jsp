<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">


<form name="form" method="get">

	
	<input type="text" name="seq" id="seq" value="<c:out value="${item.seq}"/>">
	<input type="text" name="name" id="name" value="<c:out value="${item.name}"/>">
	
	<button type="button" id="button"><i class="bi bi-search"></i></button>
	<button type="button" id="buttonSave">save</button>
	<button type="button" id="btn">delete</button>
</form>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">

$("#button").on("click",function(){
	
	$("form[name=form]").attr("action","/codeGroupinsert").submit();
});

$("#buttonSave").on("click",function(){
	
	$("form[name=form]").attr("action","/codeGroupUpdate").submit();
});

$("#btn").on("click",function(){
	
	$("form[name=form]").attr("action","/codeGroupDelete").submit();
});
</script>