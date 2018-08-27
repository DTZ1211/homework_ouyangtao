<%@ page import="entity.Car" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品修改</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<% Car car = (Car) request.getAttribute("car"); %>

<form action="/update" method="post">
    <h1>商品修改</h1>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text">编号：</span>
        </div>
        <input type="text" class="form-control" name="id" value="<%=car.getId()%>">
    </div>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text">车型：</span>
        </div>
        <input type="text" class="form-control" name="type" value="<%=car.getType()%>">
    </div>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text">品牌：</span>
        </div>
        <input type="text" class="form-control" name="brand" value="<%=car.getBrand()%>">
    </div>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text">颜色：</span>
        </div>
        <input type="text" class="form-control" name="color" value="<%=car.getColor()%>">
    </div>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text">价格：</span>
        </div>
        <input type="text" class="form-control" name="price" value="<%=car.getPrice()%>">
    </div>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text">厂商：</span>
        </div>
        <input type="text" class="form-control" name="manufactor" value="<%=car.getManufactor()%>">
    </div>
    <button type="submit" class="btn btn-primary btn-lg btn-block">提交</button>

</body>
</html>
