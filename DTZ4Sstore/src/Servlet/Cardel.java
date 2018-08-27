package Servlet;

import dao.CarInMemorydao;
import dao.Cardao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/del")
public class Cardel extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String msg = null;

        Cardao cardao = new CarInMemorydao();
        if(cardao.delete(id)){
            msg = "delete success.";
        }else{
            msg = "delete failure.";
        }

        req.getSession().setAttribute("msg",msg);
        resp.sendRedirect("/index?msg="+msg);
    }
}
