<%--
  Created by IntelliJ IDEA.
  User: C Y
  Date: 2020/5/26
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!--要在页面正常显示中文，我们需要在 JSP 文件头部添加-->
<html>
<head>
    <title>jsp表单设计和处理</title>
</head>
<body>
<form action="index.jsp" method="post">
    用户名<input type="text" name="username"><br>
    密码<input type="password"><br>
    <input type="submit"><br>
</form>
登陆状态
当前用户
<%= new String((request.getParameter("username")).getBytes("ISO-8859-1"),"UTF-8")//代码中我们使用 来转换编码，防止中文乱码的发生。
%>
</body>
</html>
