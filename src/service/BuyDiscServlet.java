package service;

import dao.BuyDiscDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "BuyDiscServlet",urlPatterns = "/buyDisc.action")
public class BuyDiscServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String  strdiscid = request.getParameter("discid");
        System.out.println("discid  "+strdiscid);
        int discid = Integer.parseInt(strdiscid);
        int customerid = (int) request.getSession().getAttribute("customerid");
        System.out.println("customerid : "+ customerid);
        BuyDiscDao buyDiscDao = new BuyDiscDao();
        int re = buyDiscDao.BuyDiscOp(customerid,discid);
        if (re!=0){
            request.getRequestDispatcher("WEB-INF/sussess.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
