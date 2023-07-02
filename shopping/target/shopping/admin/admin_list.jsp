<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>管理员列表</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="css/bootstrap4.css"/>
</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="common/aside.jsp"></jsp:include>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

            <div class="text-right"><a class="btn btn-warning" href="adminAdd">添加管理员</a></div>

            <br>

            <table class="table table-bordered table-hover">

                <tr>
                    <th width="5%">ID</th>
                    <th width="10%">用户名</th>
                    <th width="10%">操作</th>
                </tr>

                <c:forEach var="admin" items="${adminList}">
                    <tr>
                        <td><p>${admin.id}</p></td>
                        <td><p>${admin.username}</p></td>
                        <td>
                            <c:if test="${admin.id==1}"><p>系统保护用户</p></c:if>
                            <c:if test="${admin.id>1}">
                                <a class="btn btn-info" href="adminRe?id=${admin.id}">重置密码</a>
                                <a class="btn btn-danger" href="adminDelete?id=${admin.id}">删除</a>
                            </c:if>
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