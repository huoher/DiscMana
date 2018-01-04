package service;

import dao.SingerDao;
import entity.Singer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListSingerServlet",urlPatterns = "/ListSinger.action")
public class ListSingerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SingerDao singerDao = new SingerDao();
        List<Singer> singerList = singerDao.getAllSinger();
        for (Singer singer:singerList) {
            System.out.println(singer);
        }
        request.getSession().setAttribute("singers",singerList);
        request.getRequestDispatcher("/Singer.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
