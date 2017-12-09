package service;

import dao.LoginDao;
import entity.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet",urlPatterns = "/login.action")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("customername");
        String passwd = request.getParameter("passwd");
        LoginDao loginDao = new LoginDao();
        Customer customer = loginDao.LoginShell(username,passwd);
        if (customer != null){
            request.getSession().setAttribute("customerid",customer.getId());
            request.getRequestDispatcher("WEB-INF/sussess.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("WEB-INF/false.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
