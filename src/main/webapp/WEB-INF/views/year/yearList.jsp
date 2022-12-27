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
        <li class="breadcrumb-item"><a href="${path2 }/">Home</a></li>
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
			<h2 class="sub_tit">다양한 할인 혜택으로 더 저렴한 연간이용권을 이용해보세요!</h2>
			    <table class="table">
					<thead>
						<tr>
						    <th scope="col">번호</th>
						    <th scope="col">할인 정보</th>
						    <th scope="col">할인 기간</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${yearList }" var="dto" varStatus="status">
						<tr>
							<th scope="row">${status.count }</th>
							<td><a href="${path1 }/year/detail.do?no=${dto.no }">${dto.title }</a></td>
							<td>${dto.period }</td>
						</tr>
					</c:forEach>
					<c:if test="${empty list }">
					    <tr>
					    	<td colspan="3">현재 할인 혜택이 없습니다.</td>
					    </tr>
					</c:if>
					</tbody>
				</table>
				<div class="buttons">
				  <!--	<c:if test='${sid.equals("admin") }'>	-->
				  	<a href="${path1 }/year/insert.do" class="button is-success">글 등록</a>
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