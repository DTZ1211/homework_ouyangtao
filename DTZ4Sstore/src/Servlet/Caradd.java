package Servlet;

import dao.CarInMemorydao;
import dao.Cardao;
import entity.Car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.smartcardio.Card;
import java.io.IOException;

@WebServlet(value = "/add")
public class Caradd extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        int id = Integer.parseInt(req.getParameter("id"));
        String type = req.getParameter("type");
        String brand = req.getParameter("brand");
        String color = req.getParameter("color");
        double price = Double.parseDouble(req.getParameter("price"));
        String manufactor = req.getParameter("manufactor");


        Car car = new Car(id,type,brand,color,price,manufactor);
        Cardao cardao = new CarInMemorydao();
        cardao.add(car);
        req.getRequestDispatcher("/list").forward(req,resp);
        //resp.sendRedirect("jsp/car_list.jsp");
    }
}
