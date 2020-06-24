<%@ page import="java.util.Map" %>
<%@ page import="java.util.TreeMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String name=request.getParameter("name");
    Map<String,Integer>car=new TreeMap<>();
    if(session.getAttribute("car")!=null){
        car=(Map<String,Integer>)(session.getAttribute("car"));
    }
    if(car.get(name)!=null){//if(car.containkey(name))
        int old=car.get(name);
        car.put(name,old+1);
    }else{
        car.put(name,1);
    }
    response.sendRedirect("mall.jsp");
%>
