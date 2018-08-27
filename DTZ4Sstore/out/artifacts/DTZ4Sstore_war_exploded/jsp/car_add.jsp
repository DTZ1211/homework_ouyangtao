
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加汽车</title>
    <style>
        *{
            margin:4px;
        }
    </style>
</head>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<body>
<form action="/add" method="post">
    <h1>添加汽车</h1>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text">编号：</span>
        </div>
        <input type="text" class="form-control" name="id">
    </div>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text">车型：</span>
        </div>
        <input type="text" class="form-control" name="type">
    </div>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text">品牌：</span>
        </div>
        <input type="text" class="form-control" name="brand">
    </div>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text">颜色：</span>
        </div>
        <input type="text" class="form-control" name="color">
    </div>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text">价格：</span>
        </div>
        <input type="text" class="form-control" name="price">
    </div>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text">厂商：</span>
        </div>
        <input type="text" class="form-control" name="manufactor">
    </div>
    <button type="submit" class="btn btn-primary btn-lg btn-block">提交</button>
</form>
<script>
    function btn(){
        this.window.close();
    }
</script>
</body>
</html>
