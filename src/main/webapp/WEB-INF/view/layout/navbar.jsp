<%--
  Created by IntelliJ IDEA.
  User: kantae
  Date: 2023/08/30
  Time: 13:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    /* 보라색 테두리 스타일을 정의합니다. */
    .navbar-hr {
        height: 2px;
        color: #8a2be2;
        margin: 0;
    }

    .dropdown-item {
        display: block;
        width: 100%;
        padding: 0.375rem 1.5rem;
        clear: both;
        font-weight: 400;
        color: #6c757d;
        text-align: inherit;
        white-space: nowrap;
        background-color: #b4a7ee;
        border: 0;
    }

    .dropdown-menu {
        position: absolute;
        z-index: 1000;
        display: none;
        min-width: 10rem;
        padding: 0.25rem 0;
        margin: 0;
        font-size: 0.9rem;
        color: #6c757d;
        text-align: left;
        list-style: none;
        background-color: #b4a7ee;
        background-clip: padding-box;
        border: 1px solid #b4a7ee;
        border-radius: 0.25rem;
    }
</style>

<!-- NAVBAR START -->
<nav class="navbar navbar-expand-lg py-lg-3 navbar-dark">
    <div class="container">

        <!-- logo -->
        <a href="/" class="navbar-brand me-lg-5" style="margin-bottom: 1%">
            <img src="/assets/images/logo.png" alt="" class="logo-dark" height="40"/>
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navig`ation">
            <i class="mdi mdi-menu"></i>
        </button>

        <!-- menus -->
        <div class="collapse navbar-collapse" id="navbarNavDropdown">

            <!-- left menu -->
            <ul class="navbar-nav me-auto align-items-center">
                <li class="nav-item mx-lg-1">
                    <a class="nav-link" href="/">홈</a>
                </li>

                <li class="nav-item mx-lg-1 dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">
                        예적금상품
                    </a>
                    <ul class="dropdown-menu p-2">
                        <%--                        <li><a class="dropdown-item nav-link m-1" href="/product/products">하나빗 저축 챌린지 적금</a></li>--%>
                        <li><a class="dropdown-item nav-link m-1" href="/product/product-mydata">하나빗 아끼기 적금</a></li>
                        <li><a class="dropdown-item nav-link m-1" href="/product/deposit">하나빗 갓생 예금</a></li>
                    </ul>
                </li>

                <li class="nav-item mx-lg-1">
                    <a class="nav-link" href="/product/products">적금상품</a>
                </li>
                <li class="nav-item mx-lg-1">
                    <a class="nav-link" href="${pageContext.request.contextPath}/product/challenge-deposits">예금상품</a>
                </li>
                <li class="nav-item mx-lg-1">
                    <a class="nav-link" href="${pageContext.request.contextPath}/my-consume">나의 소비내역</a>
                </li>
                <li class="nav-item mx-lg-1">
                    <a class="nav-link" href="">마이페이지</a>
                </li>
            </ul>

            <!-- right menu -->
            <ul class="navbar-nav ms-auto align-items-center">
                <li class="nav-item me-0">
                    <a href="${pageContext.request.contextPath}/members/login"
                       class="nav-link d-lg-none">로그인</a>
                    <a href="${pageContext.request.contextPath}/members/login"
                       class="btn btn-sm btn-light rounded-pill d-none d-lg-inline-flex">
                        <i class="mdi mdi-account me-1" style="margin-top: 3%"></i> 로그인</a>
                </li>
            </ul>

        </div>
    </div>
    <hr class="navbar-hr">
</nav>

<!-- NAVBAR END -->
