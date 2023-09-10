<%--
  Created by IntelliJ IDEA.
  User: kantae
  Date: 2023/09/09
  Time: 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="../layout/head.jsp" %>
</head>
<body>
<%@ include file="../layout/navbar.jsp" %>

<div class="container">
    <div class="content">
        <div class="row">
            <div class="col-12">
                <div class="page-title-box m-5">
                    <h4 class="page-title">
                        "하나빗 아끼기 적금" 상품에 가입하시려면, <br>
                        마이데이터 서비스 약관 동의를 하셔야합니다.

                    </h4>
                </div>

                <%@ include file="../common/terms/mydata-terms-conditions.jsp" %>

            </div>
        </div>
    </div>
</div>

<%@ include file="../layout/footer.jsp" %>
</body>
</html>
