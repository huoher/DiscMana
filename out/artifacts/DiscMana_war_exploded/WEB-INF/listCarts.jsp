<%--
  Created by IntelliJ IDEA.
  User: huoher
  Date: 17-12-6
  Time: 下午11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>listCarts</title>
</head>
<body>
<table>
    <tr>
        <th>专辑编号</th>
        <th>专辑名称</th>
        <th>歌手</th>
        <th>发行公司</th>
        <th>发行时间</th>

    </tr>

    <c:forEach items="${ListCarts}" var="ListCart" >
        <tr>
            <td><c:out value="${ListCart.id}"/></td>
            <td><c:out value="${ListCart.name}"/></td>
            <td><c:out value="${ListCart.singer}"/></td>
            <td><c:out value="${ListCart.company}"/></td>
            <td><c:out value="${ListCart.issuedate}"></c:out></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
