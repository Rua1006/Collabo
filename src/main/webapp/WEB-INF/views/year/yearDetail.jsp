<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ticket Infomation_yearInfo</title>
    <link rel="stylesheet" href="${path1 }/include/foundation.css">
<link rel="stylesheet" href="${path1 }/include/app.css">
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
    <style>
    * { margin: 0; padding: 0; }
	body, html { width:100%; }
	ul { list-style:none; }
	a { text-decoration: none; }

    </style>
</head>
<body>
<header id="header">
    <!-- 헤더 부분 인클루드 -->
    <jsp:include page="../include/header.jsp"></jsp:include>
</header>
<div class="content" id="page2">
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="${path1 }/">Home</a></li>
        <li class="breadcrumb-item"><a href="#">이용요금 안내</a></li>
        <li class="breadcrumb-item active" aria-current="page">연간이용권</li>
    </ol>
</nav>
    <h1>연간이용권</h1>
    <div class="btn-group btn-group-toggle" data-toggle="buttons">
	  <label class="btn btn-secondary">
	    <input value="${path1 }/charge/yearInfo.jsp#page1" type="radio" name="options" id="option1" class="sel"> 권종별 기본가격
	  </label>
	  <label class="btn btn-secondary active">
	    <input value="${path1 }/GetYearListCtrl.do" type="radio" name="options" id="option2" class="sel" checked> 할인정보
	  </label>
	  <label class="btn btn-secondary">
	    <input value="${path1 }/charge/yearInfo.jsp#page3" type="radio" name="options" id="option3" class="sel"> 특별혜택
	  </label>
	</div>
    <section class="page">
    	<div class="page_wrap">
			<div class="con_wrap">
			<h2 class="sub_tit">${dto.title }</h2>
			    <table class="table">
					<thead>
						<tr>
						    <th scope="col" colspan="2">구분</th>
						    <th scope="col">정상가</th>
						    <th scope="col">우대가</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">레드권</th>
							<td></td>
							<td>300,000원</td>
							<td>${dto.ydisA }원</td>
						</tr>
						<tr>
							<th scope="row" rowspan="4">블루권</th>
							<td>어른</td>
							<td>250,000원</td>
							<td>${dto.ydisB }원</td>
						</tr>
						<tr>
							<td>어린이</td>
							<td>180,000원</td>
							<td>${dto.ydisC }원</td>
						</tr>
						<tr>
							<td>시니어</td>
							<td>170,000원</td>
							<td>${dto.ydisD }원</td>
						</tr>
						<tr>
							<td>유아</td>
							<td>110,000원</td>
							<td>${dto.ydisE }원</td>
						</tr>
					</tbody>
				</table>
				<ul class="roundDiv">
					<li>
						<p>기간</p>
						<p>${dto.period }</p>
					</li>
					<li>
						<p>대상</p>
						<p>${dto.target }</p>
					</li>
					<li>
						<p>이용방법</p>
						<p>${dto.caution }</p>
					</li>
				</ul>
				<div class="buttons">
					<a href="${path1 }/GetYearListCtrl.do" class="button is-info">목록</a>
				  <!--	<c:if test='${sid.equals("admin") }'>	-->
				  	<a href="${path1 }/DeleteYearCtrl.do?no=${dto.no }" class="button is-danger">삭제</a>
			  		<a href="${path1 }/ModifyYearCtrl.do?no=${dto.no }" class="button is-warning">수정</a>
				  <!--	</c:if>	-->
				</div>
			</div>
		</div>
	</section>
</div>
<script src="${path1 }/include/jquery.js"></script>
<script src="${path1 }/include/what-input.js"></script>
<script src="${path1 }/include/foundation.js"></script>
<script src="${path1 }/include/app.js"></script>
<footer id="footer" class="footer-nav row expanded collapse">
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
</body>
</html>