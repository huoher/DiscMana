package service;

import dao.LoginDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ManaLoginServlet",urlPatterns = "/ManaLogin.action")
public class ManaLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String passwd = request.getParameter("passwd");
        LoginDao loginDao = new LoginDao();
        boolean result = loginDao.ManaLogin(username,passwd);
        if (result == true){
            request.getRequestDispatcher("WEB-INF/ManaMain.jsp").forward(request,response);
        }else {
            request.getRequestDispatcher("WEB-INF/false.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
