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
    <title>등록 페이지</title>
</head>
<body>
<jsp:include page="../menu.jsp"/>
<h2>제품 등록</h2>
<div class="row">
    <div class="col-sm-3"></div><!--여백-->
    <div class="col-sm-6">
        <form action="/goods-insert" method="post" enctype="multipart/form-data">
            <!--데이터베이스의 필드명 참조-->
            <div class="mb-3 mt-3">
                <label for="ggoods" class="form-label">상품명</label>
                <input type="text" class="form-control" id="ggoods"  name="ggoods">
            </div>

            <div class="mb-3">
                <label for="gcontent">상품 설명</label>
                <textarea class="form-control" rows="5" id="gcontent" name="gcontent"></textarea>
            </div>

            <div class="mb-3 mt-3">
                <label for="gprice" class="form-label">가 격</label>
                <input type="number" class="form-control" id="gprice"  name="gprice">
            </div>

            <div class="mb-3 mt-3">
                <label for="gquan" class="form-label">재고 수량</label>
                <input type="number" class="form-control" id="gquan"  name="gquan">
            </div>

            <div class="mb-3 mt-3">
                <label for="file" class="form-label">상품 이미지</label>
                <input type="file" class="form-control" id="file"  name="file">
            </div>
            <div class="btn-group">
                <button type="submit" class="btn btn-success">둥록</button>
                <button type="reset" class="btn btn-primary">다시작성</button>
                <button type="button" class="btn btn-info" onclick="location.href='/goods-list2'">등록 취소</button>
            </div>
        </form>

    </div>
    <div class="col-sm-3"></div><!--여백-->
</div>
</body>
</html>