<%--
  Created by IntelliJ IDEA.
  User: 王丽莹ly0
  Date: 2023/6/19
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<html>
<head>
    <title>新增用户</title>
    <!-- 引入 Bootstrap -->
    <%--    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增用户</small>
                </h1>
            </div>
        </div>

    </div>

    <form action="${pageContext.request.contextPath}/reader/addReader" method="post">

        <div class="form-group">
            <label>用户名：</label>
            <input type="text" name="username" class="form-control" required>
        </div>
        <div class="form-group">
            <label>密码：</label>
            <input type="text" name="password" class="form-control" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>

    </form>

</div>


</body>
</html>
