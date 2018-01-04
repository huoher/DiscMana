package service;

import dao.DiscDao;
import entity.Disc;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateDiscServlet",urlPatterns = "/UpdateDisc")
public class UpdateDiscServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String strdiscid = request.getParameter("discid");
        int discid = Integer.parseInt(strdiscid);
        request.getSession().setAttribute("updatediscid",discid);
        System.out.println("修改的:" + discid);
        DiscDao discDao = new DiscDao();
        Disc disc = discDao.getDiscById(discid);
        System.out.println("邀修改的东西" + disc);
        request.getSession().setAttribute("onedisc",disc);
        request.getRequestDispatcher("updateDisc.jsp").forward(request,response);
    }
}
