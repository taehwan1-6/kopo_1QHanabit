<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

    .nav-user {
        padding: calc(31px * 0.5) 20px calc(31px * 0.5) 57px !important;
        text-align: left !important;
        position: relative;
        background-color: rgb(154 161 171 / 0%);
        border: 1px solid #f1f3fa00;
        border-width: 0 1px;
        min-height: 70px;
    }

    .text-muted {
        --bs-text-opacity: 1;
        color: black !important;
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
                <%--                <li class="nav-item mx-lg-1">--%>
                <%--                    <a class="nav-link" href="">마이페이지</a>--%>
                <%--                </li>--%>
            </ul>

            <!-- right menu -->
            <ul class="navbar-nav ms-auto align-items-center">
                <c:if test="${empty currentMember}">
                    <li class="nav-item me-0">
                        <a href="${pageContext.request.contextPath}/members/login"
                           class="nav-link d-lg-none">로그인</a>
                        <a href="${pageContext.request.contextPath}/members/login"
                           class="btn btn-sm btn-light rounded-pill d-none d-lg-inline-flex">
                            <i class="mdi mdi-account me-1" style="margin-top: 3%"></i> 로그인</a>
                    </li>
                </c:if>
                <c:if test="${not empty currentMember}">
                    <%--                    <li class="nav-item me-0">--%>
                    <%--                        <a href="${pageContext.request.contextPath}/members/logout"--%>
                    <%--                           class="nav-link d-lg-none">로그아웃</a>--%>
                    <%--                        <a href="${pageContext.request.contextPath}/members/logout"--%>
                    <%--                           class="btn btn-sm btn-light rounded-pill d-none d-lg-inline-flex">--%>
                    <%--                            <i class="mdi mdi-account me-1" style="margin-top: 3%"></i> 로그아웃</a>--%>
                    <%--                    </li>--%>

                    <!-- 알림 -->
                    <li class="dropdown notification-list">
                        <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#"
                           id="topbar-notifydrop" role="button" aria-haspopup="true" aria-expanded="false">
                            <i class="dripicons-bell noti-icon"></i>
                            <span class="noti-icon-badge"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg"
                             aria-labelledby="topbar-notifydrop"
                             style="position: absolute; inset: 0px 0px auto auto; margin: 0px; transform: translate(-9px, 72px);"
                             data-popper-placement="bottom-end">

                            <!-- item-->
                            <div class="dropdown-item noti-title">
                                <h5 class="m-0">
                                    <span class="float-end">
                                        <a href="javascript: void(0);" class="text-dark">
                                            <small>Clear All</small>
                                        </a>
                                    </span>Notification
                                </h5>
                            </div>

                            <div style="max-height: 230px;" data-simplebar="init">
                                <div class="simplebar-wrapper" style="margin: 0px;">
                                    <div class="simplebar-height-auto-observer-wrapper">
                                        <div class="simplebar-height-auto-observer"></div>
                                    </div>
                                    <div class="simplebar-mask">
                                        <div class="simplebar-offset" style="right: 0px; bottom: 0px;">
                                            <div class="simplebar-content-wrapper" tabindex="0" role="region"
                                                 aria-label="scrollable content"
                                                 style="height: auto; overflow: hidden scroll;">
                                                <div class="simplebar-content" style="padding: 0px;">
                                                    <!-- item-->
                                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                        <div class="notify-icon bg-primary">
                                                            <i class="mdi mdi-comment-account-outline"></i>
                                                        </div>
                                                        <p class="notify-details">Caleb Flakelar commented on Admin
                                                            <small class="text-muted">1 min ago</small>
                                                        </p>
                                                    </a>

                                                    <!-- item-->
                                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                        <div class="notify-icon bg-info">
                                                            <i class="mdi mdi-account-plus"></i>
                                                        </div>
                                                        <p class="notify-details">New user registered.
                                                            <small class="text-muted">5 hours ago</small>
                                                        </p>
                                                    </a>

                                                    <!-- item-->
                                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                        <div class="notify-icon">
                                                            <img src="assets/images/users/avatar-2.jpg"
                                                                 class="img-fluid rounded-circle" alt=""></div>
                                                        <p class="notify-details">Cristina Pride</p>
                                                        <p class="text-muted mb-0 user-msg">
                                                            <small>Hi, How are you? What about our next meeting</small>
                                                        </p>
                                                    </a>

                                                    <!-- item-->
                                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                        <div class="notify-icon bg-primary">
                                                            <i class="mdi mdi-comment-account-outline"></i>
                                                        </div>
                                                        <p class="notify-details">Caleb Flakelar commented on Admin
                                                            <small class="text-muted">4 days ago</small>
                                                        </p>
                                                    </a>

                                                    <!-- item-->
                                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                        <div class="notify-icon">
                                                            <img src="assets/images/users/avatar-4.jpg"
                                                                 class="img-fluid rounded-circle" alt=""></div>
                                                        <p class="notify-details">Karen Robinson</p>
                                                        <p class="text-muted mb-0 user-msg">
                                                            <small>Wow ! this admin looks good and awesome
                                                                design</small>
                                                        </p>
                                                    </a>

                                                    <!-- item-->
                                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                        <div class="notify-icon bg-info">
                                                            <i class="mdi mdi-heart"></i>
                                                        </div>
                                                        <p class="notify-details">Carlos Crouch liked
                                                            <b>Admin</b>
                                                            <small class="text-muted">13 days ago</small>
                                                        </p>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="simplebar-placeholder" style="width: auto; height: 390px;"></div>
                                </div>
                                <div class="simplebar-track simplebar-horizontal" style="visibility: hidden;">
                                    <div class="simplebar-scrollbar" style="width: 0px; display: none;"></div>
                                </div>
                                <div class="simplebar-track simplebar-vertical" style="visibility: visible;">
                                    <div class="simplebar-scrollbar"
                                         style="height: 135px; display: block; transform: translate3d(0px, 95px, 0px);"></div>
                                </div>
                            </div>

                            <!-- All-->
                            <a href="javascript:void(0);"
                               class="dropdown-item text-center text-primary notify-item notify-all">
                                View All
                            </a>

                        </div>
                    </li>
                    <!-- 알림 -->


                    <!-- 프로필 -->

                    <li class="dropdown notification-list">
                        <a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown"
                           id="topbar-userdrop" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            <span class="account-user-avatar">
                                <img src="assets/images/users/avatar-1.jpg" alt="user-image" class="rounded-circle">
                            </span>
                            <span>
                                <span class="account-user-name">${currentMember.name}</span>
                                <span class="account-position">고객님</span>
                            </span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown"
                             aria-labelledby="topbar-userdrop">
                            <!-- item-->
                            <div class=" dropdown-header noti-title">
                                <h6 class="text-overflow m-0">환영합니다 !</h6>
                            </div>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="mdi mdi-account-circle me-1"></i>
                                <span>My Account</span>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="mdi mdi-account-edit me-1"></i>
                                <span>Settings</span>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="mdi mdi-logout me-1"></i>
                                <span>Logout</span>
                            </a>

                        </div>
                    </li>

                    <!-- 프로필 -->


                </c:if>
            </ul>


        </div>
    </div>
    <hr class="navbar-hr">
</nav>

<!-- NAVBAR END -->
