<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: huoher
  Date: 17-12-26
  Time: 下午4:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>testlistDiscm</title>
</head>
<body>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
<head></head>
<body>


<pg:pager url="testlistDiscm.jsp" maxPageItems = "3" maxIndexPages="3" export="offset,currentPageNumber=pageNumber" isOffset="false"  index="half-full"  >
    <table width="778" border="0" cellPadding="0" cellSpacing="1" bgcolor="#6386d6">
        <tr bgcolor="#EFF3F7">
            <TD align="center">书名</TD>
            <TD align="center">价格</TD>

        </tr>
        <c:if test="${!empty discms}">
            <c:forEach items="${discms}" var="discm">
                <pg:item>
                    <tr bgcolor="#EFF3F7">
                        <td align="center">${discm.name }</td>
                        <td align="center">${discm.id }</td>
                    </tr>
                </pg:item>
            </c:forEach>
        </c:if>
        <c:if test="${empty discms}">
            <tr>
                <td colspan="5" align="center" bgcolor="#EFF3F7">
                    没有找到相应的记录
                </td>
            </tr>
        </c:if>
    </table>

    <%-- 定义分页风格：普通风格 --%>
    <pg:index>
        <pg:first>
            <a href="${pageUrl}">首页</a>
        </pg:first>
        <pg:prev>
            <a href="${pageUrl }">上一页</a>
        </pg:prev>
        <pg:pages>
            <c:choose>
                <%--当循环页码是当前页码，则该页码不可以导航，并显示为红色--%>
                <c:when test="${currentPageNumber eq pageNumber}">
                    <font color="red">[${pageNumber }]</font>
                </c:when>

                <%-- 当循环页码不是当前页码，则该页码可以导航 --%>
                <c:otherwise>
                    <a href="${pageUrl }">[${pageNumber }]</a>
                </c:otherwise>
            </c:choose>
        </pg:pages>
        <pg:next>
            <a href="${pageUrl }">下一页</a>
        </pg:next>
        <pg:last>
            <a href="${pageUrl }">尾页</a>
        </pg:last>
    </pg:index>
</pg:pager>

</body>
</html>
