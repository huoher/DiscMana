<%--
  Created by IntelliJ IDEA.
  User: zqc
  Date:
 17-12-1
  Time: 下午10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>loginDao</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
</head>
<body>
<form action="login.action" method="post">
    用户名<input type="text" name="customername" class="form-control">
    <br>
    密码<input type="text" name="passwd">
    <input type="submit" value="登录" class="btn btn-primary">
</form>
<a href="register.jsp"><h1>registre</h1></a>
</body>
</html>
