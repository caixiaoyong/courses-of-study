<%--
  Created by IntelliJ IDEA.
  User: C Y
  Date: 2020/5/24
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%!
    int result = 1;
%>
<%
    int a = 0;
    int b = 0;
    try {
        a = Integer.parseInt(request.getParameter("a"));
        b = Integer.parseInt(request.getParameter("b"));
    } catch (Exception e) {

    }
    result = a + b;
%>
<body>
<!
<form action="ab2.jsp" method="get">
    <input type="text" name="a" id="a">+
    <input type="text" name="b" id="b">=
    <input type="text" value=<%=result%> readonly> <input type="submit">
</form>

</body>
</html>
