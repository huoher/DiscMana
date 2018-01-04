package service;

import dao.DiscDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListDiscServlet",urlPatterns = "/listDisc.action")
public class ListDiscServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DiscDao discDao = new DiscDao();
        List<entity.Disc> discList = discDao.getAllDisc();
        request.getSession().setAttribute("discms",discList);
        request.getRequestDispatcher("listDiscm.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        DiscDao discDao = new DiscDao();
//        List<entity.Disc> discList = discDao.getAllDisc();
//        request.getSession().setAttribute("discms",discList);
//        request.getRequestDispatcher("WEB-INF/listDiscm.jsp").forward(request,response);
        this.doPost(request, response);
    }
}
