<%@ page contentType="text/html;charset=UTF-8" language="java" %>
a=<%=request.getParameter("a")%>
b=<%=request.getParameter("b")%>
c=<%
    int a=0,b=0;
    try {
        a = Integer.parseInt(request.getParameter("a"));//使用 request.getParameter() 方法来获取表单参数的值
        b = Integer.parseInt(request.getParameter("b"));
    }catch(Exception e){

    }
  out.println(a+b);
%>
<a href="ab.html">返回接着算</a>