<%--
  Created by IntelliJ IDEA.
  User: C Y
  Date: 2020/5/30
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dao.UserDao" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name=request.getParameter("username");
    String pass1=request.getParameter("password1");
    String pass2=request.getParameter("password2");
    if(pass1.equals(pass2)&& UserDao.register(name,pass1)){
        out.println("注册成功！！");
        out.println("<a href='login.html'>请登录</a>");
    }

%>
</body>
</html>
