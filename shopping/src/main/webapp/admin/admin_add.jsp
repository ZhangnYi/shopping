<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>管理员添加</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="css/bootstrap4.css"/>
</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="common/aside.jsp"></jsp:include>
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
            <c:if test="${msg != null}">
                <div class="alert alert-danger" role="alert">${msg}</div>
            </c:if>
            <form class="form-horizontal" action="adminSave" method="post">
                <div class="form-group">
                    <label for="input_name" class="col-sm-1 control-label">用户名</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="input_name" name="username" required="required">
                    </div>
                </div>
                <div class="form-group">
                    <label for="input_name" class="col-sm-1 control-label">密码</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="input_name" name="password" required="required">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-10">
                        <button type="submit" class="btn btn-success">提交保存</button>
                    </div>
                </div>
            </form>
        </main>
    </div>
</div>
</body>
</html>