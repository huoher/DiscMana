<%--
  Created by IntelliJ IDEA.
  User: huoher
  Date: 17-12-24
  Time: 下午5:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理人员登录</title>
</head>
<body>
<form action="ManaLogin.action" method="post">
    用户名<input type="text" name="username" class="form-control">
    <br>
    密码<input type="text" name="passwd">
    <input type="submit" value="登录" class="btn btn-primary">
</form>
</body>
</html>
