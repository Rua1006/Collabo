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
<title>Insert title here</title>
<link rel="stylesheet" href="${path1 }/include/foundation.css">
<link rel="stylesheet" href="${path1 }/include/app.css">
</head>
<body>
<div>
	<table>
		<thead>
		    <tr>
		      <th width="200">NO</th>
		      <th>ID</th>
		      <th width="150">NAME</th>
		      <th width="150">REGDATE</th>
		      <th>POINT</th>
		    </tr>
	  	</thead>
		<tbody>
		<c:forEach items="${memberList }" var="mem" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${mem.user_id }</td>
				<td>${mem.user_name }</td>
				<td>${mem.regdate }</td>
				<td>${mem.pt }</td>
			</tr>
		</c:forEach>
		</tbody>	
	</table>
</div>	
<script src="${path1 }/include/jquery.js"></script>
<script src="${path1 }/include/what-input.js"></script>
<script src="${path1 }/include/foundation.js"></script>
<script src="${path1 }/include/app.js"></script>
</body>
</html>