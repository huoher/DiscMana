<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zqc
  Date: 17-12-1
  Time: 下午11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>listDiscms</title>
</head>
<body>
<table>
    <tr>
        <th>专辑编号</th>
        <th>专辑名称</th>
        <th>歌手</th>
        <th>发行公司</th>
        <th>发行时间</th>
        <th>在架数量</th>
        <th>购买</th>
    </tr>
    <c:forEach items="${discms}" var="discm" >
        <tr>
            <td><c:out value="${discm.id}"/></td>
           <td><c:out value="${discm.name}"/></td>
            <td><c:out value="${discm.singer}"/></td>
            <td><c:out value="${discm.company}"/></td>
            <td><c:out value="${discm.issuedate}"/></td>
            <td><c:out value="${discm.num}"/></td>
            <td><a href="buyDisc.action?discid=${discm.id}">购买</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
