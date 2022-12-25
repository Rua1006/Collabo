<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예약</title>
    <style>

    </style>
    <!-- 헤드 부분 인클루드 -->
<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<header id="header">
    <!-- 헤더 부분 인클루드 -->
    <jsp:include page="../include/header.jsp"></jsp:include>
</header>
<div class="container container-fluid">
    <!-- 좌측 이미지 및 설명 -->
    <div class="card">
        <img src="img/sample_images_01.png" class="card-img-top" alt="샘플">
        <div class="card-body bg-light">
            <p class="card-text">테스트내용입니다.(어트랙션 설명이 들어갈 자리입니다.)</p>
        </div>
    </div>
    <div class="left">
        <!-- 티켓정보 확인 -->
        <div class="d-flex align-items-center p-3 bg-light rounded shadow-sm">
            <div class="lh">
                <span class="sub-title">select *
                    from member_ticket
                    where 1 = 1
                      and member_id = 1
                      and 예매일자 >= systdate</span>
            </div>
            <select class="custom-select">
                <option selected>member_ticket (id)</option>
                <option value="1">샘플1</option>
                <option value="2">샘플2</option>
                <option value="3">샘플3</option>
            </select>
        </div>
        <!-- 기구선택 -->
        <div class="d-flex align-items-center p-3 bg-light rounded shadow-sm">
            <div class="lh">
                <span class="sub-title">어트랙션 선택</span>
            </div>
            <select class="custom-select">
                <option selected>어트랙션을 선택해주세요</option>
                <option value="1">샘플1</option>
                <option value="2">샘플2</option>
                <option value="3">샘플3</option>
            </select>
        </div>
        <!-- 운영시간 선택 -->
        <div class="select-table">
            <table class="table table-striped">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">순번</th>
                    <th scope="col">운영시간</th>
                    <th scope="col">잔여석</th>
                    <th scope="col">선택</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1회</th>
                    <td>12:00 ~ 12:20</td>
                    <td>(23/40)</td>
                    <td><input type="checkbox"></td>
                </tr>
                <tr>
                    <th scope="row">2회</th>
                    <td>12:20 ~ 12:40</td>
                    <td>(15/40)</td>
                    <td><input type="checkbox"></td>
                </tr>
                <tr>
                    <th scope="row">3회</th>
                    <td>13:00 ~ 13:20</td>
                    <td>(40/40)</td>
                    <td><input type="checkbox"></td>
                </tr>
                <tr>
                    <th scope="row">4회</th>
                    <td>13:20 ~ 13:40</td>
                    <td>(40/40)</td>
                    <td><input type="checkbox"></td>
                </tr>
                <tr>
                    <th scope="row">5회</th>
                    <td>14:00 ~ 14:20</td>
                    <td>(40/40)</td>
                    <td><input type="checkbox"></td>
                </tr>
                <tr>
                    <th scope="row">6회</th>
                    <td>14:20 ~ 14:40</td>
                    <td>(40/40)</td>
                    <td><input type="checkbox"></td>
                </tr>
                <tr>
                    <th scope="row">7회</th>
                    <td>15:00 ~ 15:20</td>
                    <td>(40/40)</td>
                    <td><input type="checkbox"></td>
                </tr>
                </tbody>
            </table>
            <input type="button" class="btn btn-dark" value="예약하기" style="float: right;">
        </div>
    </div>
</div>
</div>
</body>
<footer id="footer" class="footer-nav row expanded collapse">
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
</html>
