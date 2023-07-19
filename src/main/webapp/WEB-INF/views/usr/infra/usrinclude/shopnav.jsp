<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top">start</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <li class="nav-item"><a class="nav-link" href="indexUsrView">카테고리</a></li>
                        <li class="nav-item"><a class="nav-link" href="indexUsrShop">상품</a></li>
                        <li class="nav-item"><a class="nav-link" href="indexUsrCart"><i class="bi bi-cart-fill"></i></a></li>
                        <li class="nav-item"><a class="nav-link" href="indexUsrLogin">${sessionId }</a></li>
                        <c:choose>
                        	<c:when test="${not empty sessionId}">
                        		<li class="nav-item"><a class="nav-link" id="logout">로그아웃</a></li>
                        	</c:when>
                        	<c:otherwise>
                        		<li class="nav-item"><a class="nav-link" href="indexUsrLogin">로그인</a></li>
                        	</c:otherwise>
                        </c:choose>
                    </ul>
                </div>
            </div>
        </nav>