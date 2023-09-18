<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@ include file="/WEB-INF/view/layout/head.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/view/layout/navbar.jsp" %>

<div class="app-wrapper">
    <div class="app-content pt-3 p-md-3 p-lg-4">
        <form action="${pageContext.request.contextPath}/product/challenge-deposits/${productVO.id}/add" method="post">

            <!-- input 히든 -->
            <input type="hidden" name="challengeDepositProductId" value="${ productVO.id }">

            <div class="container-xxl py-5">

                <div class="text-center mx-auto mb-5 wow fadeInUp"
                     data-wow-delay="0.1s" style="max-width: 600px;">
                    <h6 class="text-primary">${productVO.name}</h6>
                    <h2 class="mb-4">금융상품 가입</h2>
                </div>

                <!-- intro  -->
                <div class="card">
                    <div class="card-body">

                        <div class="row g-4">
                            <div class="col-12 col-lg-12">
                                <h5 class="mb-3 mt-2 text-primary">가입 상품</h5>
                                <div class="table-responsive mb-5 pb-5">
                                    <table class="table table-borderd"
                                           style="border-left: 3px solid; border-left-color: #7a60f2;">
                                        <tr>
                                            <td class="p-3"
                                                style="width: 25%; background-color: #ece6f8; color: black;">상품 유형
                                            </td>
                                            <td class="p-3" style="width: 25%;">
                                                <div style="color: black;"><h5>${ productVO.type }</h5></div>
                                                <input type="hidden" name="type" value="${ productVO.type }">
                                            </td>

                                            <td class="p-3"
                                                style="width: 25%; background-color: #ece6f8; color: black;">가입
                                                상품명
                                            </td>
                                            <td class="p-3" style="width: 25%;">
                                                <div style="color: black;"><h5>${ productVO.name }</h5></div>
                                                <input type="hidden" name="accountName" value="${ productVO.name }">
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <!-- //table0  -->

                                <h5 class="mb-4 text-primary">가입 정보</h5>
                                <div class="table-responsive mb-5">
                                    <table class="table"
                                           style="border-top: 1.5px solid; border-top-color: #7a60f2;">
                                        <tr>
                                            <td class="p-3"
                                                style="width: 30%; background-color: #f8f8f8; color: black;">출금
                                                계좌 선택
                                            </td>
                                            <td class="d-flex p-3">
                                                <div class="form-check">
                                                    <input name="bankCode" class="form-check-input" type="radio"
                                                           value="하나" id="hanaAccount" checked/> <label
                                                        class="form-check-label" for="hanaAccount"> 하나은행</label>
                                                </div>
                                                <%--                                                <div class="form-check">--%>
                                                <%--                                                    <input name="bankCode" class="form-check-input ms-2"--%>
                                                <%--                                                           type="radio" value="otherAccount" id="otherAccount"/>--%>
                                                <%--                                                    <label class="form-check-label ms-1" for="otherAccount">--%>
                                                <%--                                                        타은행 </label>--%>
                                                <%--                                                </div>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-3"
                                                style="width: 30%; background-color: #f8f8f8; color: black;">출금
                                                계좌 번호
                                            </td>
                                            <td class="p-3">
                                                <select class="form-select"
                                                        id="exampleFormControlSelect1"
                                                        aria-label="Default select example"
                                                        name="linkedAccountNumber">
                                                    <option selected>출금 계좌를 선택해주세요</option>
                                                    <c:forEach items="${basicAccounts}" var="basicAccount">
                                                        <c:if test="${basicAccount.type eq '입출금' }">
                                                            <option value="${basicAccount.number}">
                                                                [${basicAccount.bankCode}]
                                                                | ${basicAccount.number }
                                                                | ${basicAccount.productName }</option>
                                                        </c:if>
                                                    </c:forEach>
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <!-- //table1  -->


                                <!-- table2  -->
                                <div class="table-responsive">
                                    <table class="table table-bordered border-medium"
                                           style="border-top: 1.5px solid; border-top-color: #b4a7ee;">
                                        <tr>
                                            <td class="p-3"
                                                style="width: 30%; background-color: #f8f8f8; color: black;">신규금액
                                            </td>
                                            <td class="d-flex p-3"><span class="mt-1">총 신규 금액</span>
                                                <div class="form-check m-0">
                                                    <input name="subscriptionPayment" class="form-input w-50"
                                                           type="text"
                                                           value="" id="subscriptionPayment"
                                                           style="background-color: #ece6f8; text-align: right; border-color: #f8f8f8;"/>
                                                    <label class="form-check-label">원</label>
                                                </div>
                                            </td>
                                        </tr>


                                        <%--                                                                                <tr>--%>
                                        <%--                                                                                    <td class="p-3"--%>
                                        <%--                                                                                        style="width: 30%; background-color: #f8f8f8; color: black;">적립--%>
                                        <%--                                                                                        방법 선택--%>
                                        <%--                                                                                    </td>--%>
                                        <%--                                                                                    <td class="p-3 d-flex">--%>
                                        <%--                                                                                        <div class="form-check">--%>
                                        <%--                                                                                            <input name="savingsType" class="form-check-input"--%>
                                        <%--                                                                                                   type="radio" value="savingsTypeFree" id="savingsTypeFree"/>--%>
                                        <%--                                                                                            <label class="form-check-label" for="savingsTypeFree">--%>
                                        <%--                                                                                                자유적립식(자유적금)</label>--%>
                                        <%--                                                                                        </div>--%>
                                        <%--                                                                                        <div class="form-check">--%>
                                        <%--                                                                                            <input name="savingsType" class="form-check-input ms-2"--%>
                                        <%--                                                                                                   type="radio" value="savingsTypeRegular"--%>
                                        <%--                                                                                                   id="savingsTypeRegular" checked/> <label--%>
                                        <%--                                                                                                class="form-check-label ms-1" for="savingsTypeRegular">--%>
                                        <%--                                                                                            정액적립식(정기적금)</label>--%>
                                        <%--                                                                                        </div>--%>
                                        <%--                                                                                    </td>--%>
                                        <%--                                                                                </tr>--%>

                                        <%--                                                                                <tr>--%>
                                        <%--                                                                                    <td class="p-3 mt-1"--%>
                                        <%--                                                                                        style="width: 30%; background-color: #f8f8f8; color: black;">가입--%>
                                        <%--                                                                                        기간--%>
                                        <%--                                                                                    </td>--%>
                                        <%--                                                                                    <td class="p-3"><select class="form-select"--%>
                                        <%--                                                                                                            id="exampleFormControlSelect2"--%>
                                        <%--                                                                                                            aria-label="Default select example">--%>
                                        <%--                                                                                        <option selected>가입기간을 선택하세요</option>--%>
                                        <%--                                                                                        <c:forEach var="i" begin="6" end="60">--%>
                                        <%--                                                                                            <option value="<c:out value="${i}" />"><c:out--%>
                                        <%--                                                                                                    value="${i}"/>개월--%>
                                        <%--                                                                                            </option>--%>
                                        <%--                                                                                        </c:forEach>--%>
                                        <%--                                                                                    </select></td>--%>
                                        <%--                                                                                </tr>--%>

                                        <tr>
                                            <td class="p-3 mt-1"
                                                style="width: 30%; background-color: #f8f8f8; color: black;">가입
                                                기간
                                            </td>
                                            <td class="p-3">${productVO.period}개월</td>
                                            <input type="hidden" name="subscriptionPeriod" value="${productVO.period}">
                                        </tr>

                                        <tr>
                                            <td class="p-3 mt-1"
                                                style="width: 30%; background-color: #f8f8f8; color: black;">인증 빈도
                                            </td>
                                            <td class="p-3">
                                                주 ${productVO.weeklyAuthFrequency}일<br>
                                                일 ${productVO.dailyAuthFrequency}회
                                                <input type="hidden" name="weeklyAuthFrequency"
                                                       value="${productVO.weeklyAuthFrequency}">
                                                <input type="hidden" name="dailyAuthFrequency"
                                                       value="${productVO.dailyAuthFrequency}">
                                            </td>


                                        </tr>


                                        <tr>
                                            <td class="p-3"
                                                style="width: 30%; background-color: #f8f8f8; color: black;">신규 계좌
                                                비밀번호(4자리)
                                            </td>
                                            <td class="d-flex p-3">
                                                <div class="form-check m-0 p-0 ">
                                                    <input name="accountPassword" class="form-input w-50"
                                                           type="password" value="" id="accountpwd"
                                                           style="background-color: #ece6f8; text-align: right; border-color: #f8f8f8;"/>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-3"
                                                style="width: 30%; background-color: #f8f8f8; color: black;">비밀번호 재입력
                                            </td>
                                            <td class="d-flex p-3">
                                                <div class="form-check m-0 p-0">
                                                    <input name="accountPassword" class="form-input w-50"
                                                           type="password" value="" id="accountpwdAgain"
                                                           style="background-color: #ece6f8; text-align: right; border-color: #f8f8f8;"/>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-3"
                                                style="width: 30%; background-color: #f8f8f8; color: black;">SMS
                                                만기일 알림
                                            </td>
                                            <td class="p-3 d-flex">
                                                <div class="form-check">
                                                    <input name="smsExpiryNotification" class="form-check-input"
                                                           type="radio"
                                                           value="yes" id="agreeSMS"/>
                                                    <label class="form-check-label" for="agreeSMS"> 동의 </label>
                                                </div>
                                                <div class="form-check">
                                                    <input name="smsExpiryNotification" class="form-check-input ms-2"
                                                           type="radio" value="no" id="disagreeSMS" checked/>
                                                    <label class="form-check-label ms-1" for="disagreeSMS"> 미동의</label>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <div class="mt-5 mb-5" style="text-align: center;">
                                        <input type="submit" class="btn btn-primary m-2" value="제출"
                                               style="padding-left: 100px; padding-right: 100px;">
                                        <input type="button"
                                               class="btn btn-secondary m-2" value="취소"
                                               style="padding-left: 100px; padding-right: 100px;">
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>


            </div>
        </form>
    </div>

</div>

<%@ include file="/WEB-INF/view/layout/footer.jsp" %>
</body>
</html>
