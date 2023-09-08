<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%@include file="../layout/head.jsp" %>

    <!-- Datatables css -->
    <link href="assets/css/vendor/dataTables.bootstrap5.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/vendor/responsive.bootstrap5.css" rel="stylesheet" type="text/css"/>
</head>

<body>

<%@include file="../layout/navbar.jsp" %>


<!-- <div class="content-page"> -->
<div class="container">
    <div class="content">

        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box">
                    <h4 class="page-title">적금상품</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row mb-2">
                            <div class="col-sm-5">
                                <a href="javascript:void(0);" class="btn btn-primary mb-2"><i
                                        class="mdi mdi-plus-circle me-2"></i> 적금이자계산기</a>
                                <a href="javascript:void(0);" class="btn btn-danger mb-2"><i
                                        class="mdi mdi-plus-circle me-2"></i> 비교하기(최대 3개)</a>
                            </div>
                            <div class="col-sm-7">
                                <div class="text-sm-end">
                                    <button type="button" class="btn btn-success mb-2 me-1"><i
                                            class="mdi mdi-cog-outline"></i></button>
                                    <button type="button" class="btn btn-light mb-2 me-1">Import</button>
                                    <button type="button" class="btn btn-light mb-2">Export</button>
                                </div>
                            </div><!-- end col-->
                        </div>

                        <div class="table-responsive">


                            <table id="basic-datatable" class="table dt-responsive nowrap w-100">
                                <thead>
                                <tr>
                                    <th class="all">상품명</th>
                                    <th>최소납입금액</th>
                                    <th>최대납입금액</th>
                                    <th>최소가입기간</th>
                                    <th>최대가입기간</th>
                                    <th>최대납입횟수</th>
                                    <th>기본금리</th>
                                    <th class="sorting_asc_disabled sorting_desc_disabled"></th>
                                </tr>
                                </thead>


                                <tbody>

                                <c:forEach var="productVO" items="${ savingProductVOList }">
                                    <tr>
                                        <td>
                                            <img src="${ productVO.imgPath }" alt="contact-img" title="contact-img"
                                                 class="rounded me-3" height="48"/>
                                            <p class="m-0 d-inline-block align-middle font-16">
                                                <a href="/product/product-details/${productVO.id}"
                                                   class="text-body">${ productVO.name }</a>
                                            </p>
                                        </td>
                                        <td>
                                                ${ productVO.minPayment } 원
                                        </td>
                                        <td>
                                                ${ productVO.maxPayment } 원
                                        </td>
                                        <td>
                                                ${ productVO.minPeriod } 개월
                                        </td>
                                        <td>
                                                ${ productVO.maxPeriod } 개월
                                        </td>
                                        <td>
                                                ${ productVO.maxCount } 회
                                        </td>
                                        <td>
                                                ${ productVO.baseRate }0 %
                                        </td>
                                        <td>
                                            <a href="/product/product-details/${productVO.id}" class="badge bg-success">가입하기</a>
                                        </td>
                                    </tr>

                                </c:forEach>


                                </tbody>
                            </table>

                        </div>
                    </div> <!-- end card-body-->
                </div> <!-- end card-->
            </div> <!-- end col -->
        </div><!-- end row -->
    </div><!-- End Content -->
</div>

<%@include file="../layout/footer.jsp" %>


<!-- Datatables js -->
<script src="assets/js/vendor/jquery.dataTables.min.js"></script>
<script src="assets/js/vendor/dataTables.bootstrap5.js"></script>
<script src="assets/js/vendor/dataTables.responsive.min.js"></script>
<script src="assets/js/vendor/responsive.bootstrap5.min.js"></script>

<!-- Datatable Init js -->
<script src="assets/js/pages/demo.datatable-init.js"></script>

</body>
</html>