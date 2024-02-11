<%--
  Created by IntelliJ IDEA.
  User: 王丽莹ly0
  Date: 2023/6/15
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: EDY
  Date: 2022/9/30
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <title></title>
    <!-- 引入 Bootstrap -->
    <%--    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>管理员列表 —— 显示所有管理员</small>
                    </h1>
                </div>
            </div>
            <%--            <div>--%>
            <%--                <div>--%>
            <%--                    &lt;%&ndash;tbAddBook&ndash;%&gt;--%>
            <%--                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>--%>
            <%--                </div>--%>
            <%--            </div>--%>

        </div>

    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>用户账户</th>
                    <th>密码</th>
                </tr>
                </thead>

                <taody>
                    <c:forEach var="admin" items="${list}">
                        <tr>
                            <td>${admin.id}</td>
                            <td>${admin.username}</td>
                            <td>${admin.password}</td>
                            <td>
                                <a class="btn btn-danger" href="${pageContext.request.contextPath}/admin/toUpdateAdmin/${admin.id}">修改</a>
                                &nbsp;
                                <a class="btn btn-success" href="${pageContext.request.contextPath}/admin/deleteAdmin/${admin.id}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>

                </taody>
            </table>
        </div>
    </div>

</div>

</body>
</html>


