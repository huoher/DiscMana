<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: huoher
  Date: 17-12-11
  Time: 下午5:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>歌手列表</title>
</head>
<body>
<table>
    <tr>
        <th>歌手姓名</th>
        <th>操作</th>
    </tr>

    <c:forEach items="${singers}" var="singer" >
        <tr>
            <td><c:out value="${singer.name}"/></td>
            <td><a href="/findDiscBySinger.action?singerid=${singer.id}">查看他（她）的专辑</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
