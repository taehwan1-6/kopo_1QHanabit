<%--
  Created by IntelliJ IDEA.
  User: kantae
  Date: 2023/09/01
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <%@ include file="../layout/head.jsp" %>
</head>
<body>

<%@ include file="../layout/navbar.jsp" %>

<div class="container">
    <div class="card">
        <div class="card-body">
            <h4 class="header-title">Simple Pie Chart</h4>
            <div dir="ltr">
                <div id="simple-pie" class="apex-charts" data-colors="#35b8e0,#6c757d,#10c469,#ff5b5b,#e3eaef"></div>
            </div>
        </div>
        <!-- end card body-->
    </div>
    <!-- end card -->


    <table border=1 width=550 align="center">
        <thead>
        <tr class="tab-3">

            <th style="width:30%; font-family: 'InfinitySans-RegularA1'">카테고리</th>
            <th style="width:30%; font-family: 'InfinitySans-RegularA1'">소비액</th>
            <th colspan='3' style="width:40%; text-align: center; font-family: 'InfinitySans-RegularA1'">전월대비</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${consumeStats}" var="consumeStats" varStatus="loop">
            <tr>
                <td class="table-light">${consumeStats['CATEGORY']}</td>
                <td class="table-light"><fmt:formatNumber value="${consumeStats['SUM'] }" pattern="#,###원"/></td>
                <td class="table-light">${consumeStats['RATE']}</td>
                <td class="table-light"><fmt:formatNumber value="${consumeStats['DIFFERENCE'] }" pattern="#,###원"/></td>
                <td>
                    <c:choose>
                        <c:when test="${consumeStats['DIFFERENCE'] lt 0}">
                            <img src="./image/img/down.png" style="width: 10px; height: 10px">
                        </c:when>
                        <c:otherwise>
                            <img src="./image/img/up.png" style="width: 10px; height: 10px">
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


</div>
<!-- end container-->

<%@ include file="../layout/footer.jsp" %>


</body>
</html>
