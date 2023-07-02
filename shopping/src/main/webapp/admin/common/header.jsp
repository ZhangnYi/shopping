<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="css/bootstrap4.css"/>
<link rel="stylesheet" href="css/dashboard.css"/>

<!--头部导航栏-->
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0" th:fragment="topbar">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="index"><span style="margin-left: 20px">游戏商城后台管理</span></a>
<%--    <ul class="navbar-nav px-4">--%>

<%--        <li class="nav-item text-nowrap">--%>
<%--            <span style="color: white">欢迎您，${sessionScope.get("admin").username}</span>--%>
<%--            <a class="nav-link" href="logout">退出登录</a>--%>
<%--        </li>--%>
<%--    </ul>--%>

    <div class="dropdown">
        <span style="color: rgba(255,255,255,0.8);margin-right: 10px">欢迎您，${sessionScope.get("admin").username}</span>
        <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
            个人中心
        </button>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="${pageContext.request.contextPath}/admin/adminRe?id=${admin.id}">修改密码</a>
            <a class="dropdown-item" href="logout">退出登录</a>
        </div>
    </div>
</nav>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
