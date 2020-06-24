<%@ page import="java.util.Map" %>
<%@ page import="java.util.TreeMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Document</title>
    <style type="text/css">
        img{
            width:50px;
            height:40px;
        }
    </style>
</head>
<body>
 <%
     Map<String,Double> fruits=new TreeMap<>();
     Map<String,Integer>car=new TreeMap<>();
 %>
<%
    fruits.put("Apple",2.5);
    fruits.put("Orange",3.5);
    fruits.put("Banana",4.5);
    fruits.put("Kiwi",7.5);
    fruits.put("Watermelon",5.5);
%>
<h1>淘宝生鲜超市</h1>
<%
    String name=(String)session.getAttribute("username");
    if(name==null){
        out.print("您还没有登录，请<a href='login.jsp '>登录");
    }else{
        car=(Map<String,Integer>)session.getAttribute("car");
%>
 <p>
     欢迎<%=name%>
 </p>
 <table border="1">
     <tr>
         <td>图片</td>
         <td>商品名称</td>
         <td>单价</td>
         <td>购买</td>
     </tr>
     <tr>
         <%
             for(String f:fruits.keySet()){
                 out.print(String.format("<tr><td><img src='image/%s'></td><td>%s</td><td>%.2f</td><td><a href='buy.jsp?name=%s'>BUY</a></td></tr>",f+".png",f,fruits.get(f),f));
             }
         %>
     </tr>
 </table>
<%}%>
<p>查看我的<a href="car.jsp">购物车</a> </p>
</body>
</html>
