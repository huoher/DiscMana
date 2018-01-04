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

@WebServlet(name = "FindDiscBySingerServlet",urlPatterns = "/findDiscBySinger.action")
public class FindDiscBySingerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String strid = request.getParameter("singerid");
        int id = Integer.parseInt(strid);
        DiscDao discDao = new DiscDao();
        List<Disc> discList = discDao.findBySinger(id);
        request.getSession().setAttribute("discbysinger",discList);
        for (Disc disc:discList) {
            System.out.println(disc);
        }
        request.getRequestDispatcher("finddiscbysinger.jsp").forward(request,response);
    }
}
