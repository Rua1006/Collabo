<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="${path1 }/include/foundation.css">
<link rel="stylesheet" href="${path1 }/include/app.css">
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<header id="header">
    <!-- 헤더 부분 인클루드 -->
    <jsp:include page="../include/header.jsp"></jsp:include>
</header>
<div>
	<table>
		<thead>
		    <tr>
		      <th>NO</th>
		      <th>Title</th>
		      <th>REGDATE</th>
		      <th>Visited</th>
		    </tr>
	  	</thead>
		<tbody>
		<c:forEach items="${boardList }" var="board" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td><a href="${path1 }/board/detail.do?bno=${board.bno }">${board.title }</a></td>
				<td>
					<fmt:parseDate value="${board.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
	      			<fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
				</td>
				<td>${board.visited }</td>
			</tr>
		</c:forEach>
		</tbody>	
	</table>
	<%-- <c:if test='${sid eq "admin"}'>  --%> 
      	<div class="button-group">
		  <a class="button" href="${path1 }/board/insert.do">글쓰기</a>
		</div>
	<%-- </c:if> --%>
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