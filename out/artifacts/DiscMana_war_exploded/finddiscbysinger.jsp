<%--
  Created by IntelliJ IDEA.
  User: huoher
  Date: 17-12-24
  Time: 下午4:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>按歌手查看唱片</title>
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
        <%--<th>操作</th>--%>
    <%--</tr>--%>

    <%--<c:forEach items="${discbysinger}" var="disc" >--%>
        <%--<tr>--%>
            <%--<td><c:out value="${disc.id}"/></td>--%>
            <%--<td><c:out value="${disc.name}"/></td>--%>
            <%--<td><c:out value="${disc.singer}"/></td>--%>
            <%--<td><c:out value="${disc.company}"/></td>--%>
            <%--<td><c:out value="${disc.issuedate}"></c:out></td>--%>
            <%--<td><a href="buyDisc.action?discid=${disc.id}">购买</a></td>--%>
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
                <li class="active"><a href="index.html">首页</a></li>
                <li><a href="/listDisc.action">所有唱片</a></li>
                <li><a href="/ListSinger.action">歌手</a></li>
                <li><a href="/ListCarts.action">我的订单</a></li>
                <li><a href="form-2/index.html">管理人员入口</a></li>
                <li class="login"><a href="form-1/index.html">登录</a></li>
                <li class="login"><a href="form-3/index.html">注册</a></li>
            </ul>

        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>


<pg:pager url="Singer.jsp" maxPageItems = "8" maxIndexPages="3" export="offset,currentPageNumber=pageNumber" isOffset="false"  index="half-full"  >
    <table class="table table-striped table-bordered table-hover  table-condensed">
        <tr bgcolor="#EFF3F7">
            <TD align="center">序号</TD>
            <TD align="center">专辑名称</TD>
            <TD align="center">歌手</TD>
            <TD align="center">发行公司</TD>
            <TD align="center">发行时间</TD>
            <TD align="center">在架数量</TD>
            <TD align="center">购买</TD>
        </tr>
        <c:if test="${!empty discbysinger}">
            <c:forEach items="${discbysinger}" var="discm">
                <pg:item>
                    <tr bgcolor="#EFF3F7">
                        <td align="center">${discm.id}</td>
                        <td align="center">${discm.name }</td>
                        <td align="center">${discm.singer }</td>
                        <td align="center">${discm.company }</td>
                        <td align="center">${discm.issuedate}</td>
                        <td align="center">${discm.num}</td>
                        <td align="center"><a href="/buyDisc.action?discid=${discm.id}">购买</a></td>
                    </tr>
                </pg:item>
            </c:forEach>
        </c:if>
        <c:if test="${empty discbysinger}">
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


<section id="footer-menu" class="sections footer-menu">
    <div class="container">
        <div class="row">
            <div class="footer-menu-wrapper">

                <div class="col-md-8 col-sm-12 col-xs-12">
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="menu-item">
                            <h5>友站链接</h5>
                            <ul>
                                <li><a href="http://music.163.com/">网易云音乐</a></li>
                                <li><a href="https://y.qq.com/">QQ音乐</a></li>
                                <li><a href="http://www.xiami.com/">虾米音乐</a></li>
                                <li><a href="http://www.kugou.com//">酷狗音乐</a></li>
                                <li><a href="http://www.kuwo.cn/">酷我音乐</a></li>
                                <li><a href="http://www.migu.cn/">咪咕音乐</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="menu-item">
                            <h5>版权合作</h5>
                            <ul>
                                <li>环球音乐</li>
                                <li>华纳唱片</li>
                                <li>滚石国际</li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="menu-item">
                            <h5>曲库丰富</h5>
                            <ul>
                                <li>流行</li>
                                <li>摇滚</li>
                                <li>R&</li>
                                <li>民谣</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="menu-item">
                        <h5>制作者</h5>
                        <p>张秋池 倾力打造 只为爱音乐的你.</p>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Enter your email address">
                            <input type="submit" class="form-control" value="Use It Free">
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>


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
