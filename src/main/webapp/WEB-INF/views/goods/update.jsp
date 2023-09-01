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
    <title>수정페이지</title>
</head>
<body>
<jsp:include page="../menu.jsp"/>
<h2>제품 수정</h2>
<div class="row">
    <div class="col-sm-3"></div><!--여백-->
    <div class="col-sm-6">
        <form action="/goods-update" method="post" enctype="multipart/form-data">
            <!--데이터베이스의 필드명 참조-->
            <div class="mb-3 mt-3">
                <label for="gno" class="form-label">상품 번호</label>
                <input type="number" class="form-control" id="gno"  name="gno" value="${list.gno}" readonly>
            </div>
            <div class="mb-3 mt-3">
                <label for="ggoods" class="form-label">상품명</label>
                <input type="text" class="form-control" id="ggoods"  name="ggoods" value="${list.ggoods}">
            </div>

            <div class="mb-3">
                <label for="gcontent">상품 설명</label>
                <textarea class="form-control" rows="5" id="gcontent" name="gcontent">${list.gcontent}</textarea>
            </div>

            <div class="mb-3 mt-3">
                <label for="gprice" class="form-label">가 격</label>
                <input type="number" class="form-control" id="gprice"  name="gprice" value="${list.gprice}">
            </div>

            <div class="mb-3 mt-3">
                <label for="gquan" class="form-label">재고 수량</label>
                <input type="number" class="form-control" id="gquan"  name="gquan" value="${list.gquan}">
            </div>

            <div class="mb-3 mt-3">
                <<label for="file" class="form-label">상품 이미지</label>
                <input type="file" class="form-control" id="file"  name="file">
                <img src="/images/${list.gimg}" width="200" height="200" alt="없음" >

            </div>
            <div class="btn-group">
                <button type="submit" class="btn btn-success">수정</button>
                <button type="reset" class="btn btn-primary">다시작성</button>
                <button type="button" class="btn btn-info" onclick="location.href='/goods-list2'">수정 취소</button>
                <button type="button" class="btn btn-danger" onclick="location.href='/goods-delete?gno=${list.gno}'">삭제</button>
            </div>
        </form>

    </div>
    <div class="col-sm-3"></div><!--여백-->
</div>
</body>
</html>