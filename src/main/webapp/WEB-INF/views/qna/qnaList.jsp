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
<title>Qna</title>
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
					<th scope="col"></th>
					<th scope="col">연번</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${qnaList }" var="qna" varStatus="status">
			<tr>
				<td scope="row"><span style="color:transparent">${qna.parno }</span></td>
				<td>
					<c:if test="${qna.lev==0}">
						<span>${qna.qno }</span>
					</c:if>
					<c:if test="${qna.lev==1}">
						<span style="color:white">${qna.qno }</span>
					</c:if>
				</td>
				<td>
				<c:if test="${qna.lev==0}">
					<c:if test='${qna.sec.equals("Y")}'>
						<c:if test='${sid.equals(qna.author) || sid.equals("admin")}'>
							<a href="${path1 }/qna/detail?qno=${qna.qno }">${qna.title }</a>
						</c:if>
						<c:if test='${empty sid }'>
							<span>${qna.title }</span>
						</c:if>	
					</c:if>		
					<c:if test='${qna.sec.equals("N") && not empty sid}'>	
						<a href="${path1 }/qna/detail?qno=${qna.qno }">${qna.title }</a>
					</c:if>		
					<c:if test='${qna.sec.equals("N") && empty sid}'>
						<span>${qna.title }</span>
					</c:if>
				</c:if>
				<c:if test="${qna.lev==1}">
					<c:if test='${qna.sec.equals("Y")}'>
						<c:if test='${sid.equals(qna.author) || sid.equals("admin")}'>
							<a href="${path1 }/qna/detail?qno=${qna.qno }" style="padding-left:60px;">${qna.title }</a>
						</c:if>
						<c:if test='${empty sid }'>
							<span style="padding-left:60px;">${qna.title }</span>				
						</c:if>
					</c:if>
					<c:if test='${qna.sec.equals("N") && not empty sid}'>	
						<a href="${path1 }/qna/detail?qno=${qna.qno }" style="padding-left:60px;">${qna.title }</a>
					</c:if>							
					<c:if test='${qna.sec.equals("N") && empty sid}'>
				 		<span style="padding-left:60px;">${qna.title }</span>
					</c:if>
				</c:if>
				</td>
				<td>${qna.author }</td>
				<td>
					<fmt:parseDate value="${qna.regdate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
		      		<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
		      	</td>
			</tr>
			</c:forEach>	
			</tbody>
		</table>
		<!--<c:if test='${not empty sid}'>-->
		<div class="btn-group">
			<a href="${path1 }/qna/insert" class="btn btn-dark">글 등록</a>
		</div>
		<!--</c:if>-->
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