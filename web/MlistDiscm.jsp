<%--
  Created by IntelliJ IDEA.
  User: huoher
  Date: 17-12-7
  Time: 下午11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg" %>
<html>
<head>
    <title>mana</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
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
<%--<table>--%>
    <%--<tr>--%>
        <%--<th>专辑编号</th>--%>
        <%--<th>专辑名称</th>--%>
        <%--<th>歌手</th>--%>
        <%--<th>发行公司</th>--%>
        <%--<th>发行时间</th>--%>
        <%--<th>在架数量</th>--%>
        <%--<th>删除</th>--%>
    <%--</tr>--%>
    <%--<c:forEach items="${discms}" var="discm" >--%>
        <%--<tr>--%>
            <%--<td><c:out value="${discm.id}"/></td>--%>
            <%--<td><c:out value="${discm.name}"/></td>--%>
            <%--<td><c:out value="${discm.singer}"/></td>--%>
            <%--<td><c:out value="${discm.company}"/></td>--%>
            <%--<td><c:out value="${discm.issuedate}"/></td>--%>
            <%--<td><c:out value="${discm.num}"/></td>--%>
            <%--<td><a href="buyDisc.action?discid=${discm.id}">购买</a></td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>
<%--</table>--%>
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


<pg:pager url="MlistDiscm.jsp" maxPageItems = "10" maxIndexPages="3" export="offset,currentPageNumber=pageNumber" isOffset="false"  index="half-full"  >
    <table class="table table-striped table-bordered table-hover  table-condensed" >
        <tr bgcolor="#EFF3F7">
            <TD align="center">序号</TD>
            <TD align="center">专辑名称</TD>
            <TD align="center">歌手</TD>
            <TD align="center">发行公司</TD>
            <TD align="center">发行时间</TD>
            <TD align="center">在架数量</TD>
            <TD align="center">更新操作</TD>
        </tr>
        <c:if test="${!empty Discs}">
            <c:forEach items="${Discs}" var="discm">
                <pg:item>
                    <tr bgcolor="#EFF3F7">
                        <td align="center">${discm.id}</td>
                        <td align="center">${discm.name }</td>
                        <td align="center">${discm.singer }</td>
                        <td align="center">${discm.company }</td>
                        <td align="center">${discm.issuedate}</td>
                        <td align="center">${discm.num}</td>
                        <td align="center"><a href="/UpdateDisc?discid=${discm.id}">修改</a></td>
                    </tr>
                </pg:item>
            </c:forEach>
        </c:if>

        <c:if test="${empty Discs}">
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
<!--Footer-->
<footer id="footer" class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-wrapper">

                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="footer-brand">
                        <img src="assets/images/logo.png" alt="logo" />
                    </div>
                </div>

                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="copyright">
                        <p>张秋池<i class="fa fa-heart"></i>  <a target="_blank" href="#"> 荣誉出品 </a>2017. 带给你极致音乐享受 <a href="https://www.weibo.com/zhangqiuchi/" target="_blank" title="模板之家">张秋池</a> </p>

                    </div>
                </div>

            </div>
        </div>
    </div>
</footer>


<div class="scrollup">
    <a href="#"><i class="fa fa-chevron-up"></i></a>
</div>


<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
<script src="assets/js/vendor/bootstrap.min.js"></script>

<script src="assets/js/plugins.js"></script>
<script src="assets/js/modernizr.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
