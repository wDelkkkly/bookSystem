<%--
  Created by IntelliJ IDEA.
  User: 王丽莹ly0
  Date: 2023/6/19
  Time: 14:17
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
                        <small>用户列表 —— 显示所有用户</small>
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
                    <c:forEach var="reader" items="${list}">
                        <tr>
                            <td>${reader.id}</td>
                            <td>${reader.username}</td>
                            <td>${reader.password}</td>
                            <td>
                                <a class="btn btn-danger" href="${pageContext.request.contextPath}/reader/toUpdateReader/${reader.id}">修改</a>
                                &nbsp;
                                <a class="btn btn-success" href="${pageContext.request.contextPath}/reader/deleteReader/${reader.id}">删除</a>
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

