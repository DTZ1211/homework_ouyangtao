<%@ page import="entity.Car" %>
<%@ page import="dao.Cardao" %>
<%@ page import="dao.CarInMemorydao" %><%--
  Created by IntelliJ IDEA.
  User: 大桃子哥哥ii
  Date: 2018/8/26
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品详情</title>
    <style>
        *{
            margin:4px;
        }
    </style>
</head>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<body>
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        Cardao cardao = new CarInMemorydao();
        Car car = cardao.getCarById(id);
    %>
    <div class="text-center">
        <img src="/image/<%=car.getId()%>.jpg" class="rounded" alt="暂无图片...">
    </div>
    <table class="table table-sm">
        <thead>
        <tr>
            <th scope="col" colspan="2">信息详情</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">编号：</th>
            <td colspan="2"><%=car.getId()%></td>
        </tr>
        <tr>
            <th scope="row">车型：</th>
            <td colspan="2"><%=car.getType()%></td>
        </tr>
        <tr>
            <th scope="row">品牌：</th>
            <td colspan="2"><%=car.getBrand()%></td>
        </tr>
        <tr>
            <th scope="row">颜色：</th>
            <td colspan="2"><%=car.getColor()%></td>
        </tr>
        <tr>
            <th scope="row">价格：</th>
            <td colspan="2"><%=car.getPrice()%></td>
        </tr>
        <tr>
            <th scope="row">厂商：</th>
            <td colspan="2"><%=car.getManufactor()%></td>
        </tr>
        </tbody>
    </table>
</body>




</html>
