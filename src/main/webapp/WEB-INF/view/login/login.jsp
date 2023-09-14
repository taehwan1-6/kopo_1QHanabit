<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <%@include file="../layout/head.jsp" %>
</head>

<%--    <body class="loading authentication-bg" data-../layout-config='{"darkMode":false}'>--%>
<%--<body class="loading authentication-bg">--%>

<body>
<%@ include file="/WEB-INF/view/layout/navbar.jsp" %>


<div class="account-pages pt-2 pt-sm-5 pb-4 pb-sm-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xxl-4 col-lg-5">
                <div class="card">

                    <!-- Logo -->
                    <div class="card-header pt-4 pb-4 text-center bg-gray-500">
                        <a href="index.html">
                            <span><img src="/assets/images/logo.png" alt="" height="50"></span>
                        </a>
                    </div>

                    <div class="card-body p-4">

                        <div class="text-center w-75 m-auto">
                            <h4 class="text-dark-50 text-center mt-0 fw-bold">로그인</h4>
                            <%--                            <p class="text-muted mb-4">Enter your email address and password to access admin panel.</p>--%>
                        </div>

                        <form action="#">

                            <div class="mb-3">
                                <label for="emailaddress" class="form-label">아이디</label>
                                <input class="form-control" type="email" id="emailaddress" required=""
                                       placeholder="아이디">
                            </div>

                            <div class="mb-3">
                                <a href="pages-recoverpw.html" class="text-muted float-end"><small>비밀번호를 잊으셨나요?</small></a>
                                <label for="password" class="form-label">비밀번호</label>
                                <div class="input-group input-group-merge">
                                    <input type="password" id="password" class="form-control"
                                           placeholder="비밀번호">
                                    <div class="input-group-text" data-password="false">
                                        <span class="password-eye"></span>
                                    </div>
                                </div>
                            </div>

                            <div class="mb-3 mb-3">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="checkbox-signin" checked>
                                    <label class="form-check-label" for="checkbox-signin">아이디 저장</label>
                                </div>
                            </div>

                            <div class="mb-3 mb-0 text-center">
                                <button class="btn btn-primary" type="submit"> 로그인</button>
                            </div>

                        </form>
                    </div> <!-- end card-body -->
                </div>
                <!-- end card -->

                <div class="row mt-3">
                    <div class="col-12 text-center">
                        <p class="text-muted">계정이 없으신가요? <a href="pages-register.html"
                                                            class="text-muted ms-1"><b>회원가입</b></a></p>
                    </div> <!-- end col -->
                </div>
                <!-- end row -->

            </div> <!-- end col -->
        </div>
        <!-- end row -->
    </div>
    <!-- end container -->
</div>
<!-- end page -->


<%@include file="../layout/footer.jsp" %>

</body>
</html>
