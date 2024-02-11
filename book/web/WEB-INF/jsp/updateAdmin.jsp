<%--
  Created by IntelliJ IDEA.
  User: 王丽莹ly0
  Date: 2023/6/19
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增用户</title>
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改管理员</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/admin/updateAdmin" method="post">

        <input type="hidden" name="id" class="form-control"  value="${admin.id}">

        <div class="form-group">
            <label>管理员用户名：</label>
            <input type="text" name="username" class="form-control" required value="${admin.username}">
        </div>
        <div class="form-group">
            <label>密码：</label>
            <input type="text" name="password" class="form-control" required value="${admin.password}">
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>
    </form>

</div>


</body>
</html>
