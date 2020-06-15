<%--
  Created by IntelliJ IDEA.
  User: C Y
  Date: 2020/5/29
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Vector" %>
<%
    if(application.getAttribute("onlineUsers")==null){//如果没有在线用户
        application.setAttribute("onlineUsers",new Vector<String>());//将放入一个空列表
    }//初始化
%>
<html>
<head>
    <title> Lec23 Application</title>
</head>
<body>
<div align="right">
    当前登陆用户<%=session.getAttribute("name")%>
    <%//application对象实现在线用户统计和读取web.xml
        if(session.getAttribute("name")!=null){
            out.println("<a href=logout.jsp>注销</a>");
        }else{
            out.println("<a href=login.html>请登录</a>");
        }
    %>
</div>

<div align="left">
    <h3>当前在线有<%= ((List<String>) application.getAttribute("onlineUsers")).size()%>用户:</h3>
    <%//用(list<String>)转一下userList
        List<String> userList= (List<String>) application.getAttribute("onlineUsers");//读取当前在线用户表，并且把对象转换成list
        for(String user:userList){
            out.println(user+"<br>");
        }
    %>
</div>

</body>
</html>
