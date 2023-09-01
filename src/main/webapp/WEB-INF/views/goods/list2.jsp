<!--
    파일명 :
    기 능 : 
    직성일 :
    작성자 :
    수정사항 :
    FixMe :
    ToDo :
-->
<%@ page contentType="text/html; charset=UTF-8"  language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <title>목록페이지(관리자)</title>
</head>
<body>
<jsp:include page="../menu.jsp"/>
<h2>제품 목록</h2>
<form action="/goods-list2">
<div class="row">
<div class="col-sm-2"></div>

    <div class="col-sm-8">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>상품 번호</th>
            <th>상품 이름</th>
            <th>가 격</th>
            <th>수 량</th>
            <th>이미지</th>
            <th>작 업</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <c:forEach var="list" items="${list}">
            <td>${list.gno}</td>
                <td>${list.ggoods}</td>
                <td>${list.gprice}</td>
                <td>${list.gquan}</td>
                <td><img src="/images/${list.gimg}" width="80" height="80" alt="이미지가 없습니다"/><br></td>
                <td><button type="button" class="btn btn-primary" onclick="location.href='/goods-update?gno=${list.gno}'">수정/삭제</button></td>

        </tr>
            </c:forEach>
        </tbody>

    </table>
    </div>

    <div class="col-sm-2"></div>
    <div class="pagination justify-content-center">
        <input type="button" value="메인화면으로" class="btn btn-primary" onclick="location.href='/'"/>
    </div>

</div>
</form>
</body>
</html>