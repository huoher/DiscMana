package service;

import dao.RegisterDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterServlet",urlPatterns = "/register.action")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RegisterDao registerDao = new RegisterDao();
        String customername = request.getParameter("customername");
        String passwd = request.getParameter("passwd");
        System.out.print(customername+passwd);
        int re = registerDao.Register(customername,passwd);
        if (re == 0)
            request.getRequestDispatcher("WEB-INF/false.jsp").forward(request,response);
        else
            request.getRequestDispatcher("/login.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
