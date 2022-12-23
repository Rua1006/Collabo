<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>티켓</title>
    <style>
        .content {height: 100vh;}
        .table_form {width: 80%; margin: 0 auto;}
        .h1 {margin-top: 100px;}
        img {border: none; vertical-align: top; margin: 0; padding: 0;}
        .wrap {height: auto; min-height: 100%;}
        .wrap:after {content: ""; display: block; clear: both;}

        .container { clear: both; width: 1200px; margin:20px auto;}
        .container:after { content:""; display: block; clear: both;}
        .card {width: 550px; float: left; border: none;}
        .card-img {position: relative;}
        .text-white {display: block; font-size: 30px; text-align: center; margin-top: 640px; font-weight: 600;}
        a:hover {text-decoration: none;}
    </style>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<header id="header">
    <!-- 헤더 부분 인클루드 -->
    <jsp:include page="../include/header.jsp"></jsp:include>
</header>
<div class="container container-fluid">
    <div class="card bg-transparent">
        <img src="${path1 }/resources/img/ticket_left.png" class="card-img" alt="일반예매">
        <div class="card-img-overlay">
            <a class="text-white" href="${path1}/ticket/ticketOptionNomal.do" role="button" >일반예매
                <svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-arrow-right-circle-fill" viewBox="0 0 16 16">
                    <path d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
                </svg>
            </a>
        </div>
    </div>
    <div class="card">
        <img src="${path1 }/resources/img/ticket_right.png" class="card-img" alt="매직패스예매">
        <div class="card-img-overlay">
            <a class="text-white" href="${path1}/ticket/ticketOptionPass.do" role="button">매직패스예매
                <svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-arrow-right-circle-fill" viewBox="0 0 16 16">
                    <path d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
                </svg>
            </a>
        </div>
    </div>
</div>
</body>
<footer id="footer" class="footer-nav row expanded collapse">
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
</html>