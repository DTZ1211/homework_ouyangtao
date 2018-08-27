package Servlet;

import dao.CarInMemorydao;
import dao.Cardao;
import entity.Car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/update")
public class Carupdate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Cardao cardao = new CarInMemorydao();
        Car car = cardao.getCarById(id);

        req.setAttribute("car",car);
        req.getRequestDispatcher("jsp/car_update.jsp").forward(req,resp);
    }

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
        cardao.update(car);

        //resp.sendRedirect("jsp/car_list.jsp?msg="+msg);
        req.getRequestDispatcher("/list").forward(req,resp);
    }
}
