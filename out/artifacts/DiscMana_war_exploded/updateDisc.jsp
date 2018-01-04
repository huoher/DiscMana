<%--
  Created by IntelliJ IDEA.
  User: huoher
  Date: 17-12-24
  Time: 下午10:28
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>updateDisc</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Soft-Tect Free Landing Page</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">

    <!--Google fonts links-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">


    <!--For Plugins external css-->
    <link rel="stylesheet" href="assets/css/plugins.css" />
    <link rel="stylesheet" href="assets/css/roboto-webfont.css" />

    <!--Theme custom css -->
    <link rel="stylesheet" href="assets/css/style.css">

    <!--Theme Responsive css-->
    <link rel="stylesheet" href="assets/css/responsive.css" />

    <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body>
<h1>${sessionScope.onedisc.id}</h1>
<section id="social" class="social">
    <div class="container">
        <!-- Example row of columns -->
        <div class="row">
            <div class="social-wrapper">
                <div class="col-md-6">
                    <div class="social-icon">
                        <a href="./ar.html"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="social-contact">
                        <a href="#"><i class="fa fa-phone"></i>+011 54925849</a>
                        <a href="#"><i class="fa fa-envelope"></i>contact@softech.com</a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- /container -->
</section>

<nav class="navbar navbar-default">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><img src="assets/images/logo.png" alt="Logo" /></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <ul class="nav navbar-nav navbar-right">
                <span class="text-primary">后台管理人员界面</span>
            </ul>

        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>


<div style="padding: 100px 100px 10px;">
    <form class="bs-example bs-example-form" role="form" action="/doUpdateDisc">
        <div class="input-group">
            <span class="input-group-addon">唱片名称</span>
            <input type="text" name="name" class="form-control" value="${sessionScope.onedisc.name}">
        </div>
        <br>
        <div class="input-group">
            <span class="input-group-addon">歌手</span>
            <input type="text"  name="singer" class="form-control" value="${sessionScope.onedisc.singer}">
        </div>
        <br>

        <div class="input-group">
            <span class="input-group-addon">发行公司</span>
            <input type="text"  name="company" class="form-control" value="${sessionScope.onedisc.company}">
        </div>
        <br>

        <div class="input-group">
            <span class="input-group-addon">发行时间</span>
            <input type="text"  name="issuedate" class="form-control" value="${sessionScope.onedisc.issuedate}">
        </div>
        <br>

        <div class="input-group">
            <span class="input-group-addon">在架数量</span>
            <input type="text" name="num" class="form-control" value="${sessionScope.onedisc.num}">
        </div>
        <br>

        <button type="submit" class="btn btn-success" >提交</button>
    </form>
</div>
</body>
</html>
