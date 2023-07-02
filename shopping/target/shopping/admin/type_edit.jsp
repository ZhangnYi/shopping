<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>类目编辑</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="css/bootstrap4.css"/>
</head>
<body>

<jsp:include page="common/header.jsp"></jsp:include>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="common/aside.jsp"></jsp:include>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

            <form class="form-horizontal" action="typeUpdate" method="post" enctype="multipart/form-data">
                <input type="hidden" name="id" value="${type.id}">
                <div class="form-group">
                    <label for="name" class="col-sm-1 control-label">名称</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="name" name="name" value="${type.name}"
                               required="required">
                    </div>
                </div>
                <div class="form-group">
                    <label for="num" class="col-sm-1 control-label">序号</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="num" name="num" value="${type.num}">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-10">
                        <button type="submit" class="btn btn-success">提交修改</button>
                    </div>
                </div>
            </form>

            <span style="color:red;">${msg}</span>
        </main>
    </div>

</div>
</body>
</html>