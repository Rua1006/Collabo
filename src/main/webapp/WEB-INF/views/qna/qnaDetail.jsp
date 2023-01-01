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
<title>질문 및 답변 상세 내용</title>
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
			<tbody>
				<tr>
					<th>구분</th>
					<td>
					<c:if test="${dto.lev eq 0}">
						<span>질문</span>
					</c:if>	
					<c:if test="${dto.lev ne 0}">
						<span>답변</span>
					</c:if>
					</td>
				</tr>
				<tr>
					<th>공개여부</th>
					<td>
					<c:if test='${dto.sec eq "Y" }'>
						<span>비공개</span>
					</c:if>	
					<c:if test='${dto.sec eq "N" }'>
						<span>공개</span>
					</c:if>
					</td>
				</tr>
				<tr>
					<th>번호</th>
					<td>${dto.qno }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>${dto.title }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>${dto.content }</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${dto.author }</td>
				</tr>
				<tr>
					<th>작성일시</th>
					<td>${dto.regdate }</td>
				</tr>
				<tr>
					<th>읽은 횟수</th>
					<td>${dto.hit }</td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<a href="${path1 }/qna/list" class="button is-info">목록</a>
			<c:if test='${sid eq "admin" }'>
				<c:set var="lev" value="${dto.lev }"/>
				<c:if test="${dto.lev eq 0 }">
					<a href="${path1 }/qna/reInsert?qno=${dto.qno }" class="button is-primary">답변 하기</a>
					<a href="${path1 }/qna/qnaEdit?qno=${dto.qno }" class="button is-info">글 수정</a>
					<a href="${path1 }/qna/delete.do?parno=${dto.qno }" class="button is-danger">글 삭제</a>
				</c:if>	
				<c:if test="${dto.lev eq 1 }">
					<a href="${path1 }/qna/qnaEditqno=${dto.qno }" class="button is-info">답글 수정</a>
					<a href="${path1 }/qna/delete.do?qno=${dto.qno }" class="button is-danger">답글 삭제</a>
				</c:if>	
			</c:if>	
			<c:if test="${sid eq dto.author }">
				<a href="${path1 }/qna/qnaEdit?no=${dto.qno }" class="button is-info">글 수정</a>
				<a href="${path1 }/qna/delete.do?parno=${dto.qno }" class="button is-danger">글 삭제</a>
			</c:if>		
			<c:if test="${sid ne dto.author}">
				<p style="clear:both">글 작성자가 아닙니다.</p>
			</c:if>
			</div>
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