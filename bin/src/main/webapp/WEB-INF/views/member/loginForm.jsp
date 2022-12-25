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
	<title>로그인</title>
	<style>
	.content {height: 100vh;}
	.table_form {width: 80%; margin: 0 auto;}
	.h1 {margin-top: 100px;}
	</style>
	<!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
	<header id="header">
		<!-- 헤더 부분 인클루드 -->
	 	<jsp:include page="../include/header.jsp"></jsp:include>
    </header>
	
	<div class="content" id="con">
	    <div class="row column text-center">
	      <h2 class="h1" style="margin-top: 25vh;">로그인</h2>
	      <div class="container">
				<c:if test="${!empty msg }">
				<script>
				alert("로그인 실패");
				document.loginForm.userid.focus();
				</script>
				</c:if>
				<form action="${path1 }/member/signin.do" method="post" name="loginForm">
				<div class="table_form_wrap">
					<table class="table_form">
						<tbody>
							<tr>
								<th><label for="id"><strong>아이디</strong></label></th>
								<td><input type="text" name="user_id" id="user_id" size="100" class="single100" placeholder="아이디 입력" required>
								<!--  pattern="^[a-z0-9]+$"  -->
								</td>
							</tr>				
							<tr>
								<th><label for="pw"><strong>비밀번호</strong></label></th>
								<td><input type="password" name="user_pw" id="user_pw"  class="single100" placeholder="비밀번호 입력" required>
								<!--  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  -->
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" class="button" value="로그인">
									<input type="reset" class="button" value="취소">
								</td>
							</tr>	
						</tbody>
					</table>
				</div>
				</form>
				<script>
				function loginFaiure() {
					alert("로그인 실패");
				}
				</script>
	      </div>
	    </div>
	</div>
</body>
<footer id="footer" class="footer-nav row expanded collapse">
   	<!-- 푸터 부분 인클루드 -->
  	<jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
</html>