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
    <style>
        .input_span{
            margin-right: 20px;
        }
    </style>
</head>
<body>

<jsp:include page="common/header.jsp"></jsp:include>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="common/aside.jsp"></jsp:include>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
            <form method="get" action="commentList">
                <span class="input_span">商品名称：<input name="goodname" type="text" class="form-control" style="display: inline;width: 20%"></span>
                <span class="input_span">用户名：<input name="username" type="text" class="form-control" style="display: inline;width:20%"></span>
                <span><input type="submit" value="搜索" class="btn btn-success btn-sm"></span>
            </form>
            <br>

            <table class="table table-bordered table-hover">

                <tr>
                    <th width="10%">商品名称</th>
                    <th width="5%">用户名</th>
                    <th width="15%">评论内容</th>
                    <th width="10%">评论时间</th>
                    <th width="5%">操作</th>
                </tr>

                <c:forEach var="evaluate" items="${evaluates}">
                    <tr>
                        <td><p>${evaluate.goodName}</p></td>
                        <td><p>${evaluate.user.name}</p></td>
                        <td><p>${evaluate.content}</p></td>
                        <td><p>${evaluate.getDateString()}</p></td>
                        <td>
                            <a class="btn btn-primary" href="commentEdit?gid=${evaluate.gid}&oid=${evaluate.oid}">修改</a>
                            <a class="btn btn-danger" href="deleteComment?gid=${evaluate.gid}&oid=${evaluate.oid}">删除</a>
                        </td>
                    </tr>
                </c:forEach>

            </table>

            <br>${pageTool}<br>
        </main>
    </div>

</div>
<script>
    var msg = null;
    msg = "${msg}"+"";
    if (msg != null && msg!=""){
        alert(msg);
    }
</script>
</body>
</html>