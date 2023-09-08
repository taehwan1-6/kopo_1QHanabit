<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <%@include file="../layout/head.jsp"%>
</head>

    <body>

    <%@include file="../layout/navbar.jsp"%>
        
        <!-- Start Content-->
        <div class="container">

                <div class="content-page">
                    <div class="content">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <h4 class="page-title">상품 가입</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-5">
                                                <!-- Product image -->
                                                <a href="javascript: void(0);" class="text-center d-block mb-4">
                                                    <img src="${productVO.imgPath}" class="img-fluid" style="max-width: 280px;" alt="Product-img" />
                                                </a>
                                            </div> <!-- end col -->
                                            <div class="col-lg-7">
                                                <form class="ps-lg-4">
                                                    <!-- Product title -->
                                                    <h3 class="mt-0">${productVO.name} <a href="javascript: void(0);" class="text-muted"><i class="mdi ms-2"></i></a> </h3>
                                                    <p class="mb-1">${productVO.createdAt}(기준, 세전)</p>

                                                    <!-- Product stock -->
                                                    <div class="mt-3">
                                                        <h4><span class="badge badge-success-lighten">가입가능</span></h4>
                                                    </div>

                                                    <!-- Product description -->
                                                    <div class="mt-4">
                                                        <h2 class="font-14">상품특징:</h2>
                                                        <p>급여 하나로 OK! 월복리로 이자에 이자가 OK!</p>
                                                    </div>

                                                    <!-- Product description -->
                                                    <div class="mt-4">
                                                        <h2 class="font-14">가입대상:</h2>
                                                        <p>실명의 개인 또는 개인사업자 (1인 1계좌)
                                                            (연금하나 월복리 적금 또는 주거래하나 월복리 적금과 중복 가입 불가)</p>
                                                    </div>

                                                    <!-- Product description -->
                                                    <div class="mt-4">
                                                        <h3 class="font-14">가입기간(개월):</h3>
                                                        <h6>최소: ${productVO.minPeriod} 개월</h6>
                                                        <h6>최대: ${productVO.maxPeriod} 개월</h6>
                                                    </div>

                                                    <!-- Product description -->
                                                    <div class="mt-4">
                                                        <h3 class="font-14">가입금액(원):</h3>
                                                        <h6>최소: ${productVO.minPayment} 원</h6>
                                                        <h6>최대: ${productVO.maxPayment} 원</h6>
                                                    </div>



                                                    <!-- Product description -->
                                                    <div class="mt-4">
                                                        <h3 class="font-14">주 최대납입횟수:</h3>
                                                        <h6>최대: 주 ${productVO.maxCount} 회</h6>
                                                    </div>


                                                    <!-- Product description -->
                                                    <div class="mt-4">
                                                        <h3 class="font-14">기본금리:</h3>
                                                        <h6>${productVO.baseRate}0 %</h6>
                                                    </div>

                                                    <!-- Product description -->
                                                    <div class="mt-4">
                                                        <h3 class="font-14">우대금리:</h3>
                                                        <h6>최대: ${productVO.baseRate + 2.0}0 %</h6>
                                                    </div>


<%--                                                    <form>--%>
<%--                                                        <!-- 입력 폼 시작 -->--%>
<%--                                                        <div class="mt-4 d-flex">--%>
<%--                                                            <h6 class="font-14">가입기간 선택</h6>--%>
<%--                                                            <div class="d-flex ms-2">--%>
<%--                                                                <input type="number" min="${productVO.minPeriod}" max="${productVO.maxPeriod}" value="${productVO.minPeriod}" class="form-control" placeholder="개월" style="width: 90px;">--%>
<%--&lt;%&ndash;                                                                <h6 class="ms-2">개월</h6>&ndash;%&gt;--%>
<%--                                                                <button type="button" class="btn btn-light ms-2"><i class="mdi"></i>선택</button>--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                        <!-- 입력 끝 -->--%>
<%--                                                        <!-- 입력 폼 시작 -->--%>
<%--                                                        <div class="mt-4 d-flex">--%>
<%--                                                            <h6 class="font-14">가입금액 선택</h6>--%>
<%--                                                            <div class="d-flex ms-2">--%>
<%--                                                                <input type="number" min="${productVO.minPayment}" max="${productVO.maxPayment}" value="${productVO.minPayment}" class="form-control" placeholder="원" style="width: 110px;">--%>
<%--&lt;%&ndash;                                                                <h6 class="ms-2">원</h6>&ndash;%&gt;--%>
<%--                                                                <button type="button" class="btn btn-light ms-2"><i class="mdi"></i>선택</button>--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                        <!-- 입력 끝 -->--%>
<%--                                                        <!-- 입력 폼 시작 -->--%>
<%--                                                        <div class="mt-4 d-flex">--%>
<%--                                                            <h6 class="font-14">납입횟수 선택</h6>--%>
<%--                                                            <div class="d-flex ms-2">--%>
<%--                                                                <input type="number" min="1" max="${productVO.maxCount}" value="${productVO.maxCount}" class="form-control" placeholder="회" style="width: 90px;">--%>
<%--&lt;%&ndash;                                                                <h6 class="ms-2">회</h6>&ndash;%&gt;--%>
<%--                                                                <button type="button" class="btn btn-light ms-2"><i class="mdi"></i>선택</button>--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                        <!-- 입력 끝 -->--%>
<%--                                                    </form>--%>



<%--                                                    <!-- Product information -->--%>
<%--                                                    <div class="mt-4">--%>
<%--                                                        <div class="row">--%>
<%--                                                            <div class="col-md-4">--%>
<%--                                                                <h6 class="font-14">Available Stock:</h6>--%>
<%--                                                                <p class="text-sm lh-150">1784</p>--%>
<%--                                                            </div>--%>
<%--                                                            <div class="col-md-4">--%>
<%--                                                                <h6 class="font-14">Number of Orders:</h6>--%>
<%--                                                                <p class="text-sm lh-150">5,458</p>--%>
<%--                                                            </div>--%>
<%--                                                            <div class="col-md-4">--%>
<%--                                                                <h6 class="font-14">Revenue:</h6>--%>
<%--                                                                <p class="text-sm lh-150">$8,57,014</p>--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>

                                                </form>
                                            </div> <!-- end col -->
                                        </div> <!-- end row-->



                                        <h3 class="mt-5 text-center">이용 약관<a href="javascript: void(0);" class="text-muted"><i class="mdi ms-2"></i></a> </h3>
                                        <div class="container">
                                            <%@ include file="../common/terms/terms-conditions.jsp"%>
                                        </div>



                                        <!-- 가입 버튼 시작 -->
                                        <!-- 추후 동의 항목을 누르지 않으면 가입하기 안눌러지게 바꿔야함 -->
                                        <div style="display: flex; justify-content: center; align-items: center;">
                                            <form class="p-3 m-n1" action="${pageContext.request.contextPath}/shoppingProductJoin2" method="post">
                                                <input type="hidden" id="savingCode" name="savingCode" value="${productVO.id}">
                                                <button type="submit" class="btn btn-success">가입하기</button>
                                            </form>
                                            <a href="/fin-products" class="btn btn-light">목록으로</a>
                                        </div>

                                        <!-- 가입 버튼 끝 -->



                                    </div> <!-- end card-body-->
                                </div> <!-- end card-->
                            </div> <!-- end col-->
                        </div>
                        <!-- end row-->
                        
                    </div> <!-- End Content -->




                </div> <!-- content-page -->

        </div>
        <!-- END Container -->




    <%@include file="../layout/footer.jsp"%>
        
    </body>
</html>
