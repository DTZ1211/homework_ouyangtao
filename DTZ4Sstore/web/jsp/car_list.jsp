<%@ page import="java.util.List" %>
<%@ page import="entity.Car" %>
<%@ page import="dao.Cardao" %>
<%@ page import="dao.CarInMemorydao" %>
<%@ page import="util.WebUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>汽车信息</title>
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/starter-template.css" rel="stylesheet">
</head>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<body>

<%=
    WebUtil.getmsg(request)
%>
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <form action="/search" method="post" class="form-inline my-2 my-lg-0">
            <input name="" class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>

<form action="">
    <table class="table" style="margin-top: 54px;">
        <thead class="thead-dark">
        <tr>
            <th scope="col">编号</th>
            <th scope="col">车型</th>
            <th scope="col">品牌</th>
            <th scope="col">颜色</th>
            <th scope="col">价格/万元</th>
            <th scope="col">厂商</th>
            <th scope="col">其他</th>
        </tr>
        </thead>
        <%
            List<Car> carList = (List<Car>) request.getAttribute("cars");
            for(Car car:carList){
        %>
        <tbody>
        <tr>
            <th scope="row" class="table-secondary"><%=car.getId()%></th>
            <td class="table-primary"><%=car.getType()%></td>
            <td class="table-danger"><%=car.getBrand()%></td>
            <td class="table-success"><%=car.getColor()%></td>
            <td class="table-warning"><%=car.getPrice()%></td>
            <td class="table-secondary"><%=car.getManufactor()%></td>
            <td class="table-light">
                <a href="/del?id=<%=car.getId()%>">删除</a>
                <a href="jsp/car_msg.jsp?id=<%=car.getId()%>">详情</a>
                <a href="/update?id=<%=car.getId()%>">修改</a>
            </td>
        </tr>
        </tbody>
        <%
            }
        %>
    </table>
    <button type="button" class="btn btn-primary" onclick="add()">新增商品信息</button>
</form>


<script>

    function add() {
        window.open("jsp/car_add.jsp","新增商品","width=550,height=450,menubar=0,status=0");
    }

</script>

</body>
</html>
