package service;

import dao.DiscDao;
import entity.Disc;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DoUpdateServlet",urlPatterns = "/doUpdateDisc")
public class DoUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = (String) request.getSession().getAttribute("ManaName");
        if (null == userName) {
            response.sendRedirect("form-2/index.html");
            return;
        }

        int id = (int) request.getSession().getAttribute("updatediscid");
        System.out.println("已确定的修改" + id);
        System.out.println("已确定的修改" + id);
        String name = request.getParameter("name");
        String singer = request.getParameter("singer");
        String company = request.getParameter("company");
        String issuedate = request.getParameter("issuedate");
        String strnum = request.getParameter("num");
        int num = Integer.parseInt(strnum);
        Disc disc = new Disc();
        disc.setId(id);
        disc.setName(name);
        disc.setSinger(singer);
        disc.setCompany(company);
        disc.setIssuedate(issuedate);
        disc.setNum(num);

        DiscDao discDao = new DiscDao();
        int re = discDao.doUpdateDisc(disc);
        if (re != 0)
            request.getRequestDispatcher("/ManaDisc.action").forward(request,response);
//            response.sendRedirect("WEB-INF/ManaDisc.jsp");
        else{

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
