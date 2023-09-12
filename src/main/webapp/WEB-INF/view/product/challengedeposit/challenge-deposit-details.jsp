<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@ include file="/WEB-INF/view/layout/head.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/view/layout/navbar.jsp" %>

<div class="container">

    <div class="content-page">
        <div class="content">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box">
                        <h2 class="page-title">상품 정보</h2>
                    </div>
                </div>
            </div>
            <!-- end page title -->

            <div class="row">
                <div class="col-xxl-8 col-lg-6">
                    <!-- project card -->
                    <div class="card d-block">
                        <div class="card-body">
                            <div class="dropdown float-end">
                                <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown"
                                   aria-expanded="false">
                                    <i class="dripicons-dots-3"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end">
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item"><i
                                            class="mdi mdi-pencil me-1"></i>Edit</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item"><i
                                            class="mdi mdi-delete me-1"></i>Delete</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item"><i
                                            class="mdi mdi-email-outline me-1"></i>Invite</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item"><i
                                            class="mdi mdi-exit-to-app me-1"></i>Leave</a>
                                </div>
                            </div>
                            <!-- project title-->
                            <h3 class="mt-0">
                                ${productVO.name}
                            </h3>
                            <div class="badge bg-primary text-light mb-3">진행중</div>

                            <p class="mb-4">
                                    <span class="pe-2 text-nowrap">
                                        <i class="uil uil-calendar-alt"></i>
                                        <b>${productVO.period}</b> 개월
                                    </span>
                                <span class="pe-2 text-nowrap">
                                        <i class="uil uil-thumbs-up"></i>
                                        주 <b>${productVO.authenticationFrequency}</b> 일
                                    </span>
                                <span class="pe-2 text-nowrap">
                                        <i class="uil uil-money-insert"></i>
                                        최대 <b>${productVO.preferRate}</b> %
                                    </span>
                                <span class="text-nowrap">
                                        <i class="uil uil-money-bill"></i>
                                        기본 <b>${productVO.baseRate}</b> %
                                    </span>

                            </p>

                            <h5>상품 설명:</h5>

                            <p class="text-muted mb-4">
                                ${productVO.description}
                            </p>

                            <%--                            <p class="text-muted mb-4">--%>
                            <%--                                Voluptates, illo, iste itaque voluptas corrupti ratione reprehenderit magni similique?--%>
                            <%--                                Tempore, quos delectus asperiores--%>
                            <%--                                libero voluptas quod perferendis! Voluptate, quod illo rerum? Lorem ipsum dolor sit--%>
                            <%--                                amet.--%>
                            <%--                                With supporting text below--%>
                            <%--                                as a natural lead-in to additional contenposuere erat a ante.--%>
                            <%--                            </p>--%>

                            <%--                            <div class="row">--%>
                            <%--                                <div class="col-md-4">--%>
                            <%--                                    <div class="mb-4">--%>
                            <%--                                        <h5>상품 모집 기간</h5>--%>
                            <%--                                        <p>17 March 2018 <small class="text-muted">1:00 PM</small></p>--%>
                            <%--                                    </div>--%>
                            <%--                                </div>--%>
                            <%--                                <div class="col-md-4">--%>
                            <%--                                    <div class="mb-4">--%>
                            <%--                                        <h5>End Date</h5>--%>
                            <%--                                        <p>22 December 2018 <small class="text-muted">1:00 PM</small></p>--%>
                            <%--                                    </div>--%>
                            <%--                                </div>--%>
                            <%--                                <div class="col-md-4">--%>
                            <%--                                    <div class="mb-4">--%>
                            <%--                                        <h5>Budget</h5>--%>
                            <%--                                        <p>$15,800</p>--%>
                            <%--                                    </div>--%>
                            <%--                                </div>--%>
                            <%--                            </div>--%>


                            <!-- 인증 방법 설명 시작 -->
                            <div style="margin-bottom: 8%">
                                <h5>인증 방법:</h5>

                                <p class="text-muted mb-2">
                                    ${productVO.authenticationDescription}
                                </p>
                                <img src="${productVO.authenticationImg1}" alt="image" style="width: 30%; margin: 1%">
                                <img src="${productVO.authenticationImg2}" alt="image" style="width: 30%; margin: 1%">
                                <img src="${productVO.authenticationImg3}" alt="image" style="width: 30%; margin: 1%">
                            </div>
                            <!-- 인증 방법 설명 끝 -->


                            <!-- 현재 가입자 프로필 사진 시작 -->
                            <div id="tooltip-container" style="margin-bottom: 8%">
                                <h5>현재 가입자:</h5>
                                <a href="javascript:void(0);" data-bs-container="#tooltip-container"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Mat Helme"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-6.jpg"
                                         class="rounded-circle img-thumbnail avatar-sm" alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Michael Zenaty"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-7.jpg"
                                         class="rounded-circle img-thumbnail avatar-sm" alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="James Anderson"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-8.jpg"
                                         class="rounded-circle img-thumbnail avatar-sm" alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Mat Helme"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-4.jpg"
                                         class="rounded-circle img-thumbnail avatar-sm" alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Michael Zenaty"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-5.jpg"
                                         class="rounded-circle img-thumbnail avatar-sm" alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="James Anderson"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-3.jpg"
                                         class="rounded-circle img-thumbnail avatar-sm" alt="friend">
                                </a>
                            </div>
                            <!-- 현재 가입자 프로필 사진 시작 -->

                            <div class="text-end">
                                <div class="btn-group mb-2 ms-2">
                                    <button type="button" class="btn btn-primary btn-sm"
                                            onclick="location.href='${productVO.id}/tos'">가입하기
                                    </button>
                                </div>
                            </div>


                        </div> <!-- end card-body-->

                    </div> <!-- end card-->

                    <!-- 후기 댓글 시작 -->
                    <div class="card">
                        <div class="card-body">
                            <h4 class="mt-0 mb-3">Comments (258)</h4>

                            <textarea class="form-control form-control-light mb-2" placeholder="Write message"
                                      id="example-textarea" rows="3"></textarea>
                            <div class="text-end">
                                <div class="btn-group mb-2">
                                    <button type="button" class="btn btn-link btn-sm text-muted font-18"><i
                                            class="dripicons-paperclip"></i></button>
                                </div>
                                <div class="btn-group mb-2 ms-2">
                                    <button type="button" class="btn btn-primary btn-sm">Submit</button>
                                </div>
                            </div>

                            <div class="d-flex align-items-start mt-2">
                                <img class="me-3 avatar-sm rounded-circle" src="/assets/images/users/avatar-3.jpg"
                                     alt="Generic placeholder image">
                                <div class="w-100 overflow-hidden">
                                    <h5 class="mt-0">Jeremy Tomlinson</h5>
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante
                                    sollicitudin. Cras purus odio, vestibulum in
                                    vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate
                                    fringilla.
                                    Donec lacinia congue felis
                                    in faucibus.

                                    <div class="d-flex align-items-start mt-3">
                                        <a class="pe-3" href="#">
                                            <img src="/assets/images/users/avatar-4.jpg"
                                                 class="avatar-sm rounded-circle"
                                                 alt="Generic placeholder image">
                                        </a>
                                        <div class="w-100 overflow-hidden">
                                            <h5 class="mt-0">Kathleen Thomas</h5>
                                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque
                                            ante
                                            sollicitudin. Cras purus odio, vestibulum in
                                            vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
                                            vulputate
                                            fringilla. Donec lacinia congue
                                            felis in faucibus.
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="text-center mt-2">
                                <a href="javascript:void(0);" class="text-danger">Load more </a>
                            </div>
                        </div> <!-- end card-body-->
                    </div>
                    <!-- end card-->
                </div> <!-- end col -->

                <div class="col-lg-6 col-xxl-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title mb-3">상품 사진</h5>

                            <img src="${productVO.thumbnailImg}" style="width: 100%">

                            <%--                            <div dir="ltr">--%>
                            <%--                                <div class="mt-3 chartjs-chart" style="height: 320px;">--%>
                            <%--                                    <canvas id="line-chart-example"></canvas>--%>
                            <%--                                </div>--%>
                            <%--                            </div>--%>
                        </div>
                    </div>
                    <!-- end card-->

                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title mb-3">Files</h5>

                            <div class="card mb-1 shadow-none border">
                                <div class="p-2">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <div class="avatar-sm">
                                                            <span class="avatar-title rounded">
                                                                .ZIP
                                                            </span>
                                            </div>
                                        </div>
                                        <div class="col ps-0">
                                            <a href="javascript:void(0);"
                                               class="text-muted fw-bold">Hyper-admin-design.zip</a>
                                            <p class="mb-0">2.3 MB</p>
                                        </div>
                                        <div class="col-auto">
                                            <!-- Button -->
                                            <a href="javascript:void(0);" class="btn btn-link btn-lg text-muted">
                                                <i class="dripicons-download"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card mb-1 shadow-none border">
                                <div class="p-2">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <img src="/assets/images/projects/project-1.jpg" class="avatar-sm rounded"
                                                 alt="file-image"/>
                                        </div>
                                        <div class="col ps-0">
                                            <a href="javascript:void(0);"
                                               class="text-muted fw-bold">Dashboard-design.jpg</a>
                                            <p class="mb-0">3.25 MB</p>
                                        </div>
                                        <div class="col-auto">
                                            <!-- Button -->
                                            <a href="javascript:void(0);" class="btn btn-link btn-lg text-muted">
                                                <i class="dripicons-download"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card mb-0 shadow-none border">
                                <div class="p-2">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <div class="avatar-sm">
                                                            <span class="avatar-title bg-secondary text-light rounded">
                                                                .MP4
                                                            </span>
                                            </div>
                                        </div>
                                        <div class="col ps-0">
                                            <a href="javascript:void(0);"
                                               class="text-muted fw-bold">Admin-bug-report.mp4</a>
                                            <p class="mb-0">7.05 MB</p>
                                        </div>
                                        <div class="col-auto">
                                            <!-- Button -->
                                            <a href="javascript:void(0);" class="btn btn-link btn-lg text-muted">
                                                <i class="dripicons-download"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- end row -->

        </div> <!-- End Content -->


    </div> <!-- content-page -->

</div>


<!-- third party js -->
<script src="//assets/js/vendor/Chart.bundle.min.js"></script>
<!-- third party js ends -->

<!-- demo app -->
<script src="//assets/js/pages/demo.project-detail.js"></script>
<!-- end demo js-->

<%@ include file="/WEB-INF/view/layout/footer.jsp" %>
</body>
</html>
