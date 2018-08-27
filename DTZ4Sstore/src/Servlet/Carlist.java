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
import java.util.List;

@WebServlet(value = "/list")
public class Carlist extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cardao cardao = new CarInMemorydao();
        List<Car> carList = cardao.listAll();
        req.setAttribute("cars",carList);
        req.getRequestDispatcher("jsp/car_list.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Cardao cardao = new CarInMemorydao();
        List<Car> carList = cardao.listAll();
        req.setAttribute("cars",carList);
        req.getRequestDispatcher("jsp/car_list.jsp").forward(req,resp);
    }
}
