<%--
  Created by IntelliJ IDEA.
  User: 王丽莹ly0
  Date: 2023/6/22
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<html>
<head>
    <title>新增书籍</title>
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
                    <small>查询书籍</small>
                </h1>
            </div>
        </div>

    </div>

    <form action="${pageContext.request.contextPath}/book/FindBook" method="post">

        <div class="form-group">
            <label>书籍名称：</label>
            <input type="text" name="findname" class="form-control" required>
        </div>
<%--        <div class="form-group">--%>
<%--            <label>书籍数量：</label>--%>
<%--            <input type="text" name="bookCounts" class="form-control" required>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label>书籍描述：</label>--%>
<%--            <input type="text" name="detail" class="form-control" required>--%>
<%--        </div>--%>
        <div class="form-group">
            <input type="submit" class="form-control" value="查询">
        </div>

    </form>

</div>


</body>
</html>