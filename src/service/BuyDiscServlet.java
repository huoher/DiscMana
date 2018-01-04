package service;

import dao.BuyDiscDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "BuyDiscServlet",urlPatterns = "/buyDisc.action")
public class BuyDiscServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = (String) request.getSession().getAttribute("userName");
        if (null == userName) {
            response.sendRedirect("form-1/index.html");
            return;
        }

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String datatime = df.format(new Date());
        String  strdiscid = request.getParameter("discid");
        System.out.println("discid  "+strdiscid);
        int discid = Integer.parseInt(strdiscid);
        int customerid = (int) request.getSession().getAttribute("customerid");
        System.out.println("customerid : "+ customerid);
        BuyDiscDao buyDiscDao = new BuyDiscDao();
        int re = buyDiscDao.BuyDiscOp(customerid,discid,datatime);
        if (re!=0){
            request.getRequestDispatcher("/ListCarts.action").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
