<%@ page language="java" contentType="text/html; charset=GBK" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>��Ŀ�б�</title>
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
            <div class="text-right"><a class="btn btn-warning" href="typeAdd">�����Ŀ</a></div>

            <br>

            <table class="table table-bordered table-hover">

                <tr>
                    <th width="5%">ID</th>
                    <th width="10%">����</th>
                    <th width="5%">���</th>
                    <th width="10%">����</th>
                </tr>

                <c:forEach var="type" items="${typeList}">
                    <tr>
                        <td><p>${type.id}</p></td>
                        <td><p>${type.name}</p></td>
                        <td><p>${type.num}</p></td>
                        <td>
                            <a class="btn btn-primary" href="typeEdit?id=${type.id}">�޸�</a>
                            <a class="btn btn-danger" href="typeDelete?id=${type.id}">ɾ��</a>
                        </td>
                    </tr>
                </c:forEach>

            </table>
        </main>
    </div>

</div>
</body>
</html>