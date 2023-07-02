<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>重置密码</title>
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
                <div class="alert alert-success" role="alert">${msg}</div>
            </c:if>

            <form class="form-horizontal" action="userReset" method="post">
                <input type="hidden" name="id" value="${user.id}">
                <div class="form-group">
                    <label for="input_name" class="col-sm-1 control-label">用户名</label>
                    <div class="col-sm-5">${user.username}</div>
                </div>
                <div class="form-group">
                    <label for="input_name" class="col-sm-1 control-label">密码</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="input_name" name="password" value="" required="required">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-10">
                        <button type="submit" class="btn btn-success">提交修改</button>
                    </div>
                </div>
            </form>
        </main>
    </div>

</div>
</body>
</html>