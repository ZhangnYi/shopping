<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="css/bootstrap4.css"/>
<link rel="stylesheet" href="css/dashboard.css"/>

<!--ͷ��������-->
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0" th:fragment="topbar">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="index"><span style="margin-left: 20px">��Ϸ�̳Ǻ�̨����</span></a>
<%--    <ul class="navbar-nav px-4">--%>

<%--        <li class="nav-item text-nowrap">--%>
<%--            <span style="color: white">��ӭ����${sessionScope.get("admin").username}</span>--%>
<%--            <a class="nav-link" href="logout">�˳���¼</a>--%>
<%--        </li>--%>
<%--    </ul>--%>

    <div class="dropdown">
        <span style="color: rgba(255,255,255,0.8);margin-right: 10px">��ӭ����${sessionScope.get("admin").username}</span>
        <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
            ��������
        </button>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="${pageContext.request.contextPath}/admin/adminRe?id=${admin.id}">�޸�����</a>
            <a class="dropdown-item" href="logout">�˳���¼</a>
        </div>
    </div>
</nav>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
