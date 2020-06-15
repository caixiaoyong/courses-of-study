<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: C Y
  Date: 2020/5/30
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logout</title>
</head>
<body>
<%
    List<String> userList= (List<String>) application.getAttribute("onlineUsers");//左端list右端object，object是任意类的副类，副类对象转化成子类对象要进行强制的cast转换，所以把application对应的表达式转化成list
    String name= (String) session.getAttribute("name");//cast强转一下
    userList.remove(name);
//    for(String user:userList){
//        if(user.equals(name)){//当前在线用户名和存储数据一样时可以注销
//            userList.remove(user);
//            break;
//        }
//    }
    session.removeAttribute("name");//从session表中移除一行
    //session.invalidate();销毁整个session表
    response.sendRedirect("index.jsp");
%>
</body>
</html>
