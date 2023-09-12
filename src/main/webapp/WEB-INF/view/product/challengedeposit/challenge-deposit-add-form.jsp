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
                                                <div style="color: black;"><h5>예금</h5></div>
                                            </td>

                                            <td class="p-3"
                                                style="width: 25%; background-color: #ece6f8; color: black;">가입
                                                상품 명
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
                                                           value="hanaAccount" id="hanaAccount"/> <label
                                                        class="form-check-label" for="hanaAccount"> 하나은행</label>
                                                </div>
                                                <div class="form-check">
                                                    <input name="bankCode" class="form-check-input ms-2"
                                                           type="radio" value="otherAccount" id="otherAccount" checked/>
                                                    <label class="form-check-label ms-1" for="otherAccount">
                                                        타은행 </label>
                                                </div>
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
                                                        aria-label="Default select example">
                                                    <option selected>출금 계좌를 선택해주세요</option>
                                                    <c:forEach items="${account }" var="account" varStatus="status">
                                                        <c:if test="${account.accountType eq '입출금계좌' }">
                                                            <option value="${account.accountNo}">[${account.bankCode}]
                                                                | ${account.accountNo }
                                                                | ${account.accountName }</option>
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
                                                    <input name="firstMoney" class="form-input w-50" type="text"
                                                           value="" id="firstMoney"
                                                           style="background-color: #ece6f8; text-align: right; border-color: #f8f8f8;"/>
                                                    <label class="form-check-label" for="defaultRadio1">
                                                        원 </label>
                                                </div>
                                            </td>
                                        </tr>


                                        <%--                                        <tr>--%>
                                        <%--                                            <td class="p-3"--%>
                                        <%--                                                style="width: 30%; background-color: #f8f8f8; color: black;">적립--%>
                                        <%--                                                방법 선택--%>
                                        <%--                                            </td>--%>
                                        <%--                                            <td class="p-3 d-flex">--%>
                                        <%--                                                <div class="form-check">--%>
                                        <%--                                                    <input name="savingsType" class="form-check-input"--%>
                                        <%--                                                           type="radio" value="savingsTypeFree" id="savingsTypeFree"/>--%>
                                        <%--                                                    <label class="form-check-label" for="savingsTypeFree">--%>
                                        <%--                                                        자유적립식(자유적금)</label>--%>
                                        <%--                                                </div>--%>
                                        <%--                                                <div class="form-check">--%>
                                        <%--                                                    <input name="savingsType" class="form-check-input ms-2"--%>
                                        <%--                                                           type="radio" value="savingsTypeRegular"--%>
                                        <%--                                                           id="savingsTypeRegular" checked/> <label--%>
                                        <%--                                                        class="form-check-label ms-1" for="savingsTypeRegular">--%>
                                        <%--                                                    정액적립식(정기적금)</label>--%>
                                        <%--                                                </div>--%>
                                        <%--                                            </td>--%>
                                        <%--                                        </tr>--%>

                                        <%--                                        <tr>--%>
                                        <%--                                            <td class="p-3 mt-1"--%>
                                        <%--                                                style="width: 30%; background-color: #f8f8f8; color: black;">가입--%>
                                        <%--                                                기간--%>
                                        <%--                                            </td>--%>
                                        <%--                                            <td class="p-3"><select class="form-select"--%>
                                        <%--                                                                    id="exampleFormControlSelect2"--%>
                                        <%--                                                                    aria-label="Default select example">--%>
                                        <%--                                                <option selected>가입기간을 선택하세요</option>--%>
                                        <%--                                                <c:forEach var="i" begin="6" end="60">--%>
                                        <%--                                                    <option value="<c:out value="${i}" />"><c:out--%>
                                        <%--                                                            value="${i}"/>개월--%>
                                        <%--                                                    </option>--%>
                                        <%--                                                </c:forEach>--%>
                                        <%--                                            </select></td>--%>
                                        <%--                                        </tr>--%>

                                        <tr>
                                            <td class="p-3 mt-1"
                                                style="width: 30%; background-color: #f8f8f8; color: black;">가입
                                                기간
                                            </td>
                                            <td class="p-3">${productVO.period}개월</td>
                                        </tr>

                                        <tr>
                                            <td class="p-3 mt-1"
                                                style="width: 30%; background-color: #f8f8f8; color: black;">인증 빈도
                                            </td>
                                            <td class="p-3">주 ${productVO.authenticationFrequency}일</td>
                                        </tr>


                                        <tr>
                                            <td class="p-3"
                                                style="width: 30%; background-color: #f8f8f8; color: black;">신규
                                                계좌 비밀번호(4자리)
                                            </td>
                                            <td class="d-flex p-3">
                                                <div class="form-check m-0 p-0 ">
                                                    <input name="password" class="form-input w-50"
                                                           type="password" value="" id="accountpwd"
                                                           style="background-color: #ece6f8; text-align: right; border-color: #f8f8f8;"/>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-3"
                                                style="width: 30%; background-color: #f8f8f8; color: black;">비밀번호
                                                재입력
                                            </td>
                                            <td class="d-flex p-3">
                                                <div class="form-check m-0 p-0">
                                                    <input name="password" class="form-input w-50"
                                                           type="password" value="" id="accountpwdAgain"
                                                           style="background-color: #ece6f8; text-align: right; border-color: #f8f8f8;"/>
                                                    <span> </span>
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
                                                    <input name="agreeSMS" class="form-check-input" type="radio"
                                                           value="yes" id="agreeSMS"/> <label
                                                        class="form-check-label" for="agreeSMS"> 동의 </label>
                                                </div>
                                                <div class="form-check">
                                                    <input name="agreeSMS" class="form-check-input ms-2"
                                                           type="radio" value="no" id="disagreeSMS" checked/> <label
                                                        class="form-check-label ms-1" for="disagreeSMS"> 미동의
                                                </label>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <div class="mt-5 mb-5" style="text-align: center;">
                                        <input type="submit" class="btn btn-primary m-2" value="제출"
                                               style="padding-left: 100px; padding-right: 100px;"
                                               id="joinOpenBakingBtn">
                                        <input type="button"
                                               class="btn btn-secondary m-2" value="취소"
                                               style="padding-left: 100px; padding-right: 100px;"
                                               id="cancleBtn">
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
<script type="text/javascript">
    $(document)
        .ready(
            function () {
                var hanaAccount = $(
                    'input:checkbox[id="hanaACCOUNT"]').is(
                    ":checked");
                var otherAccount = $(
                    'input:checkbox[id="otherACCOUNT"]').is(
                    ":checked");
                if (hanaAccount == true || otherAccount == true) {
                    $.ajax({
                        url: '${pageContext.request.contextPath}/assert/SelectMyAssert/${loginVO.id}',
                        type: 'get',
                        success: function (data) {

                            console.log(data)
                            if (otherAccount == true) {

                            }

                            $('#livingExpenceSpan').text(
                                livingExpence + '만원');
                            $('#expectedLivingExpenceSpan')
                                .text(
                                    expectedLivingExpence
                                    + '만원');

                            $('#homeTaxBtn')
                                .click(
                                    function () {
                                        $(
                                            'input[name=livingExpence]')
                                            .attr(
                                                'value',
                                                livingExpence);
                                        $(
                                            'input[name=expectedLivingExpence]')
                                            .attr(
                                                'value',
                                                expectedLivingExpence);
                                    })

                        },
                        error: function () {
                            alert('실패')

                        }
                    })

                }
            });
</script>


<div class="container">

    <div class="mb-3">
        <label for="simpleinput" class="form-label">Text</label>
        <input type="text" id="simpleinput" class="form-control">
    </div>

    <div class="mb-3">
        <label for="example-email" class="form-label">Email</label>
        <input type="email" id="example-email" name="example-email" class="form-control" placeholder="Email">
    </div>

    <div class="mb-3">
        <label for="example-password" class="form-label">Password</label>
        <input type="password" id="example-password" class="form-control" value="password">
    </div>

    <div class="mb-3">
        <label for="password" class="form-label">Show/Hide Password</label>
        <div class="input-group input-group-merge">
            <input type="password" id="password" class="form-control" placeholder="Enter your password">
            <div class="input-group-text" data-password="false">
                <span class="password-eye"></span>
            </div>
        </div>
    </div>

    <div class="mb-3">
        <label for="example-palaceholder" class="form-label">Placeholder</label>
        <input type="text" id="example-palaceholder" class="form-control" placeholder="placeholder">
    </div>

    <div class="mb-3">
        <label for="example-textarea" class="form-label">Text area</label>
        <textarea class="form-control" id="example-textarea" rows="5"></textarea>
    </div>

    <div class="mb-3">
        <label for="example-readonly" class="form-label">Readonly</label>
        <input type="text" id="example-readonly" class="form-control" readonly="" value="Readonly value">
    </div>

    <div class="mb-3">
        <label for="example-disable" class="form-label">Disabled</label>
        <input type="text" class="form-control" id="example-disable" disabled="" value="Disabled value">
    </div>

    <div class="mb-3">
        <label for="example-static" class="form-label">Static control</label>
        <input type="text" readonly class="form-control-plaintext" id="example-static" value="email@example.com">
    </div>

    <div class="mb-3">
        <label for="example-helping" class="form-label">Helping text</label>
        <input type="text" id="example-helping" class="form-control" placeholder="Helping text">
        <span class="help-block"><small>A block of help text that breaks onto a new line and may extend beyond one line.</small></span>
    </div>

    <div class="mb-3">
        <label for="example-select" class="form-label">Input Select</label>
        <select class="form-select" id="example-select">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>
    </div>

    <div class="mb-3">
        <label for="example-multiselect" class="form-label">Multiple Select</label>
        <select id="example-multiselect" multiple class="form-control">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>
    </div>

    <div class="mb-3">
        <label for="example-fileinput" class="form-label">Default file input</label>
        <input type="file" id="example-fileinput" class="form-control">
    </div>

    <div class="mb-3">
        <label for="example-date" class="form-label">Date</label>
        <input class="form-control" id="example-date" type="date" name="date">
    </div>

    <div class="mb-3">
        <label for="example-month" class="form-label">Month</label>
        <input class="form-control" id="example-month" type="month" name="month">
    </div>

    <div class="mb-3">
        <label for="example-time" class="form-label">Time</label>
        <input class="form-control" id="example-time" type="time" name="time">
    </div>

    <div class="mb-3">
        <label for="example-week" class="form-label">Week</label>
        <input class="form-control" id="example-week" type="week" name="week">
    </div>

    <div class="mb-3">
        <label for="example-number" class="form-label">Number</label>
        <input class="form-control" id="example-number" type="number" name="number">
    </div>

    <div class="mb-3">
        <label for="example-color" class="form-label">Color</label>
        <input class="form-control" id="example-color" type="color" name="color" value="#727cf5">
    </div>

    <div class="mb-0">
        <label for="example-range" class="form-label">Range</label>
        <input class="form-range" id="example-range" type="range" name="range" min="0" max="100">
    </div>

</div>

<%@ include file="/WEB-INF/view/layout/footer.jsp" %>
</body>
</html>
