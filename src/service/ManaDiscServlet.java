package service;

import dao.DiscDao;
import entity.Disc;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManaDiscServlet",urlPatterns = "/ManaDisc.action")
public class ManaDiscServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DiscDao discDao = new DiscDao();
        List<Disc> discList = discDao.getAllDisc();
        request.getSession().setAttribute("Discs",discList);
        request.getRequestDispatcher("WEB-INF/ManaDisc.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
