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
                        <h4 class="page-title">Projects</h4>
                    </div>
                </div>
            </div>
            <!-- end page title -->

            <div class="row mb-2">
                <div class="col-sm-4">
                    <a href="apps-projects-add.html" class="btn btn-danger rounded-pill mb-3"><i
                            class="mdi mdi-plus"></i>
                        Create Project</a>
                </div>
                <div class="col-sm-8">
                    <div class="text-sm-end">
                        <div class="btn-group mb-3">
                            <button type="button" class="btn btn-primary">All</button>
                        </div>
                        <div class="btn-group mb-3 ms-1">
                            <button type="button" class="btn btn-light">Ongoing</button>
                            <button type="button" class="btn btn-light">Finished</button>
                        </div>
                        <div class="btn-group mb-3 ms-2 d-none d-sm-inline-block">
                            <button type="button" class="btn btn-secondary"><i class="dripicons-view-apps"></i></button>
                        </div>
                        <div class="btn-group mb-3 d-none d-sm-inline-block">
                            <button type="button" class="btn btn-link text-muted"><i class="dripicons-checklist"></i>
                            </button>
                        </div>
                    </div>
                </div><!-- end col-->
            </div>
            <!-- end row-->

            <div class="row">
                <div class="col-md-6 col-xxl-3">
                    <!-- project card -->
                    <div class="card d-block">
                        <div class="card-body">
                            <div class="dropdown card-widgets">
                                <a href="#" class="dropdown-toggle arrow-none" data-bs-toggle="dropdown"
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
                            <h4 class="mt-0">
                                <a href="apps-projects-details.html" class="text-title">App design and development</a>
                            </h4>
                            <div class="badge bg-success mb-3">Finished</div>

                            <p class="text-muted font-13 mb-3">With supporting text below as a natural lead-in to
                                additional
                                contenposuere erat a ante...<a href="javascript:void(0);" class="fw-bold text-muted">view
                                    more</a>
                            </p>

                            <!-- project detail-->
                            <p class="mb-1">
                                            <span class="pe-2 text-nowrap mb-2 d-inline-block">
                                                <i class="mdi mdi-format-list-bulleted-type text-muted"></i>
                                                <b>21</b> Tasks
                                            </span>
                                <span class="text-nowrap mb-2 d-inline-block">
                                                <i class="mdi mdi-comment-multiple-outline text-muted"></i>
                                                <b>741</b> Comments
                                            </span>
                            </p>
                            <div id="tooltip-container">
                                <a href="javascript:void(0);" data-bs-container="#tooltip-container"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Mat Helme"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-6.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Michael Zenaty"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-7.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="James Anderson"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-8.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>
                                <a href="javascript:void(0);" class="d-inline-block text-muted fw-bold ms-2">
                                    +7 more
                                </a>
                            </div>
                        </div> <!-- end card-body-->
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item p-3">
                                <!-- project progress-->
                                <p class="mb-2 fw-bold">Progress <span class="float-end">100%</span></p>
                                <div class="progress progress-sm">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0"
                                         aria-valuemax="100" style="width: 100%;">
                                    </div><!-- /.progress-bar -->
                                </div><!-- /.progress -->
                            </li>
                        </ul>
                    </div> <!-- end card-->
                </div> <!-- end col -->

                <div class="col-md-6 col-xxl-3">
                    <!-- project card -->
                    <div class="card d-block">
                        <div class="card-body">
                            <div class="dropdown card-widgets">
                                <a href="#" class="dropdown-toggle arrow-none" data-bs-toggle="dropdown"
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
                            <h4 class="mt-0">
                                <a href="apps-projects-details.html" class="text-title">Coffee detail page - Main
                                    Page</a>
                            </h4>
                            <div class="badge bg-secondary text-light mb-3">Ongoing</div>

                            <p class="text-muted font-13 mb-3">This card has supporting text below as a natural lead-in
                                to
                                additional content is a little bit longer...<a href="javascript:void(0);"
                                                                               class="fw-bold text-muted">view more</a>
                            </p>

                            <!-- project detail-->
                            <p class="mb-1">
                                            <span class="pe-2 text-nowrap mb-2 d-inline-block">
                                                <i class="mdi mdi-format-list-bulleted-type text-muted"></i>
                                                <b>81</b> Tasks
                                            </span>
                                <span class="text-nowrap mb-2 d-inline-block">
                                                <i class="mdi mdi-comment-multiple-outline text-muted"></i>
                                                <b>103</b> Comments
                                            </span>
                            </p>
                            <div id="tooltip-container1">
                                <a href="javascript:void(0);" data-bs-container="#tooltip-container1"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Mat Helme"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-1.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container1"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Michael Zenaty"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-2.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container1"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="James Anderson"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-3.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>
                                <a href="javascript:void(0);" class="d-inline-block text-muted fw-bold ms-2">
                                    +3 more
                                </a>
                            </div>
                        </div> <!-- end card-body-->
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item p-3">
                                <!-- project progress-->
                                <p class="mb-2 fw-bold">Progress <span class="float-end">28%</span></p>
                                <div class="progress progress-sm">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="28" aria-valuemin="0"
                                         aria-valuemax="100" style="width: 28%;">
                                    </div><!-- /.progress-bar -->
                                </div><!-- /.progress -->
                            </li>
                        </ul>
                    </div> <!-- end card-->
                </div> <!-- end col -->
                <div class="col-md-6 col-xxl-3">
                    <!-- project card -->
                    <div class="card d-block">
                        <div class="card-body">
                            <div class="dropdown card-widgets">
                                <a href="#" class="dropdown-toggle arrow-none" data-bs-toggle="dropdown"
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
                            <h4 class="mt-0">
                                <a href="apps-projects-details.html" class="text-title">Poster illustation design</a>
                            </h4>
                            <div class="badge bg-secondary text-light mb-3">Ongoing</div>

                            <p class="text-muted font-13 mb-3">Anim pariatur cliche reprehenderit, enim eiusmod high
                                life
                                accusamus terry richardson ad squid...<a href="javascript:void(0);"
                                                                         class="fw-bold text-muted">view more</a>
                            </p>

                            <!-- project detail-->
                            <p class="mb-1">
                                            <span class="pe-2 text-nowrap mb-2 d-inline-block">
                                                <i class="mdi mdi-format-list-bulleted-type text-muted"></i>
                                                <b>12</b> Tasks
                                            </span>
                                <span class="text-nowrap mb-2 d-inline-block">
                                                <i class="mdi mdi-comment-multiple-outline text-muted"></i>
                                                <b>482</b> Comments
                                            </span>
                            </p>
                            <div id="tooltip-container2">
                                <a href="javascript:void(0);" data-bs-container="#tooltip-container2"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Mat Helme"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-4.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container2"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Michael Zenaty"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-5.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>
                            </div>
                        </div> <!-- end card-body-->
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item p-3">
                                <!-- project progress-->
                                <p class="mb-2 fw-bold">Progress <span class="float-end">63%</span></p>
                                <div class="progress progress-sm">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="63" aria-valuemin="0"
                                         aria-valuemax="100" style="width: 63%;">
                                    </div><!-- /.progress-bar -->
                                </div><!-- /.progress -->
                            </li>
                        </ul>
                    </div> <!-- end card-->
                </div> <!-- end col -->

                <div class="col-md-6 col-xxl-3">
                    <!-- project card -->
                    <div class="card d-block">
                        <div class="card-body">
                            <div class="dropdown card-widgets">
                                <a href="#" class="dropdown-toggle arrow-none" data-bs-toggle="dropdown"
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
                            <h4 class="mt-0">
                                <a href="apps-projects-details.html" class="text-title">Drinking bottle graphics </a>
                            </h4>
                            <div class="badge bg-success mb-3">Finished</div>

                            <p class="text-muted font-13 mb-3">Some quick example text to build on the card title and
                                make
                                up the bulk of the card's content...<a href="javascript:void(0);"
                                                                       class="fw-bold text-muted">view more</a>
                            </p>

                            <!-- project detail-->
                            <p class="mb-1">
                                            <span class="pe-2 mb-2 d-inline-block text-nowrap">
                                                <i class="mdi mdi-format-list-bulleted-type text-muted"></i>
                                                <b>50</b> Tasks
                                            </span>
                                <span class="text-nowrap mb-2 d-inline-block">
                                                <i class="mdi mdi-comment-multiple-outline text-muted"></i>
                                                <b>208</b> Comments
                                            </span>
                            </p>
                            <div id="tooltip-container3">
                                <a href="javascript:void(0);" data-bs-container="#tooltip-container3"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Mat Helme"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-10.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container3"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Michael Zenaty"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-5.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container3"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="James Anderson"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-6.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>
                                <a href="javascript:void(0);" class="d-inline-block text-muted fw-bold ms-2">
                                    +2 more
                                </a>
                            </div>
                        </div> <!-- end card-body-->
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item p-3">
                                <!-- project progress-->
                                <p class="mb-2 fw-bold">Progress <span class="float-end">100%</span></p>
                                <div class="progress progress-sm">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0"
                                         aria-valuemax="100" style="width: 100%;">
                                    </div><!-- /.progress-bar -->
                                </div><!-- /.progress -->
                            </li>
                        </ul>
                    </div> <!-- end card-->
                </div> <!-- end col -->
            </div>
            <!-- end row-->

            <div class="row">

                <c:forEach var="productVO" items="${ productVOList }">
                    <div class="col-md-6 col-xxl-3" style="padding-bottom: 10%">
                        <!-- project card -->
                        <div class="card d-block">
                            <!-- project-thumbnail -->
                            <img class="card-img-top" src="${productVO.thumbnailImg}"
                                 alt="challenge deposit image cap" style="height: 40%">
                            <div class="card-img-overlay">
                                <div class="badge bg-primary text-light p-1">진행중</div>
                                <div class="badge bg-secondary text-light p-1">
                                    <i class="uil uil-user"></i>
                                        ${productVO.numberSubscribers} 명
                                </div>
                            </div>

                            <div class="card-body position-relative">
                                <!-- project title-->
                                <h4 class="mt-0">
                                    <a href="/product/challenge-deposit-details/${productVO.id}"
                                       class="text-title">${productVO.name}</a>
                                </h4>


                                <!-- project detail-->
                                <p class="text-muted font-13 mb-3">
                                        ${productVO.description}
                                    <a href="javascript:void(0);" class="fw-bold text-muted">view more</a>
                                </p>


                                <p class="mb-3">
                                    <span class="pe-2 text-nowrap">
                                        <i class="uil uil-calendar-alt"></i>
                                        <b>${productVO.period}</b> 개월
                                    </span>
                                    <span class="pe-2 text-nowrap">
                                        <i class="uil uil-thumbs-up"></i>
                                        주 <b>${productVO.authenticationFrequency}</b> 일
                                    </span>
                                    <span class="text-nowrap">
                                        <i class="uil uil-money-insert"></i>
                                        최대 <b>${productVO.preferRate}</b> %
                                    </span>

                                </p>
                                <div class="mb-3" id="tooltip-container4">
                                    <a href="javascript:void(0);" data-bs-container="#tooltip-container4"
                                       data-bs-toggle="tooltip" data-bs-placement="top" title="Mat Helme"
                                       class="d-inline-block">
                                        <img src="/assets/images/users/avatar-3.jpg" class="rounded-circle avatar-xs"
                                             alt="friend">
                                    </a>

                                    <a href="javascript:void(0);" data-bs-container="#tooltip-container4"
                                       data-bs-toggle="tooltip" data-bs-placement="top" title="Michael Zenaty"
                                       class="d-inline-block">
                                        <img src="/assets/images/users/avatar-5.jpg" class="rounded-circle avatar-xs"
                                             alt="friend">
                                    </a>

                                    <a href="javascript:void(0);" data-bs-container="#tooltip-container4"
                                       data-bs-toggle="tooltip" data-bs-placement="top" title="James Anderson"
                                       class="d-inline-block">
                                        <img src="/assets/images/users/avatar-9.jpg" class="rounded-circle avatar-xs"
                                             alt="friend">
                                    </a>
                                </div>

                                <!-- project progress-->
                                <p class="mb-2 fw-bold">Progress <span class="float-end">45%</span></p>
                                <div class="progress progress-sm">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0"
                                         aria-valuemax="100" style="width: 45%;">
                                    </div><!-- /.progress-bar -->
                                </div><!-- /.progress -->
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div>
                    <!-- end col -->
                </c:forEach>


                <div class="col-md-6 col-xxl-3">
                    <!-- project card -->
                    <div class="card d-block">
                        <!-- project-thumbnail -->
                        <img class="card-img-top" src="/assets/images/projects/project-2.jpg" alt="project image cap">
                        <div class="card-img-overlay">
                            <div class="badge bg-success p-1">Finished</div>
                        </div>

                        <div class="card-body position-relative">
                            <!-- project title-->
                            <h4 class="mt-0">
                                <a href="apps-projects-details.html" class="text-title">Landing page design - Home</a>
                            </h4>

                            <!-- project detail-->
                            <p class="mb-3">
                                            <span class="pe-2 text-nowrap">
                                                <i class="mdi mdi-format-list-bulleted-type"></i>
                                                <b>11</b> Tasks
                                            </span>
                                <span class="text-nowrap">
                                                <i class="mdi mdi-comment-multiple-outline"></i>
                                                <b>254</b> Comments
                                            </span>
                            </p>
                            <div class="mb-3" id="tooltip-container5">
                                <a href="javascript:void(0);" data-bs-container="#tooltip-container5"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Mat Helme"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-10.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container5"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Michael Zenaty"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-5.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container5"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="James Anderson"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-7.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>
                                <a href="javascript:void(0);" class="d-inline-block text-muted fw-bold ms-2">
                                    +2 more
                                </a>
                            </div>

                            <!-- project progress-->
                            <p class="mb-2 fw-bold">Progress <span class="float-end">100%</span></p>
                            <div class="progress progress-sm">
                                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0"
                                     aria-valuemax="100" style="width: 100%;">
                                </div><!-- /.progress-bar -->
                            </div><!-- /.progress -->
                        </div> <!-- end card-body-->
                    </div> <!-- end card-->
                </div> <!-- end col -->

                <div class="col-md-6 col-xxl-3">
                    <!-- project card -->
                    <div class="card d-block">
                        <!-- project-thumbnail -->
                        <img class="card-img-top" src="/assets/images/projects/project-3.jpg" alt="project image cap">
                        <div class="card-img-overlay">
                            <div class="badge bg-secondary text-light p-1">Ongoing</div>
                        </div>

                        <div class="card-body position-relative">
                            <!-- project title-->
                            <h4 class="mt-0">
                                <a href="apps-projects-details.html" class="text-title">Product page redesign</a>
                            </h4>

                            <!-- project detail-->
                            <p class="mb-3">
                                            <span class="pe-2 text-nowrap">
                                                <i class="mdi mdi-format-list-bulleted-type"></i>
                                                <b>21</b> Tasks
                                            </span>
                                <span class="text-nowrap">
                                                <i class="mdi mdi-comment-multiple-outline"></i>
                                                <b>668</b> Comments
                                            </span>
                            </p>
                            <div class="mb-3" id="tooltip-container6">
                                <a href="javascript:void(0);" data-bs-container="#tooltip-container6"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Mat Helme"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-6.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container6"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Michael Zenaty"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-7.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container6"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="James Anderson"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-8.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>
                                <a href="javascript:void(0);" class="d-inline-block text-muted fw-bold ms-2">
                                    +5 more
                                </a>
                            </div>

                            <!-- project progress-->
                            <p class="mb-2 fw-bold">Progress <span class="float-end">71%</span></p>
                            <div class="progress progress-sm">
                                <div class="progress-bar" role="progressbar" aria-valuenow="71" aria-valuemin="0"
                                     aria-valuemax="100" style="width: 71%;">
                                </div><!-- /.progress-bar -->
                            </div><!-- /.progress -->
                        </div> <!-- end card-body-->
                    </div> <!-- end card-->
                </div> <!-- end col -->

                <div class="col-md-6 col-xxl-3">
                    <!-- project card -->
                    <div class="card d-block">
                        <!-- project-thumbnail -->
                        <img class="card-img-top" src="/assets/images/projects/project-4.jpg" alt="project image cap">
                        <div class="card-img-overlay">
                            <div class="badge bg-secondary text-light p-1">Ongoing</div>
                        </div>

                        <div class="card-body position-relative">
                            <!-- project title-->
                            <h4 class="mt-0">
                                <a href="apps-projects-details.html" class="text-title">Coffee detail page - Main
                                    Page</a>
                            </h4>

                            <!-- project detail-->
                            <p class="mb-3">
                                            <span class="pe-2 text-nowrap">
                                                <i class="mdi mdi-format-list-bulleted-type"></i>
                                                <b>18</b> Tasks
                                            </span>
                                <span class="text-nowrap">
                                                <i class="mdi mdi-comment-multiple-outline"></i>
                                                <b>259</b> Comments
                                            </span>
                            </p>
                            <div class="mb-3" id="tooltip-container7">
                                <a href="javascript:void(0);" data-bs-container="#tooltip-container7"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Mat Helme"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-2.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>

                                <a href="javascript:void(0);" data-bs-container="#tooltip-container7"
                                   data-bs-toggle="tooltip" data-bs-placement="top" title="Michael Zenaty"
                                   class="d-inline-block">
                                    <img src="/assets/images/users/avatar-3.jpg" class="rounded-circle avatar-xs"
                                         alt="friend">
                                </a>
                            </div>

                            <!-- project progress-->
                            <p class="mb-2 fw-bold">Progress <span class="float-end">52%</span></p>
                            <div class="progress progress-sm">
                                <div class="progress-bar" role="progressbar" aria-valuenow="52" aria-valuemin="0"
                                     aria-valuemax="100" style="width: 52%;">
                                </div><!-- /.progress-bar -->
                            </div><!-- /.progress -->
                        </div> <!-- end card-body-->
                    </div> <!-- end card-->
                </div> <!-- end col -->
            </div>
            <!-- end row-->

        </div> <!-- End Content -->

    </div> <!-- content-page -->

</div>

<%@ include file="/WEB-INF/view/layout/footer.jsp" %>
</body>
</html>
