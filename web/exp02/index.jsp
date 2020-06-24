<%--
  Created by IntelliJ IDEA.
  User: C Y
  Date: 2020/6/22
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Document</title>
</head>
<body>
<h3>购物车演练</h3>
<%
    String name=(String)session.getAttribute("username");
    if(name==null){
        out.println("您还没有登录，请<a href='login.jsp'> 登录</a>");
    }else{%>
<p>欢迎<%=name%></p>
<p><a href="mall.jsp">查看商城</a> </p>
<p><a href="car.jsp">我的购物车</a> </p>
<p><a href="logout.jsp">退出</a> </p>
<%}%>
</body>
</html>
