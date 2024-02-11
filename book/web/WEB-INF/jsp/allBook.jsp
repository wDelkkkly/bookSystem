<%--
  Created by IntelliJ IDEA.
  User: 王丽莹ly0
  Date: 2023/6/15
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>用户列表</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}../static/layui/css/layui.css"/>
    <script src="${pageContext.request.contextPath}../static/layui/layui.js"></script>
</head>
<body>
<table class="layui-table">
    <tr>
        <th>编号</th>
        <th>图书名</th>
        <th>数量</th>
        <th>详情</th>
        <th>编辑</th>
    </tr>
    <tr>
            <c:forEach var="book" items="${list}">
    <tr>
        <td>${book.bookID}</td>
        <td>${book.bookName}</td>
        <td>${book.bookCounts}</td>
        <td>${book.detail}</td>

        <td>
            <c:if test="${showButton}">
                <a class="btn btn-danger" href="${pageContext.request.contextPath}/book/toUpdateBook/${book.bookID}">修改</a>
            </c:if>
            <c:if test="${showButton}">
                <a class="btn btn-success" href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}">删除</a>
            </c:if>
        </td>
    </tr>
    </c:forEach>
    </tr>
</table>
</body>
</html>