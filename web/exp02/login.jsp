<%@ page import="java.util.TreeMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎登陆</title>
</head>
<body>
 <form action="login.jsp" method="post">
     <p>用户名:<input type="text" name="username" placeholder="Enter you name"></p>
     <p>密码:<input type="password" name="password"></p>
     <p><input type="submit" value="登录"></p>
 </form>


<%
 if(request.getParameter("username")!=null){
     session.setAttribute("username",request.getParameter("username"));
     session.setAttribute("car",new TreeMap<String,Integer>());
     response.sendRedirect("index.jsp");
 }
%>
</body>
</html>
