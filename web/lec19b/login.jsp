<%--
  Created by IntelliJ IDEA.
  User: C Y
  Date: 2020/5/26
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎登陆</title>
</head>
<body>
username=<%=request.getParameter("username")%>
password=<%=request.getParameter("password")%>

<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    if("admin".equals(username)&&"123456".equals(password))
    {
        out.println("welcome "+username);
    }else{
        out.println("登录失败");
        response.sendRedirect("login.html");//网页的跳转
    }
%>
</body>
</html>
