<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path0" value="${pageContext.request.contextPath}" />
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="resources/css/normalize.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation-prototype.min.css">
<link href='https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css' rel='stylesheet' type='text/css'>
<script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/js/foundation.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="${path0}/resources/js/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" href="${path0}/resources/css/datepicker.min.css" type="text/css" media="all">
<script src="${path0}/resources/js/datepicker.js"></script>
<script src="${path0}/resources/js/datepicker.ko.js"></script>
<script src="${path0}/resources/js/calendar.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script>
  $(document).ready(function(){
	  $(document).foundation();
  });
</script>
<style>
body, html, * { font-family: 'Noto Sans KR', sans-serif; }

ul { list-style:none; }

#gnb > ul > li[role="menuitem"] { height:38px; }
#gnb > ul > li.menu-text[role="menuitem"] { padding-top:0px; padding-bottom:0px; }

.h1 { padding-top:0.9rem; padding-bottom:0.3rem; }
.container { clear:both; width:1200px; margin:0 auto; }
.container::after { content:""; display:block; width:100%; clear:both; }

#table1 th { border-bottom:1px solid #fff; }

.footer-nav {	background-color:#2d2d2d; height:80px; box-sizing:border-box; overflow:hidden; }
.footer-nav > article { clear:both; width:1200px; margin:0px auto; height:80px; }
.footer-nav > article > div { float:left; }
.footer-nav-left { color:#fff; width:25%; line-height:80px; }
.footer-nav-center {
	width:50%;
}
.footer-nav-right {
	width:25%; 
}
#footer .footer-nav-left .footer-copyright {
	line-height:80px;
}

#footer > article > div > ul > li.footer-nav-item { 
	float:left; width:auto; padding:1.8rem;  
	min-width:40px;
}
#footer > article > div.footer-nav-right > ul > li.footer-nav-item {
	width:25%; height:25%;
}

</style>
