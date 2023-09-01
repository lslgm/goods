
<%@ page contentType="text/html; charset=UTF-8"  language="java" %>
<h1>인싸 쇼핑몰</h1>
<nav class="navbar navbar-expand-sm bg-secondary navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">인싸 쇼핑몰</a> <!--img src 그림으로 로고-->
        <!--반응형 처리를 위해 스마트폰 데블릿에 해상도에 3선 버튼 메뉴-->
        <!--data-bs-toggle 펼침효과 data-bs-target 클릭시 보일 클래스명(#id명)-->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav"> <!--메뉴항목은 순서없는 목록(ul) navbar-nav(메뉴바의 메뉴구성)-->
                <li class="nav-item dropdown"> <!--하나의 항목이 메뉴항목1개-->
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">상품 관리</a>
                    <ul class="dropdown-menu"><!--드롭다운의 서브메뉴-->
                        <li><a class="dropdown-item" href="/goods-list2">상품목록</a></li>
                        <li><a class="dropdown-item" href="/goods-insert">상품등록</a></li>
                    </ul>
                </li>
                <li class="nav-item"><!--이용자에게 제공할 목록-->
                    <a class="nav-link" href="goods-list">상품목록</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
