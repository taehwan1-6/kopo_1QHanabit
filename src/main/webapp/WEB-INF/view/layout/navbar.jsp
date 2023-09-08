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
</style>

<!-- NAVBAR START -->
<nav class="navbar navbar-expand-lg py-lg-3 navbar-dark">
    <div class="container">

        <!-- logo -->
        <a href="/" class="navbar-brand me-lg-5">
            <img src="/assets/images/logo.png" alt="" class="logo-dark" height="40" />
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <i class="mdi mdi-menu"></i>
        </button>

        <!-- menus -->
        <div class="collapse navbar-collapse" id="navbarNavDropdown">

            <!-- left menu -->
            <ul class="navbar-nav me-auto align-items-center">
                <li class="nav-item mx-lg-1">
                    <a class="nav-link" href="/">홈</a>
                </li>
                <li class="nav-item mx-lg-1">
                    <a class="nav-link" href="/product/products">적금상품</a>
                </li>
                <li class="nav-item mx-lg-1">
                    <a class="nav-link" href="${pageContext.request.contextPath}/products">예금상품</a>
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
                    <a href="${pageContext.request.contextPath}/login" target="_blank" class="nav-link d-lg-none">로그인</a>
                    <a href="${pageContext.request.contextPath}/login" target="_blank" class="btn btn-sm btn-light rounded-pill d-none d-lg-inline-flex">
                        <i class="mdi mdi-account me-2"></i> 로그인
                    </a>
                </li>
            </ul>

        </div>
    </div>
</nav>
<hr class="navbar-hr">
<!-- NAVBAR END -->
