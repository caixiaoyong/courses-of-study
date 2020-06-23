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
<h3>html 静态内容</h3>
ase
cz
d
<p>This is some HTML content,today is 2020/5/18:10:23</p>
<h3>JSP动态内容，使用JSP表达式</h3>
<p>
    This is some JSP Content, today is <%=new java.util.Date().toLocaleString()%>

</p>
这是一段汉字
<h3>JSP动态内容，使用JSP程序段</h3>
<%
    out.println("hello world");
    for(int i=0;i<10;i++)
        out.println(i+"<br>");
%>
<%! int online_user=101;%>
<p>你好，你是网站的第<%=++online_user%>位顾客！</p>
</body>
</html>
