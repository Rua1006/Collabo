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
<script src="jquery-3.1.1.min.js"></script>
<link rel="stylesheet" href="datepicker.min.css" type="text/css" media="all">
<script src="datepicker.js"></script>
<script src="datepicker.ko.js"></script>
<script src="calendar.js"></script>
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

.wrap { width: 100%; clear:both; }
.container {display:block; clear:both;}
.top {text-align: center;}
.notiDiv {display:block; margin: 100px; padding: 100px;background-color: rgb(239, 239, 239);}
.tit {font-size :40px; font-weight: 700;}
.dotTit {font-size: 28px;}
.barList {font-size : 20px;}
.buttonDiv {text-align: center; margin: 50px 0;}

    .thumb_lst { width:100%; float:left; margin-bottom: -10px; }
    .thumb_lst li { clear:both; border:3px solid #ececec; height: 350px;}
    .thumb_lst li:first-child { border-top:3px solid #ececec; }
    .thumb_lst li a { display:block; }
    .thumb_lst li .img_fr { width: 300px; height: 400px; overflow:hidden; float:left; }
    .thumb_lst li .img_fr img { display:block; width: 100%; height:auto; margin-top:25px; }
    .thumb_lst li .com_fr { padding-left: 30px; float:left; color:#333; margin-top:50px; }
    .thumb_tit { font-weight: 700; font-size: 20px ;line-height: 2.4; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }
    .thumb_com { font-weight: 500; line-height:2; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }
    .thumb_price { line-height: 1.8; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }
    
    .bene_lst { width:50%; float:left; margin-bottom: 50px; }
    .bene_lst li { clear:both; border:3px solid #ececec; height: 150px;}
    .bene_lst li:first-child { border-top:3px solid #ececec; }
    .bene_lst li a { display:block; }
    .bene_lst li .img_fr { width: 150px; height: 150px; overflow:hidden; float:left; }
    .bene_lst li .img_fr img { display:block; width: 100%; height:auto; 
    margin-top:-28px; }
    .bene_lst li .com_fr { padding-left: 30px; float:left; color:#333; }
    .bene_tit { line-height: 2; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }
    .bene_com { line-height:2; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }
    .bene_price { line-height: 1; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }

    .roundDiv {margin-top: 40px; margin-bottom: 100px !important; padding-bottom: 100px; border-bottom: 1px dashed #e1e1e1;}
    .roundDiv li {margin-top: 10px; display: table; width: 100%;}
    .roundDiv li p {display: table-cell; vertical-align: middle; font-size: 18px; line-height: 25px; padding-left: 20px;}
    .roundDiv li p:first-child {width: 118px; padding: 10px 0; text-align: center; font-size: 18px; color: #000; border: 1px solid #e1e1e1;
    	border-radius: 25px;padding-left: 0;}
</style>
