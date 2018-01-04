package service;

import entity.Disc;
import entity.Discplus;
import entity.Order;
import org.apache.ibatis.session.SqlSession;
import sqlfactory.SqlFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CartsServlet",urlPatterns = "/ListCarts.action")
public class CartsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = (String) request.getSession().getAttribute("userName");
        if (null == userName) {
            response.sendRedirect("form-1/index.html");
            return;
        }
        int customerid = (int) request.getSession().getAttribute("customerid");
//        int customerid = Integer.parseInt(strcustomerid);
        SqlFactory sqlFactory = new SqlFactory();
        SqlSession sqlSession = sqlFactory.getSession();
        List<Order> listorder =  sqlSession.selectList("findOrderBycid",customerid);
        List<Disc> discList = new ArrayList<Disc>();
        for (Order order:listorder) {
            int id = order.getDiscid();
            Disc disc = sqlSession.selectOne("findDiscById",id);
            discList.add(disc);
        }

        List<Discplus> discpluses = new ArrayList<>();
        for (Disc disc :discList) {
            Discplus discplus = new Discplus();
            discplus.setId(disc.getId());
            discplus.setCompany(disc.getCompany());
            discplus.setIssuedate(disc.getIssuedate());
            discplus.setName(disc.getName());
            discplus.setSinger(disc.getSinger());
            discpluses.add(discplus);
        }

       for (int i=0;i<listorder.size();i++){
            discpluses.get(i).setDatetime(listorder.get(i).getBuydate());
       }

        request.getSession().setAttribute("ListCarts",discpluses);
        request.getRequestDispatcher("/listCarts.jsp").forward(request,response);
    }
}
