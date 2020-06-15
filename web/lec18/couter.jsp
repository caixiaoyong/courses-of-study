<%--
  Created by IntelliJ IDEA.
  User: C Y
  Date: 2020/5/23
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>网站访问人数</title>
</head>
<body>
<h3>欢迎光临本站</h3>
<%! int online_user=100;%>
<p>你好，你是网站的第<%=++online_user%>位顾客！</p>
</body>
</html>
