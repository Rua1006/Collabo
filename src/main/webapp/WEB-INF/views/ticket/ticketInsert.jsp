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
    <main role="main" class="container">
        <!-- 상단 티켓예매 안내 타이틀 -->
        <div class="d-flex align-items-center p-3 my-3 bg-light rounded shadow-sm">
            <div class="lh">
                <span class="sub-title">일반티켓예매</span>
            </div>
        </div>
        <form name="frm1" id="frm1" action="${path1 }/ticket/insert.do" method="post">
            <table id="table">
                <tbody>
                <tr>
                    <th style="background-color:#dcdcdc">예매일자</th>
                    <td>
                        <input type="date" name="resdate" id="resdate" placeholder="날짜 선택"required style="width:700px; float:left;">
                    </td>
                </tr>
                <tr>
                    <th style="background-color:#dcdcdc">인원</th>
                    <td>
                        <div class="ten-human">
                            <input type="text" name="personal" id="personal">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" class="submit success button" value="티켓 구매" >
                        <input type="reset" class="reset button" value="취소" >
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
    </main>
</div>
</body>
<footer id="footer" class="footer-nav row expanded collapse">
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
</html>