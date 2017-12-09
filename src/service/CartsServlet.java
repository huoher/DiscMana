package service;

import entity.Disc;
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

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
        request.getSession().setAttribute("ListCarts",discList);
        request.getRequestDispatcher("WEB-INF/listCarts.jsp").forward(request,response);
    }
}
