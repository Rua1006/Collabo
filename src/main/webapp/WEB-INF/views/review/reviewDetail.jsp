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
<title>이용후기 보기</title>
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
<div class="content" id="content">
    <div class="row column text-center">
      <h2 class="h1">이용후기 보기</h2>
      <hr>
      <div class="container">
	      <table id="table1">
	      	<tbody>
	
	      		<tr>
	      			<th style="background-color:#dcdcdc">글 번호</th>
	      			<td>${dto.rno }</td>
	      		</tr>	
	      		<tr>
	      			<th style="background-color:#dcdcdc">글 제목</th>
	      			<td>${dto.title }</td>
	      		</tr>
	      		<tr>
	      			<th style="background-color:#dcdcdc">글 내용</th>
	      			<td><p>${dto.content }</p></td>
	      		</tr>
	      		<tr>
	      			<th style="background-color:#dcdcdc">작성자</th>
	      			<td>${dto.id }</td>
	      		</tr>
	      		<tr>
	      			<th style="background-color:#dcdcdc">작성일</th>
	      			<td>${dto.regdate }</td>
	      		</tr>
	      		<tr>
	      			<th style="background-color:#dcdcdc">조회수</th>
	      			<td>${dto.visited }</td>
	      		</tr>
	      	</tbody>
	      </table>
			<div class="button-group">
			  <a class="button" href="${path1 }/review/list.do">글 목록</a>
			  <a class="button" href="${path1 }/review/delete.do?rno=${dto.rno}">글 삭제</a>
			  <a class="button" href="${path1 }/review/edit.do?rno=${dto.rno}">글 수정</a>
			</div>
      </div>
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