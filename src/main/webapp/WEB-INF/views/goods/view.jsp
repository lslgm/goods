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
    <title>상세 페이지</title>
</head>
<body>
<jsp:include page="../menu.jsp"/>
<h2>제품 상세 정보</h2>

    <div class="row">
        <div class="col-sm-4"></div><!--여백-->

        <div class="col-sm-4">
            <form action="/goods-view" method="get" >
                <div class="card">
                    <div class="card-header">
                        <label for="gno" class="form-label">상품 번호</label>
                        <input type="number" class="form-control" id="gno"  name="gno" value="${list.gno}" readonly>

                        <label for="ggoods" class="form-label">상품명</label>
                        <input type="text" class="form-control" id="ggoods"  name="ggoods" value="${list.ggoods}" readonly>

                    </div>
                    <div class="card-body">
                        <label for="gimg" class="form-label">상품 이미지</label>
                        <img src="/images/${list.gimg}" id="gimg"  name="gimg" width="200" height="200" alt="없음" >
                    </div>
                    <div class="card-footer">
                        <label for="gcontent">상품 설명</label>
                        <textarea class="form-control" rows="5" id="gcontent" name="gcontent" readonly>${list.gcontent}</textarea>

                        <label for="gprice" class="form-label">가 격</label>
                        <input type="number" class="form-control" id="gprice"  name="gprice" value="${list.gprice}" readonly>

                        <button type="submit" class="btn btn-success">주문</button>
                        <button type="button" class="btn btn-info" onclick="location.href='/goods-list'">목록으로</button>
                    </div>
                </div>

                <!--데이터베이스의 필드명 참조-->
            </form>
                </div>



        <div class="col-sm-4"></div><!--여백-->
    </div>


</body>
</html>