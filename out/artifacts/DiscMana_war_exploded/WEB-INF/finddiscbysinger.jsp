<%--
  Created by IntelliJ IDEA.
  User: huoher
  Date: 17-12-24
  Time: 下午4:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>按歌手查看唱片</title>
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

    <c:forEach items="${discbysinger}" var="disc" >
        <tr>
            <td><c:out value="${disc.id}"/></td>
            <td><c:out value="${disc.name}"/></td>
            <td><c:out value="${disc.singer}"/></td>
            <td><c:out value="${disc.company}"/></td>
            <td><c:out value="${disc.issuedate}"></c:out></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
