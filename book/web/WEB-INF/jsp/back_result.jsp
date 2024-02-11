<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 王丽莹ly0
  Date: 2023/6/23
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>借阅结果</title>
</head>
<body>
<h1>归还成功！！归还时间：</h1>
<%
    // 创建日期格式化对象，指定中文日期格式
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
    // 获取当前时间
    Date currentDate = new Date();
    // 使用格式化对象将日期转换为中文格式
    String chineseDate = dateFormat.format(currentDate);
%>
<p><%= chineseDate %></p>
</body>
</html>
