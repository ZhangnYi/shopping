<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>客户列表</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="css/bootstrap4.css"/>
    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>

<jsp:include page="common/header.jsp"></jsp:include>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="common/aside.jsp"></jsp:include>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
            <form method="get" action="${pageContext.request.contextPath}/admin/userList">
                <span class="input_span" style="margin-left: 12px;width: 40%">用户名：<input name="username" type="text" class="form-control" style="display: inline;width: 30%"></span>
                <span style="margin-left: 12px"><input type="submit" value="搜索" class="btn btn-success btn-sm" ></span>
                <div class="text-right"><a class="btn btn-warning" href="userAdd">添加客户</a></div>
            </form>


            <br>

            <table class="table table-bordered table-hover">

                <tr>
                    <th width="5%">ID</th>
                    <th width="5%">用户</th>
                    <th width="10%">姓名</th>
                    <th width="10%">电话</th>
                    <th width="10%">地址</th>
                    <th width="10%">积分</th>
                    <th width="15%">操作</th>
                </tr>

                <c:forEach var="user" items="${userList}">
                    <tr>
                        <td><p>${user.id}</p></td>
                        <td><p>${user.username}</p></td>
                        <td><p>${user.name}</p></td>
                        <td><p>${user.phone}</p></td>
                        <td><p>${user.address}</p></td>
                        <td><p>${user.point}</p></td>
                        <td>
                            <a class="btn btn-info" href="userRe?id=${user.id}">重置密码</a>
                            <a class="btn btn-primary" href="userEdit?id=${user.id}">修改</a>
                            <a class="btn btn-danger" href="userDelete?id=${user.id}">删除</a>
                        </td>
                    </tr>
                </c:forEach>

            </table>

            <br>${pageTool}<br>
        </main>
    </div>

</div>
</body>
</html>