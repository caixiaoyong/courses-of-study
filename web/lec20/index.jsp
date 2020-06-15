<%--
  Created by IntelliJ IDEA.
  User: C Y
  Date: 2020/6/6
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title><!--jsp基本对象request/response/out-->
</head>
<body>
<form action="index.jsp" method="post">
    用户名<input type="text"name="username"><br>
    密码<input type="password"><br>
    <input type="submit"><br>


</form>

登录状态
当前用户<%
    String username="guest";
    if(request.getParameter("username")!=null){
        username=request.getParameter("username");
    }
    out.println(new String(username.getBytes("ISO-8859-1"),"UTF-8"));
%>
<%--
    // response.sendRedirect("https://www.baidu.com");
    if(username.contains("xxxx"))
    {
        response.sendError(404,"非法访问");
    }
--%>
</body>
</html>
