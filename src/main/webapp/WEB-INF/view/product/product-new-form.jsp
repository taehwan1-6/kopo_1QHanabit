<%--
  Created by IntelliJ IDEA.
  User: kantae
  Date: 2023/09/07
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>Solartec - Renewable Energy Website Template</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
  <script defer
          src="${ pageContext.request.contextPath }/resources/assets_portal/plugins/fontawesome/js/all.min.js"></script>

  <!-- App CSS -->
  <link id="theme-style" rel="stylesheet"
        href="${ pageContext.request.contextPath }/resources/assets_portal/css/portal.css">

  <!-- Favicon -->
  <link
          href="${ pageContext.request.contextPath }/resources/img/favicon.ico"
          rel="icon">

  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
          href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap"
          rel="stylesheet">

  <!-- Icon Font Stylesheet -->
  <link
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
          rel="stylesheet">
  <link
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
          rel="stylesheet">

  <!-- Libraries Stylesheet -->
  <link
          href="${ pageContext.request.contextPath }/resources/lib/animate/animate.min.css"
          rel="stylesheet">
  <link
          href="${ pageContext.request.contextPath }/resources/lib/owlcarousel/assets/owl.carousel.min.css"
          rel="stylesheet">
  <link
          href="${ pageContext.request.contextPath }/resources/lib/lightbox/css/lightbox.min.css"
          rel="stylesheet">

  <!-- Customized Bootstrap Stylesheet -->
  <link
          href="${ pageContext.request.contextPath }/resources/css/bootstrap.min.css"
          rel="stylesheet">

  <!-- Template Stylesheet -->
  <link
          href="${ pageContext.request.contextPath }/resources/css/style.css"
          rel="stylesheet">
  <script src="https://unpkg.com/boxicons@2.1.2/dist/boxicons.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>

<div class="container-fluid sidepanel-inner d-flex flex-column"
     style="width: 20%; float: left;">
  <div style="padding-left: 30px;">
    <h3 style="color: #018c8d">금융상품</h3>
    <hr style="width: 200px; height: 5px; background-color: #018c8d">
    <div style="color: grey;">전체상품</div>
    <hr style="width: 200px;">
    <h6 style="color: black">금융 상품 가입</h6>
    <hr style="width: 200px;">
  </div>
</div>

<div class="app-wrapper">
  <div class="app-content pt-3 p-md-3 p-lg-4">
    <form action="${pageContext.request.contextPath }/product/subscription" method="post">
      <div class="container-xl">
        <div class="text-center mx-auto mt-4 wow fadeInUp"
             data-wow-delay="0.1s" style="max-width: 600px;">
          <h6 style="color: #018c8d;">
            Hana 1Qurator <span style="color: #ff328b">MY금융</span>
          </h6>
          <h2>금융상품 가입</h2>
        </div>
        <!-- intro  -->
        <div class="row g-4">
          <div class="col-12 col-lg-12">
            <h5 class="mb-4 mt-5 text-primary">가입 상품</h5>
            <div class="table-responsive mb-5 pb-5">
              <table class="table table-borderd"
                     style="border-left: 3px solid; border-left-color: #08a294;">
                <tr>
                  <td class="p-3"
                      style="width: 25%; background-color: #F2FCF5; color: black;">출금
                    선택 상품 유형</td>
                  <td class="p-3" style="width: 25%;">
                    <div style="color: black;"><h5>적금</h5></div>
                  </td>

                  <td class="p-3"
                      style="width: 25%; background-color: #F2FCF5; color: black;">가입
                    상품 명</td>
                  <td class="p-3" style="width: 25%;">
                    <div style="color: black;"><h5>${savings.productName }</h5></div>
                    <input type="hidden" name="accountName" value="${savings.productName }">
                  </td>
                </tr>
              </table>
            </div>
            <!-- //table0  -->

            <h5 class="mb-4 text-primary">가입 정보</h5>
            <div class="table-responsive mb-5">
              <table class="table"
                     style="border-top: 1.5px solid; border-top-color: #08a294;">
                <tr>
                  <td class="p-3"
                      style="width: 30%; background-color: #f8f8f8; color: black;">출금
                    계좌 선택</td>
                  <td class="d-flex p-3">
                    <div class="form-check">
                      <input name="bankCode" class="form-check-input" type="radio"
                             value="hanaAccount" id="hanaAccount" /> <label
                            class="form-check-label" for="hanaAccount"> 하나은행</label>
                    </div>
                    <div class="form-check">
                      <input name="bankCode" class="form-check-input ms-2"
                             type="radio" value="otherAccount" id="otherAccount" checked />
                      <label class="form-check-label ms-1" for="otherAccount">
                        타은행 </label>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td class="p-3"
                      style="width: 30%; background-color: #f8f8f8; color: black;">출금
                    계좌 번호</td>
                  <td class="p-3">
                    <select class="form-select"
                            id="exampleFormControlSelect1"
                            aria-label="Default select example">
                      <option selected>출금 계좌를 선택해주세요</option>
                      <c:forEach items="${account }" var="account" varStatus="status">
                        <c:if test="${account.accountType eq '입출금계좌' }">
                          <option value="${account.accountNo}">[${account.bankCode}] | ${account.accountNo } | ${account.accountName }</option>
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
                     style="border-top: 1.5px solid; border-top-color: #08a294;">
                <tr>
                  <td class="p-3"
                      style="width: 30%; background-color: #f8f8f8; color: black;">신규금액</td>
                  <td class="d-flex p-3"><span class="mt-1">총 신규 금액</span>
                    <div class="form-check m-0">
                      <input name="firstMoney" class="form-input w-50" type="text"
                             value="" id="firstMoney"
                             style="background-color: #F2FCF5; text-align: right; border-color: #f8f8f8;" />
                      <label class="form-check-label" for="defaultRadio1">
                        원 </label>
                    </div></td>
                </tr>
                <tr>
                  <td class="p-3"
                      style="width: 30%; background-color: #f8f8f8; color: black;">적립
                    방법 선택</td>
                  <td class="p-3 d-flex">
                    <div class="form-check">
                      <input name="savingsType" class="form-check-input"
                             type="radio" value="savingsTypeFree" id="savingsTypeFree" />
                      <label class="form-check-label" for="savingsTypeFree">
                        자유적립식(자유적금)</label>
                    </div>
                    <div class="form-check">
                      <input name="savingsType" class="form-check-input ms-2"
                             type="radio" value="savingsTypeRegular"
                             id="savingsTypeRegular" checked /> <label
                            class="form-check-label ms-1" for="savingsTypeRegular">
                      정액적립식(정기적금)</label>
                    </div>
                  </td>
                </tr>

                <tr>
                  <td class="p-3 mt-1"
                      style="width: 30%; background-color: #f8f8f8; color: black;">가입
                    기간</td>
                  <td class="p-3"><select class="form-select"
                                          id="exampleFormControlSelect2"
                                          aria-label="Default select example">
                    <option selected>가입기간을 선택하세요</option>
                    <c:forEach var="i" begin="6" end="60">
                      <option value="<c:out value="${i}" />"><c:out
                              value="${i}" />개월
                      </option>
                    </c:forEach>
                  </select></td>
                </tr>
                <tr>
                  <td class="p-3"
                      style="width: 30%; background-color: #f8f8f8; color: black;">신규
                    계좌 비밀번호(4자리)</td>
                  <td class="d-flex p-3">
                    <div class="form-check m-0 p-0 ">
                      <input name="accountpwd" class="form-input w-50"
                             type="password" value="" id="accountpwd"
                             style="background-color: #F2FCF5; text-align: right; border-color: #f8f8f8;" />
                    </div>
                  </td>
                </tr>
                <tr>
                  <td class="p-3"
                      style="width: 30%; background-color: #f8f8f8; color: black;">비밀번호
                    재입력</td>
                  <td class="d-flex p-3">
                    <div class="form-check m-0 p-0">
                      <input name="accountpwdAgain" class="form-input w-50"
                             type="password" value="" id="accountpwdAgain"
                             style="background-color: #F2FCF5; text-align: right; border-color: #f8f8f8;" />
                      <span> </span>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td class="p-3"
                      style="width: 30%; background-color: #f8f8f8; color: black;">SMS
                    만기일 알림</td>
                  <td class="p-3 d-flex">
                    <div class="form-check">
                      <input name="agreeSMS" class="form-check-input" type="radio"
                             value="yes" id="agreeSMS" /> <label
                            class="form-check-label" for="agreeSMS"> 동의 </label>
                    </div>
                    <div class="form-check">
                      <input name="agreeSMS" class="form-check-input ms-2"
                             type="radio" value="no" id="disagreeSMS" checked /> <label
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
    </form>
  </div>

</div>


</body>
</html>
