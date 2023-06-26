<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">


<form name="formList" method="post">
	<select name="shOption">
		<option value="0">--선택해주세요--</option>
		<option value="1">이름</option>
		<option value="2">정보</option>
	</select>
	
	<input type="text" name="shKeyword">
	
	<button type="button" id="button"><i class="bi bi-search"></i></button>
</form>

<br>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise><!-- ${list} 자바에서 넘겨준 객체 이름 --><!-- var="list" jstl 블럭에서 사용할 변수 이름 -->
		<c:forEach items="${list}" var="list" varStatus="status">
			<c:out value="${list.seq }"></c:out>
			<c:out value="${list.name }"></c:out>><br>
		</c:forEach>
	</c:otherwise>
</c:choose>	 

<script>



$("#button").on("click",function(){
	// 자기 자신을 다시 한번 호출 해 준다.
	$("form[name=formList]").attr("action","/codeGroupList").submit();
	//alert("asdfasdf");
	
});
</script>